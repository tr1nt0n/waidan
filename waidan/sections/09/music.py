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
            "d",
            "e",
            "c",
            "e",
            "d",
            "f",
            "e",
            "a",
            "f",
            "a",
            "g",
            "d'",
            "b",
            "e'",
            "c'",
            "f'",
            "d'",
            "a'",
            "f'",
            "b'",
            "g'",
            "d''",
            "b'",
            "c''",
            "a'",
            "e''",
            "d''",
            "f''",
            "e''",
            "a''",
            "g''",
            "b''",
            "g''",
            "d'''",
            "c'''",
            "b'''",
            "a'''",
            "e''''",
            "d''''",
            "f''''",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.X-extent = #'(0 . 0)", site="before"
            )
        ],
        selector=trinton.pleaves(),
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.continuous_glissando(zero_padding=True),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="trumpet embouchure sempre",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                # string_only=True,
            ),
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
        selector=trinton.select_leaves_by_index([0, 0, -1], grace=False),
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
            abjad.Dynamic("ppp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
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
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
                2,
                4,
                5,
                5,
                6,
                7,
                7,
                9,
                11,
                11,
                13,
                14,
                14,
                15,
                16,
                16,
                18,
                20,
                20,
                22,
                23,
                23,
                24,
                25,
                25,
                27,
                28,
                28,
                31,
                32,
                32,
                33,
                35,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((6,)),
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 2), treat_tuplets=False)
    ),
    evans.PitchHandler(["b'"]),
    library.contour_staff(
        clef=None,
        reset=False,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        force_clef=False,
    ),
    trinton.duration_line(),
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
            abjad.StartHairpin(">o"),
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
                44,
            ],
            pitched=True,
            first=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string="\gridato-twist-bow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="back of body",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
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
    trinton.pitch_with_selector_command(
        pitch_list=["b,,"],
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2, 3], 7, pitched=True, grace=False
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            ["e'''", "f'''", "bf'''", "c''''", "gf''''"],
            ["e'''", "gf'''", "c''''", "ds''''", "f''''"],
        ],
        selector=trinton.patterned_tie_index_selector(
            [4, 5, 6], 7, pitched=True, grace=False
        ),
    ),
    trinton.duration_line(
        selector=trinton.patterned_tie_index_selector(
            [4, 5, 6], 7, pitched=True, grace=False
        )
    ),
    trinton.change_lines(lines=5, clef="bass", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2, 3], 7, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("salzedo-thunder")],
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2, 3], 7, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Harp" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.patterned_tie_index_selector(
            [0], 7, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.patterned_tie_index_selector(
            [4], 7, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio(), abjad.Articulation("tremolo-articulation")],
        selector=trinton.patterned_tie_index_selector(
            [4, 5, 6], 7, first=True, pitched=True, grace=False
        ),
    ),
    trinton.ottava_command(
        selector=trinton.patterned_tie_index_selector(
            [4, 9], 10, first=True, pitched=True
        )
    ),
    trinton.ottava_command(
        selector=trinton.select_logical_ties_by_index(
            [-4, -1], first=True, pitched=True
        )
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2, 3], 7, first=True, pitched=True, grace=False
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
            abjad.Dynamic("p"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
                5,
                5,
                6,
                7,
                9,
                12,
                12,
                13,
                13,
                14,
                17,
                18,
                20,
                20,
                21,
                21,
                25,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((9,)),
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 0), treat_tuplets=False)
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [1, 4, 5, 8, 10, 13, 17, 19, 22, 23, 24, 26, 28, 32, 33],
            pitched=True,
            grace=False,
        )
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    library.stone_arrow_noteheads(
        notehead_list=["up", "right-down", "left-down", "right-up", "left-up", "down"],
        selector=trinton.logical_ties(
            first=True,
            pitched=True,
            grace=False,
            exclude=[1, 4, 5, 8, 10, 13, 17, 19, 22, 23, 24, 26, 28, 32, 33],
        ),
    ),
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
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \center-column { \line { "strike +" } \line { "scrape" } \line { "Stones" } } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { "Accordion" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { "( sim. )" } """
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-moderato",
            r"\tremolo-largo",
        ],
        selector=trinton.select_logical_ties_by_index([1, 2], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=3,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-moderato",
        ],
        selector=trinton.select_logical_ties_by_index([5, 6], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-moderato",
            r"\tremolo-largo",
        ],
        selector=trinton.select_logical_ties_by_index([7, 8], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_logical_ties_by_index(
            [11, 12], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-stretto",
            r"\tremolo-largo",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                14,
                15,
            ],
            pitched=True,
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-moderato",
        ],
        selector=trinton.select_logical_ties_by_index(
            [18, 19], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-moderato",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_logical_ties_by_index(
            [23, 24], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-moderato",
        ],
        selector=trinton.select_logical_ties_by_index(
            [26, 27], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-moderato",
            r"\tremolo-stretto",
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_logical_ties_by_index(
            [30, 32, 32, 34, 34, 35], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-stretto",
            r"\tremolo-moderato",
        ],
        selector=trinton.select_logical_ties_by_index(
            [37, 38], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_logical_ties_by_index(
            [40, 41], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-stretto",
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_logical_ties_by_index(
            [45, 47, 47, 48], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="bellows",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index([1, 2], first=True, pitched=True),
        padding=5.5,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="bellows",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index(
            [
                5,
                6,
                7,
                8,
                11,
                12,
                14,
                15,
                18,
                19,
                23,
                24,
                26,
                27,
                30,
                35,
                37,
                38,
                40,
                41,
                45,
                48,
            ],
            first=True,
            pitched=True,
        ),
        padding=4.5,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                4,
                5,
                5,
                6,
                8,
                8,
                9,
                10,
                10,
                11,
                12,
                13,
                14,
                15,
                16,
                17,
                17,
                18,
                19,
                20,
                22,
                23,
                23,
                25,
                26,
                27,
                28,
                29,
                32,
                33,
                33,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((7,)),
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 2), treat_tuplets=False)
    ),
    evans.PitchHandler(
        [["a,,", "g,,", "f,,", "e,,", "d,,", "c,,"]],
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.duration_line(),
    trinton.change_lines(lines=5, clef="bass", invisible_barlines=False),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Piano" } """
                ),
                r"- \tweak padding #4",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tremolo-articulation"),
            abjad.Articulation(">"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="mallets on low strings",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
        direction=None,
        right_padding=10,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
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
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("mfpp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                1,
                2,
                2,
                3,
                3,
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
                11,
                11,
                12,
                12,
                13,
                15,
                15,
                16,
                16,
                17,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
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

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)

# breaks

for measure in [
    1,
    2,
    4,
    5,
    7,
    8,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
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
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/09",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
