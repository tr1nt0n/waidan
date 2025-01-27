s.boot;

(

SynthDef.new(
	\utgran,
	{
		arg hardwareInput, outputBus;
		var buffer, out;

		buffer = Buffer.readChannel(s, "/Users/trintonprater/scores/waidan/waidan/processing/tape_iv_crow_noises/several_discreet_steps.wav", channels:[0]);

		out = GrainBuf.ar(
			numChannels: 2,
			trigger: Dust.ar({ExpRand(10, 30)}!12),
			dur: Logistic.ar(
				chaosParam:3.72,
				freq:10,
			).range(0.5, 1),
			sndbuf: buffer,
			rate: Logistic.ar(
				chaosParam:3.59,
				freq: 10,
			).range(0.02, 0.8),
			pos: Logistic.ar(
				chaosParam:3.57,
			).range(0, 1),
			interp: 2,
		);

		Out.ar(outputBus, out);

}).add;

)

(

Synth.new(
	\utgran, [
		\hardwareInput,
		\outputBus,
	],
);

)