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
        (7, 16),
        (7, 32),
        (1, 8),
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

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 100], 4)),
    trinton.pitch_with_selector_command(
        pitch_list=[
            [
                "c'",
                "d'",
                "e'",
                "f'",
                "g'",
                "a'",
                "b'",
                "c''",
                "d''",
                "e''",
                "f''",
                "g''",
            ]
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.change_viola_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.change_notehead_command(
        notehead="cluster", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.duration_line(selector=trinton.select_logical_ties_by_index([0])),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0])),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tremolo-articulation")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #20 #13 %% #width #height"),
                r"- \tweak padding #6.5",
            ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #16",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 {
                    \raise #13.5 \with-dimensions-from \null {
                        \column {
                            \line { "Follow Ensemble by ear" }
                            \line { "Intensity = " }
                            \line { "speed and dynamic of tremolo +" }
                            \line { "speed and width of bow angle changes" }
                        }
                    }
                } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="spazzolato",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
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
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 9)),
    evans.RhythmHandler(rmakers.note),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.invisible_tuplet_brackets(),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(evans.talea([11, 100], 16)),
    trinton.pitch_with_selector_command(
        pitch_list=["c"],
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["7/6", "5/2"]],
        as_ratios=True,
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.Clef.X-extent = ##f",
                    r"\once \override Staff.Clef.extra-offset = #'(-4.5 . 0)",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    library.change_viola_staff(
        clef_name="alto",
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[-4, -3, -2])),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="II + III",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True
        ),
        padding=10,
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
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([2, 3, 3, -1], pitched=True),
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    trinton.pitch_with_selector_command(
        pitch_list=["b'"], selector=trinton.logical_ties(exclude=[0, -1], grace=False)
    ),
    trinton.duration_line(
        sustained=True, selector=trinton.logical_ties(exclude=[0, -1], grace=False)
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    voice=score["viola voice"],
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 100], 4)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e", "g'''"], selector=trinton.select_leaves_by_index([0, 1])
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #20 #13 %% #width #height"),
                r"- \tweak padding #6.5",
            ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #15",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 {
                    \raise #12 \with-dimensions-from \null {
                        \column {
                            \line { "Follow Conductor" }
                            \line { "Intensity = " }
                            \line { "dynamic + pitch range of glissando" }
                        }
                    }
                } """
            ),
            abjad.Glissando(zero_padding=True),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    evans.RhythmHandler(rmakers.note),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.invisible_tuplet_brackets(),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    trinton.pitch_with_selector_command(
        pitch_list=["b'"], selector=trinton.logical_ties(exclude=[0], grace=False)
    ),
    trinton.duration_line(
        sustained=True, selector=trinton.logical_ties(exclude=[0], grace=False)
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 {  "Baritone" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            10,
            12,
        ),
    ),
    evans.RhythmHandler(evans.talea([100], 4)),
    evans.PitchHandler(["gqf'"]),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 2, -1], pitched=True),
    ),
    voice=score["baritonesaxophone voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 100], 4)),
    evans.PitchHandler(["b'"]),
    library.contour_staff(
        clef=None,
        reset=False,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        force_clef=False,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0])),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #20 #11 %% #width #height"),
                r"- \tweak padding #6.5",
            ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #14",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 {
                    \raise #11 \with-dimensions-from \null {
                        \column {
                            \line { "Follow Conductor" }
                            \line { "Intensity = " }
                            \line { "bow pressure + speed of figure" }
                        }
                    }
                } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string="\gridato-twist-bow",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
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
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        padding=5,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [0],
        ),
        peaks=[
            0,
            5,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            4,
            0.1,
            1,
            0.1,
            4,
            0.1,
            4,
            0.1,
            4.5,
            1,
            3,
            2,
            4,
            3,
            5,
            1,
            1.5,
            0.5,
            1,
            0.1,
            5,
        ],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[
            1,
            0.1,
            0.1,
            0.1,
            0.1,
            0.1,
            0.1,
            1,
            1,
            0.1,
            0.1,
            0.1,
            0.1,
            0.5,
            1,
            0.1,
            0.2,
            0.1,
            0.05,
            0.1,
            0.1,
            0.3,
            0.05,
            0.3,
            0.05,
            0.3,
            0.05,
            0.6,
            0.06,
            0.8,
            0.08,
            1,
            0.1,
            0.1,
            0.1,
            0.1,
            0.1,
            3,
        ],
        divisions=[
            39,
        ],
        counts=[
            1,
        ],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=-4,
        forget=True,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(evans.talea([7, 100], 16)),
    trinton.pitch_with_selector_command(
        pitch_list=[fractions.Fraction(47, -3)],
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        )
    ),
    library.contour_staff(
        clef=None,
        reset=True,
        selector=trinton.select_leaves_by_index([0, 0], pitched=True),
        force_clef=False,
    ),
    trinton.detach_command(
        detachments=[
            abjad.Clef,
        ],
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[-4, -3, -2])),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="IV",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True
        ),
        padding=3.5,
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
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([1, 2, 2, -1], pitched=True),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 9)),
    evans.RhythmHandler(rmakers.note),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    trinton.pitch_with_selector_command(
        pitch_list=["b'"], selector=trinton.logical_ties(exclude=[0, -1], grace=False)
    ),
    trinton.duration_line(
        sustained=True, selector=trinton.logical_ties(exclude=[0, -1], grace=False)
    ),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.invisible_tuplet_brackets(),
    voice=score["cello voice"],
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 100], 4)),
    trinton.pitch_with_selector_command(
        pitch_list=[
            [
                "c,",
                "bs,,",
            ]
        ],
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        )
    ),
    trinton.change_notehead_command(
        notehead="lowest", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Articulation("salzedo-thunder"),
            abjad.Articulation("tremolo-articulation"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0])),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(r"\markup \staffBox #20 #14 %% #width #height"),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #10.5",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 {
                    \raise #8 \with-dimensions-from \null {
                        \column {
                            \line { "Follow Conductor" }
                            \line { "Intensity = " }
                            \line { "dynamic + speed of tremolo" }
                        }
                    }
                } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    evans.RhythmHandler(rmakers.note),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.invisible_tuplet_brackets(),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    trinton.pitch_with_selector_command(
        pitch_list=["g,"], selector=trinton.pleaves(exclude=[0], grace=False)
    ),
    trinton.duration_line(
        selector=trinton.pleaves(exclude=[0], grace=False), sustained=True
    ),
    trinton.noteheads_only(selector=trinton.pleaves(exclude=[], grace=True)),
    voice=score["harp voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 100], 4)),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tremolo-articulation")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="bellows",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        padding=4.5,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0])),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #20 #7 %% #width #height"),
                r"- \tweak padding #5.5",
            ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #13",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 {
                    \raise #13 \with-dimensions-from \null {
                        \column {
                            \line { "Follow Conductor" }
                            \line { "Intensity = " }
                            \line { "dynamic + speed of tremolo" }
                        }
                    }
                } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(evans.talea([17, 100], 16)),
    trinton.pitch_with_selector_command(
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False),
        pitch_list=[["ef", "d", "af", "ds'", "e'"]],
    ),
    trinton.change_lines(
        lines=5,
        clef="bass",
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
        invisible_barlines=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False)
    ),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    # r"\once \override Staff.Clef.X-extent = ##f",
                    r"\once \override Staff.Clef.extra-offset = #'(-3.5 . 0)",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([2, -2, -2, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(evans.talea([-17, 100], 16)),
    evans.PitchHandler(pitch_list=[["a,", "e,", "a,,"]]),
    trinton.change_lines(lines=5, clef="bass", invisible_barlines=True),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, -2, -2, -1], pitched=True),
    ),
    voice=score["accordion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 9)),
    evans.RhythmHandler(rmakers.note),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    trinton.duration_line(
        sustained=True, selector=trinton.logical_ties(exclude=[0, -1], grace=False)
    ),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.invisible_tuplet_brackets(),
    voice=score["accordion 1 voice"],
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 100], 4)),
    trinton.pitch_with_selector_command(
        pitch_list=[
            [
                "f,",
                "e,",
                "d,",
                "c,",
                "b,,",
                "a,,",
                "g,,",
                "f,,",
                "e,,",
                "d,,",
                "c,,",
            ]
        ],
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        )
    ),
    trinton.change_notehead_command(
        notehead="cluster", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Articulation("tremolo-articulation"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0])),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="mallets on low strings",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        padding=4,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #21 #18.5 %% #width #height"),
                r"- \tweak padding #5",
            ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #13",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 {
                    \raise #10.5 \with-dimensions-from \null {
                        \column {
                            \line { "Follow Conductor" }
                            \line { "Intensity = " }
                            \line { "dynamic + pitch range of tremolo" }
                        }
                    }
                } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    evans.RhythmHandler(rmakers.note),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.invisible_tuplet_brackets(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    trinton.pitch_with_selector_command(
        pitch_list=["b,"], selector=trinton.pleaves(exclude=[0], grace=False)
    ),
    trinton.duration_line(
        selector=trinton.pleaves(exclude=[0], grace=False), sustained=True
    ),
    trinton.noteheads_only(selector=trinton.pleaves(exclude=[], grace=True)),
    voice=score["piano 1 voice"],
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

trinton.fermata_measures(
    score=score,
    measures=[13],
    fermata="short-fermata",
    voice_names=library.all_voice_names,
    font_size=12,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-10,
    extra_offset=2.5,
    tag=None,
)

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

# breaks

for measure in [1, 2, 3, 7, 8, 11]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\break", site="after")],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

for measure in [
    1,
    2,
    3,
    5,
    7,
    8,
    9,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

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
