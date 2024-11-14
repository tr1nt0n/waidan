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
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (5, 8),
    ],
)

# define tuplets

logistic_map_list = [_ for _ in trinton.logistic_map(x=4, r=3.56, n=9) if _ > 0]

logistic_map = evans.Sequence(logistic_map_list).grouper([3, 4, 2])

ametric_tuplets = []

for group in logistic_map:
    group = tuple(group)
    ametric_tuplets.append(group)

# viola music

# define viola degrees

_number_to_degree = {
    1: r"45°",
    2: r"55°",
    3: r"65°",
    4: r"75°",
    5: r"90°",
    6: r"100°",
    7: r"110°",
    8: r"120°",
    9: r"135°",
}

viola_degree_strings = []

for _ in logistic_map_list:
    viola_degree_strings.append(_number_to_degree[_])

_number_to_fraction = {
    1: r"1/2",
    2: r"1/3",
    3: r"2/3",
    4: r"1/4",
    5: r"3/4",
    6: r"1/5",
    7: r"2/5",
    8: r"3/5",
    9: r"4/5",
}

spazzolato_fraction_markups = [
    trinton.boxed_markup(
        string=rf"{_number_to_fraction[logistic_map[0][0]]} spazzolato",
        fontsize=-4,
        string_only=True,
    ),
]

for _ in logistic_map_list[1:]:
    spazzolato_fraction_markups.append(
        trinton.boxed_markup(
            string=rf"{_number_to_fraction[_]} spz.",
            fontsize=-4,
            string_only=True,
        ),
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(evans.tuplet(ametric_tuplets, treat_tuplets=False)),
    evans.PitchHandler(["g'", "b'", "a'", "b'", "e'", "d''", "d'", "f''", "c'", "a''"]),
    library.change_viola_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.continuous_glissando(zero_padding=True),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override TupletBracket.direction = #DOWN",
                    r"\override NoteHead.X-extent = #'(0 . 0)",
                    r"\override NoteHead.transparent = ##t",
                    r"\override NoteHead.no-ledgers = ##t",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert TupletBracket.direction",
                    r"\revert NoteHead.X-extent",
                    r"\revert NoteHead.transparent",
                    r"\revert NoteHead.no-ledgers",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    trinton.spanner_command(
        strings=[_ for _ in viola_degree_strings + [r""]],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                2,
                2,
                3,
                3,
                4,
                4,
                5,
                5,
                6,
                6,
                7,
                7,
                8,
                8,
                9,
                9,
                10,
                10,
                11,
                11,
                12,
                12,
                13,
                13,
                14,
                14,
                15,
                15,
                16,
                16,
                17,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=False,
        command="Two",
        end_hook=False,
        tag=None,
    ),
    trinton.spanner_command(
        strings=viola_degree_strings,
        selector=trinton.select_logical_ties_by_index(
            [
                17,
                18,
                18,
                19,
                19,
                20,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=False,
        command="Two",
        end_hook=False,
        tag=None,
    ),
    trinton.spanner_command(
        strings=[_ for _ in spazzolato_fraction_markups + [r"\markup {}"]],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                2,
                2,
                3,
                3,
                4,
                4,
                5,
                5,
                6,
                6,
                7,
                7,
                8,
                8,
                9,
                9,
                10,
                10,
                11,
                11,
                12,
                12,
                13,
                13,
                14,
                14,
                15,
                15,
                16,
                16,
                17,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=9,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        tag=None,
    ),
    trinton.spanner_command(
        strings=spazzolato_fraction_markups,
        selector=trinton.select_logical_ties_by_index(
            [
                17,
                18,
                18,
                19,
                19,
                20,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=9,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        tag=None,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                3,
                5,
                5,
                7,
                8,
                8,
                9,
                10,
                10,
                12,
                14,
                14,
                16,
                17,
                17,
                18,
                19,
                19,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((11,)),
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 1), treat_tuplets=False)
    ),
    evans.PitchHandler(
        [
            "c'''",
            "f'''",
            "d'''",
            "g'''",
            "b'''",
            "a'''",
            "g''",
            "f''",
            "c''",
            "d''",
            "a'",
            "e'",
            "f'",
            "c'",
            "f",
            "e",
            "f",
            "f",
        ]
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((6,)),
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 2), treat_tuplets=False)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e,,"],
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2], 6, pitched=True, grace=False
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["1/1", "28/3"]],
        as_ratios=True,
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2], 6, pitched=True, grace=False
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g''"],
        selector=trinton.patterned_tie_index_selector(
            [3, 4, 5], 6, pitched=True, grace=False
        ),
    ),
    trinton.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2], 6, pitched=True, grace=False
        )
    ),
    trinton.force_accidentals_command(
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2], 6, first=True, pitched=True, grace=False
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("downbow")],
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2], 6, first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override NoteHead.no-ledgers = ##t",
                ],
                site="before",
            ),
            abjad.Articulation(">"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 4, 5], 6, first=True, pitched=True, grace=False
        ),
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override TupletBracket.direction = #DOWN",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert TupletBracket.direction",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { "LH Finger Percussion:" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { "( sim. )" } """
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [3, 9], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("|>o"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                3,
                6,
                6,
                8,
                9,
                12,
                12,
                13,
                15,
                19,
                20,
                22,
                23,
                27,
                30,
                31,
                37,
                38,
                39,
                41,
                42,
            ],
            pitched=True,
            first=True,
            grace=False,
        ),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5,)),
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 1), treat_tuplets=False)
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((9,)),
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 0), treat_tuplets=False)
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    voice=score["accordion 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((7,)),
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 2), treat_tuplets=False)
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((13,)),
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="eighth", tempo=60, padding=11, site="closing", hspace=0.5
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="after")],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

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

# beautification

trinton.remove_redundant_time_signatures(score=score)

for voice_name in library.all_voice_names:
    trinton.fill_empty_staves_with_skips(voice=score[voice_name])

library.reset_line_positions(score=score, voice_names=["viola voice"])

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/09",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
