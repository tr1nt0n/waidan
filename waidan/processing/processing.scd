s.boot;
s.quit;

// server setup

ServerOptions.devices;
(
	Server.default.options.inDevice_("Scarlett 2i4 USB");
    Server.default.options.outDevice_("Scarlett 2i4 USB");
    s.options.numInputBusChannels = 6;
    s.options.numOutputBusChannels = 2;
);

// initialise envelope follower synth

(

SynthDef.new(
	\env,
	{
		arg hardwareInput, outputBus;
		var buffer, trackedSignal, signal, frequency, envelope, out;

		buffer = Buffer.readChannel(s, "/Users/trintonprater/scores/waidan/waidan/processing/crow_final.wav", channels:[0]);

		trackedSignal = SoundIn.ar(hardwareInput);

		frequency = Pitch.kr(
			in:trackedSignal,
			initFreq:433,
			minFreq: 220,
			execFreq: 1,
			clar:1
		);

		signal = GrainBuf.ar(
			numChannels: 2,
			trigger: Dust.ar({ExpRand(10, 30)}!12),
			dur: Logistic.ar(
				chaosParam:3.72,
				freq:10,
			).range(0.5, 1),
			sndbuf: buffer,
			rate: frequency / 1000,
			pos: Logistic.ar(
				chaosParam:3.57,
			).range(0, 1),
			interp: 2,
		);


		envelope = Amplitude.kr(
			trackedSignal,
			attackTime: 10,
			releaseTime: 20,
		);

		out = signal * envelope;

		Out.ar(outputBus, out);

}).add;

)

// envelope follower display on

(
w = Window.new("ENV", Rect.new(
	Window.screenBounds.width/2-100,
	Window.screenBounds.height/2-100,
	200,
	200,
)
)
.front
.alwaysOnTop_(true);

~button = Button.new(w, Rect(
	50,
	50,
	100,
	100,
))
.states_([
	["OFF", Color.black, Color.gray(0.8)],
	["ON", Color.white, Color(0.2,0.75,0.95)]
])
.action_({
	arg obj;
	if(
		obj.value == 1,
		{
			x = Synth.new(
				\env, [
					\hardwareInput,
					// saxophone channel 1 for actual production
					\outputBus,
				],
			);
		},
		{x.free},
	);
}
);

)

// granulator

// allocate a buffer

b = Buffer.alloc(s, s.sampleRate * 5, 1);

// two single channel audio busses

(
~micBus = Bus.audio(s, 1);
~ptrBus = Bus.audio(s, 1);
)


// Synthdefs

(
SynthDef.new(\mic, {
	arg in=0, out=0, amp=1;
	var sig;
	sig = SoundIn.ar(in) * amp;
	Out.ar(out, sig);
}).add;

SynthDef.new(\ptr, {
	arg out=0, buf=0;
	var sig;
	sig = Phasor.ar(0, BufRateScale.kr(buf), 0, BufFrames.kr(buf));
	Out.ar(out, sig);
}).add;

SynthDef.new(\rec, {
	arg ptrIn=0, micIn=0, buf=0;
	var ptr, sig;
	ptr = In.ar(ptrIn, 1);
	sig = In.ar(micIn, 1);
	BufWr.ar(sig, buf, ptr);
}).add;

SynthDef.new(\gran, {
	arg amp=0, out=0,
	atk=1, rel=1, gate=1,
	sync=1, dens=40,
	baseDur=0.05, durRand=1,
	rate=1, rateRand=1,
	pan=0, panRand=0,
	grainEnv=(-1), ptrBus=0, ptrSampleDelay=20000, ptrRandSamples=5000, minPtrDelay=1000;

	var sig, env, densCtrl, durCtrl, rateCtrl, panCtrl, ptr, ptrRand, totalDelay, maxGrainDur;

	env = EnvGen.kr(Env.asr(atk,1,rel), gate, doneAction:2);
	densCtrl = Select.ar(sync, [Dust.ar(dens), Impulse.ar(dens)]);
	durCtrl = baseDur * Logistic.ar(4, freq: 20000, init:0.7).exprange(1/durRand,durRand);
	rateCtrl = rate * Logistic.ar(4, freq:20000, init:0.7).exprange(1/rateRand, rateRand);
	panCtrl = pan + LFNoise1.kr(100).bipolar(panRand);

	ptrRand = LFNoise1.ar(100).bipolar(ptrRandSamples);
	totalDelay = max(ptrSampleDelay - ptrRand, minPtrDelay);

	ptr = In.ar(ptrBus, 1);
	ptr = ptr - totalDelay;
	ptr = ptr / BufFrames.kr(b);

	maxGrainDur = (totalDelay / rateCtrl) / SampleRate.ir;
	durCtrl = min(durCtrl, maxGrainDur);

	sig = GrainBuf.ar(
		2,
		densCtrl,
		durCtrl,
		b,
		rateCtrl,
		ptr,
		2,
		panCtrl,
		grainEnv,
	);

	sig = sig * env * amp;
	Out.ar(out, sig);
}).add;
)

// write synths to server

(
~micGrp = Group.new;
~ptrGrp = Group.after(~micGrp);
~recGrp = Group.after(~ptrGrp);
~granGrp = Group.after(~recGrp);
)

// after setup, toggle on

(
b.zero;
Synth(\mic, [\in, 0, \out, ~micBus], ~micGrp);
Synth(\ptr, [\buf, b, \out, ~ptrBus], ~ptrGrp);
Synth(\rec, [\ptrIn, ~ptrBus, \micIn, ~micBus, \buf, b], ~recGrp);
~g = 5.collect({
	arg n;
	Synth(\gran, [
	\amp, 0.15,
	\buf, b,
	\out, 0,
	\atk, 1,
	\rel, 1,
	\gate, 1,
	\sync, 1,
	\dens, exprand(2, 100),
	\baseDr, 0.8,
	\durRand, 100,
	\rate, 1,
	\rateRand, 9/8,
	\pan, 0,
	\panRand, 0,
	\grainEnv, -1,
	\ptrBus, ~ptrBus,
	\ptrSampleDelay, n.linlin(0,4,20000,s.sampleRate*2),
	\ptrRandSamples, 10000,
	\minPtrDelay, 1000,
], ~granGrp);
});
)

// ~g.set(\gate, 0);

// toggle off
~g.do({ arg n; n.set(\gate, 0) });