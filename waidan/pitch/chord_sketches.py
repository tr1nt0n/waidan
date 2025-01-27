import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones

# tape chord

# score

score = trinton.make_empty_score(
    instruments=[
        abjad.MezzoSopranoVoice(),
        abjad.MezzoSopranoVoice(),
        # abjad.Viola(),
        # abjad.SopranoSaxophone(),
        # abjad.BaritoneSaxophone(),
        # abjad.Cello(),
        # abjad.Harp(),
        # abjad.Accordion(),
        # abjad.Piano(),
    ],
    groups=[
        2,
        # 1,
        # 6,
    ],
    time_signatures=[
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (2, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (2, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (2, 4),
    ],
    filler=abjad.Skip,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 19)),
    evans.RhythmHandler(
        evans.talea([10000], 4),
    ),
    evans.PitchHandler(["e,,"]),
    evans.PitchHandler(
        [
            [
                "112/3",
                "448/15",
                "36/1",
                "64/3",
                "56/4",
            ],
        ],
        as_ratios=True,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea([10000], 4),
        ),
        direction=abjad.DOWN,
        voice_name="xen voice",
        preprocessor=trinton.fuse_quarters_preprocessor((4,)),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    voice=score["mezzosopranovoice 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 19)),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="e'",
                repeating_ratio="7/6",
                number_of_divisions=4,
                scale_degree=2,
            ),
        ],
    ),
    trinton.detach_command(selector=trinton.pleaves(), detachments=[abjad.Markup]),
    trinton.attachment_command(
        attachments=[abjad.Markup(r'\markup { "+33" }')],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    voice=score["xen voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (39, 57)),
    evans.RhythmHandler(
        evans.talea([10000], 4),
    ),
    evans.PitchHandler(["e,,"]),
    evans.PitchHandler(
        [
            [
                "112/3",
                "64/5",
                "96/5",
                "80/3",
                "32/1",
            ],
        ],
        as_ratios=True,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea([10000], 4),
        ),
        direction=abjad.DOWN,
        voice_name="xen voice 2",
        preprocessor=trinton.fuse_quarters_preprocessor((4,)),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    voice=score["mezzosopranovoice 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (39, 57)),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="e'",
                repeating_ratio="7/6",
                number_of_divisions=3,
                scale_degree=1,
            ),
        ],
    ),
    trinton.detach_command(selector=trinton.pleaves(), detachments=[abjad.Markup]),
    trinton.attachment_command(
        attachments=[abjad.Markup(r'\markup { "-11" }')],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    voice=score["xen voice 2"],
)

# lower staff

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 19)),
    evans.RhythmHandler(
        evans.talea([10000], 4),
    ),
    evans.PitchHandler(["e,,"]),
    evans.PitchHandler(
        [
            [
                "80/11",
                "32/5",
                "3/1",
                "2/1",
                "1/1",
            ],
        ],
        as_ratios=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    voice=score["mezzosopranovoice 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (39, 57)),
    evans.RhythmHandler(
        evans.talea([10000], 4),
    ),
    evans.PitchHandler(["e,,"]),
    evans.PitchHandler(
        [
            [
                "48/7",
                "6/1",
                "2/1",
                "1/1",
            ],
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    voice=score["mezzosopranovoice 2 voice"],
)

# leaf = abjad.select.leaf(score["xen voice 2"], 0, pitched=True)
#
# leaf_frequency = leaf.written_pitch.hertz
#
# print("")
# print(leaf_frequency)
# print("")

trinton.make_sc_file(
    score=score,
    tempo=((1, 4), 60),
    current_directory="/Users/trintonprater/scores/waidan/waidan/pitch",
)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/pitch/",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="_tape_chord_1",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/waidan_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
