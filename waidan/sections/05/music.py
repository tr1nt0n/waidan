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
        (7, 4),
        (9, 8),
        (3, 4),
        (5, 8),
        (9, 16),
        (2, 4),
        (13, 16),
        (3, 4),
        (3, 4),
        (1, 8),
        (5, 4),
    ],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([-16, 16, -11, 6, -19, 9, -1000], 16)),
    trinton.rewrite_meter_command(),
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
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.logical_ties(all_except_first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("alto"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("--")],
        selector=trinton.logical_ties(
            exclude=[-1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [-2, -1, -1], pitched=True, grace=False
        ),
    ),
    trinton.duration_line(visible_grace=True),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="senza vib., poco tast.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["viola voice"],
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.tuplet([(-1, 1, -6, 1, -2, 1), (-3, 1, -3), (-7, 1)], treat_tuplets=False)
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-2, -1])),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            "g''",
            "f''",
            "e'''",
            "f'",
            "d'",
            "g''",
            "f''",
            "a''",
            "d'",
            "b",
            "a''",
            "e''",
            "a''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [r"\slapped", r"\override NoteHead.no-ledgers = ##t"],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [r"\revert-noteheads", r"\revert NoteHead.no-ledgers"],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([3, 5, 11, 16, 22, 27]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="secco slap",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 4, 5, 5, 7, 8, 9, 10], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran ON",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #3",
            ),
        ],
        selector=trinton.select_leaves_by_index([20]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((6, 4, 4, 3, 3, 3, 2, 2, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([-2, 3], 8)),
    library.multiphonic_trem_noteheads(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        preprolated=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #3",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([-16, 14, -10, 1000], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["e'"]),
    evans.PitchHandler(["7/6"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("--")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.duration_line(visible_grace=True),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="senza vib., poco tast.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran ON",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #7",
            ),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        evans.talea(
            [-8, -3, 4, -6, 2, 8, 12],
            32,
            extra_counts=[
                0,
                -1,
                0,
                0,
                0,
            ],
        )
    ),
    evans.PitchHandler(["b'"]),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    library.contour_staff(
        clef=None,
        reset=True,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        force_clef=False,
    ),
    trinton.hooked_spanner_command(
        string="\gridato-twist-bow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=2,
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
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        # tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                3,
            ],
        ),
        peaks=[0, 5, 0, 0],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[25, 0, 2, 0],
        divisions=[4],
        counts=[1],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=2,
        forget=False,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [-3, -2],
        ),
        peaks=[0, 5, 2, 0],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[1, 2, 8],
        divisions=[4],
        counts=[1],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=2,
        forget=False,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"f"')],
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Dots.staff-position = #-2", site="before"
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_leaves_by_index([-2, -1], pitched=True, grace=False),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Three",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 2, 2, 3)),
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.tuplet([(-8, 1, -1), (-2, 1, 1, -4), (-8, 2, 2, 2)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        ["d'", "g''", "d''", "f'", "a'", "c''", "d'", "g''", "c''", "d'", "a'", "g''"]
    ),
    library.contour_staff(
        clef="harp strings",
        reset=False,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        force_clef=False,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [r"\slapped", r"\override NoteHead.no-ledgers = ##t"],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [r"\revert-noteheads", r"\revert NoteHead.no-ledgers"],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([4, 5, 8, 10, 14, 17, 19, 21]),
    ),
    # trinton.hooked_spanner_command(
    #     string=trinton.boxed_markup(
    #         string="newspaper strings",
    #         # column="\center-column",
    #         # font_name="Bodoni72 Book",
    #         fontsize=-1,
    #         string_only=True,
    #     ),
    #     selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    #     padding=8,
    #     direction=None,
    #     right_padding=2,
    #     full_string=True,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="",
    #     tag=None,
    #     tweaks=None,
    # ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, 3, 5, 6, 8, 9, 9, 11], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran ON",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #3",
            ),
        ],
        selector=trinton.select_leaves_by_index([-4]),
        direction=abjad.UP,
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            4,
            4,
            6,
            3,
            3,
            3,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        evans.talea([-8, 2, -1, 4, -8, 3, 8, 12], 32, extra_counts=[2, 0, 0, 0]),
    ),
    evans.PitchHandler(["d'", "g''", "f'", "g''", "d'"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [r"\slapped", r"\override NoteHead.no-ledgers = ##t"],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [r"\revert-noteheads", r"\revert NoteHead.no-ledgers"],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fp"),
            abjad.Dynamic("fp"),
        ],
        selector=trinton.select_leaves_by_index([1, 1, 2, 3, 4, 7, 8, 9]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BendAfter(7),
            abjad.BendAfter(-7),
            abjad.Glissando(),
            abjad.Glissando(),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_leaves_by_index([1, 2]),
        style="solid-line-with-arrow",
        padding=4.75,
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
        selector=trinton.select_leaves_by_index([3, 4]),
        style="solid-line-with-arrow",
        padding=4.75,
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
        selector=trinton.select_leaves_by_index([-2, -1]),
        style="solid-line-with-arrow",
        padding=4.75,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([2], pitched=True)),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 2, 5)),
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([4, 4, -8, 16, -11, 6, -1000], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            "c'",
            "c'",
            ["e'", "g'"],
            ["e'", "g'"],
        ]
    ),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="bellows",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        padding=4.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-moderato",
            r"\tremolo-largo",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True, first=True),
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
    trinton.change_lines(
        lines=5,
        clef="treble",
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([2], pitched=True, grace=False),
    ),
    trinton.duration_line(
        visible_grace=True, selector=trinton.logical_ties(exclude=[0, 1])
    ),
    library.accelerando_trills(
        initial_width=10,
        y_scale=1.5,
        speed_factor=0.1,
        thickness=0.005,
        selector=trinton.select_leaves_by_index([2, 4], pitched=True),
        accordion_markup=True,
    ),
    library.accelerando_trills(
        initial_width=0.4,
        y_scale=1.5,
        speed_factor=-1,
        thickness=0.005,
        selector=trinton.select_leaves_by_index([6, 8], pitched=True),
        accordion_markup=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    \column {
                        \line {
                            "trilling between notated pitch and random adjacent diads"
                        }
                    }
                }"""
            ),
            abjad.Markup(
                r"""\markup {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    \column {
                        \line {
                            "( sim. )"
                        }
                    }
                }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([2, 5], pitched=True, grace=False),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2]),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()]
        ),
        selector=trinton.select_leaves_by_index([2, 2, 5, -3, -3, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

# piano rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.tuplet([(-4, 1, -7), (-11, 1), (1, -2, 1, -6)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(),
    evans.PitchHandler(
        [["e,,", "d,,", "c,,"]],
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.change_lines(lines=5, clef="bass", invisible_barlines=False),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3, 6, 7, -2, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1, 1, 3, 4, 5, 7, 8, 9, 11], pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran ON",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #3",
            ),
        ],
        selector=trinton.select_leaves_by_index([6], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((4, 6, 4, 3, 3, 3, 2, 2, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([1, -3, 2, -4], 16)),
    evans.PitchHandler(
        [["e,,", "d,,", "c,,"]],
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    voice=score["piano 1 voice"],
)

# piano lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([2, 2, 2, 2, 2], 16)),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"f"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 4],
        ),
    ),
    library.stone_arrow_noteheads(
        notehead_list=["right", "left-down", "right-up", "right-down", "left-up"],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Rub stones" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["piano 2 voice"],
)

