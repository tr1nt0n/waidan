import abjad
import baca
import evans
import trinton
import fractions
from abjadext import rmakers
from abjadext import microtones
from itertools import cycle
from waidan import library

# score

score = library.waidan_score(
    [
        (31, 32),
        (5, 48),
        (7, 32),
        (9, 40),
        (23, 32),
        (31, 16),
        (5, 24),
        (7, 16),
        (9, 20),
        (23, 16),
    ],
)

# conductor music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea([2, 5, 1, 2, 8, 6, 5, 1], 32, extra_counts=[0, 1, -2, 0])
    ),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_thirty_seconds_preprocessor((7, 2, 16, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    evans.RhythmHandler(evans.tuplet([(1,)])),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([2, 9, 5, 2, 7], 32, extra_counts=[3, -1, 0])),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_thirty_seconds_preprocessor((8,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        evans.talea([2, 5, 1, 2, 8, 6, 5, 1], 16, extra_counts=[0, 1, -2, 0])
    ),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((7, 2, 16, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(evans.tuplet([(1,)])),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.talea([2, 9, 5, 2, 7], 16, extra_counts=[3, -1, 0])),
    voice=score["violin voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((8,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.DynamicText.staff-padding = #10.5",
                    r"\override Staff.DynamicLineSpanner.staff-padding = #10.5",
                    r"\override TupletBracket.direction = #DOWN",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert TupletBracket.direction",
                    r"\revert Staff.DynamicText.staff-padding",
                    r"\revert Staff.DynamicLineSpanner.staff-padding",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 )
                    }
                }"""
            )
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 2))],
            preselector=abjad.select.leaves,
        ),
        direction=abjad.UP,
    ),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 5], pitched=True),
    ),
    trinton.duration_line(
        visible_grace=True, selector=trinton.select_leaves_by_index([7], pitched=True)
    ),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_leaves_by_index([9, 10, 11, 12, 13], pitched=True),
    ),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_leaves_by_index(list(range(15, 26)), pitched=True),
    ),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_leaves_by_index(list(range(27, 34)), pitched=True),
    ),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_leaves_by_index(list(range(36, 39)), pitched=True),
    ),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_leaves_by_index(list(range(40, 43)), pitched=True),
    ),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_leaves_by_index(list(range(44, 49)), pitched=True),
    ),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_leaves_by_index(list(range(50, 52)), pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 4, 9, 13, 17, 18, 20, 25, 28, 30], pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=1, right=1),
        ],
        selector=trinton.select_leaves_by_index(
            [2, 3, 4, 10, 11, 17, 18, 20, 22, 23, 28, 29, 30], pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            trinton.make_custom_dynamic("mfp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("f"),
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic("mfppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            trinton.make_custom_dynamic("sfffz"),
            trinton.make_custom_dynamic("sfffz"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.bundle(
                abjad.Dynamic("fff"),
                # r"- \tweak X-extent ##f"
                r"- \tweak X-offset -1.10",
            ),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            trinton.make_custom_dynamic("fffpp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                3,
                4,
                5,
                5,
                6,
                7,
                7,
                8,
                9,
                9,
                11,
                12,
                12,
                14,
                15,
                15,
                16,
                16,
                17,
                18,
                19,
                21,
                21,
                23,
                23,
                24,
                24,
                25,
                25,
                26,
                27,
                29,
                30,
                30,
                31,
                31,
                32,
                32,
                33,
                33,
                34,
                35,
                36,
                36,
                37,
                37,
                39,
                40,
                40,
                41,
                41,
                43,
                44,
                44,
                45,
                45,
                47,
                47,
                49,
                50,
                51,
                51,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["violin voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    trinton.spanner_command(
        strings=[
            r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } """,
            library.return_metronome_markup(
                note_value="sixteenth",
                tempo=90,
                padding=0,
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'8"),
                    right_rhythm=abjad.Note("c'16"),
                ),
                site="after",
                hspace=None,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=6,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="",
        tag=None,
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.Markup(
#                 r"""\markup \fontsize #6 { \override #'(font-name . "Bodoni72 Book Italic") \raise #18 \with-dimensions-from \null { "I've been waiting a long time for emergence" } }"""
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )


# for measure in [1, 5]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(
#                     r"\once \override Score.TimeSignature.stencil = ##f",
#                     site="before",
#                 ),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)

# trinton.fermata_measures(
#     score=score,
#     measures=[10],
#     fermata="very-long-fermata",
#     voice_names=library.all_voice_names,
#     font_size=12,
#     clef_whitespace=True,
#     blank=True,
#     last_measure=False,
#     padding=-10,
#     extra_offset=2.5,
#     tag=None,
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (6,)),
#     trinton.attachment_command(
#         attachments=[
#             library.return_metronome_markup(
#                 note_value="quarter",
#                 tempo=("105", "15", "32"),
#                 padding=16,
#                 site="closing",
#                 metric_modulation=abjad.MetricModulation(
#                     left_rhythm=abjad.Tuplet("5:4", "c'4"),
#                     right_rhythm=abjad.Note("c'4"),
#                 )
#                 # hspace=-3
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

# breaks

for measure in [1, 2, 3, 7, 8]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

# for measure in [2, 4, 5, 9, 10]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3,)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral(r"\break", site="after")],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# for measure in [2, 6, 13]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (12, 14)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
#         selector=trinton.select_leaves_by_index([0, 1, 2]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = ##f",
                site="before",
            ),
        ],
        selector=abjad.select.leaves,
    ),
    voice=score["Global Context"],
)

# beautification

trinton.remove_redundant_time_signatures(score=score)

for voice_name in library.all_voice_names:
    trinton.fill_empty_staves_with_skips(voice=score[voice_name])

library.reset_line_positions(score=score, voice_names=["viola voice"])

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/10",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="10",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