# globals

# for measure in [1]:
trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string="ALL SIT",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=4,
                    string_only=False,
                ),
                r"- \tweak padding #23",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="quarter",
                tempo=54,
                padding=16,
                site="closing",
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'2"),
                    right_rhythm=abjad.Note("c'4"),
                )
                # hspace=-3
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TimeSignature.X-offset = -6.5", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="quarter",
                tempo=("67", "1", "2"),
                padding=16,
                site="closing",
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("5:4", "c'8"),
                    right_rhythm=abjad.Note("c'8"),
                )
                # hspace=-3
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TimeSignature.X-offset = -6.5", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="quarter",
                tempo=("84", "3", "8"),
                padding=17.5,
                site="closing",
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("5:4", "c'4"),
                    right_rhythm=abjad.Note("c'4"),
                )
                # hspace=-3
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string="it is fucking ridiculous that i have to do this",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=4,
                    string_only=False,
                ),
                r"- \tweak padding #5",
                r"- \tweak transparent ##t",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

for measure in [9, 11]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)",
                    site="before",
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)

trinton.fermata_measures(
    score=score,
    measures=[10],
    fermata="very-long-fermata",
    voice_names=None,
    font_size=12,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-10,
    extra_offset=2.5,
    tag=None,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="eighth", tempo=72, padding=11, site="closing", hspace=0.5
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="quarter",
                tempo=("105", "15", "32"),
                padding=16,
                site="closing",
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("5:4", "c'4"),
                    right_rhythm=abjad.Note("c'4"),
                )
                # hspace=-3
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# breaks

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="after")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

for measure in [2, 4, 5]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                ]
            ),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\break", site="after")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

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
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/05",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
