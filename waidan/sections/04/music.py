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
        (5, 4),
        (3, 8),
        (2, 4),
        (4, 8),
        (3, 8),
    ],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(-12, 4, 3, 1, 3, 1)])),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.invisible_tuplet_brackets(),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    library.change_viola_staff(
        clef_name="alto", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Stones" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "tap" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 8), (1, 20), (1, 32)],
        )
    ),
    trinton.invisible_tuplet_brackets(),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.pleaves(),
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([1], 4)),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.pleaves(),
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0])),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "cast" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([-1]),
        direction=abjad.UP,
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic('"mp"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -2, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.spanner_command(
        strings=["( tap )", "rub"],
        selector=trinton.select_logical_ties_by_index(
            [0, -2], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=[abjad.Tweak(r"""- \tweak font-name "Bodoni72 Book Italic" """)],
        right_padding=-0.5,
        direction=None,
        full_string=False,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(
        evans.talea(
            [4, -2, 6, -3, 1, 4, -2, 10], 32, extra_counts=[0, 0, 0, 0, -1, -1, 0, 0]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            "dqs'",
            "dqs'",
            "d'",
            "f'",
            "dqs'",
            "dqs'",
            "b'",
            "b'",
            "f'",
            "dqs'",
            "d'",
        ]
    ),
    trinton.change_lines(lines=5, clef="alto", invisible_barlines=False),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                4,
                7,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=["II", "flaut."],
            column="\column",
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
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="tast.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="pont.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1],
        ),
        style="solid-line-with-arrow",
        padding=4.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="tast.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="pont.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [2, 3],
        ),
        style="solid-line-with-arrow",
        padding=4.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="pont.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="tast.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [4, 6, 6, 7],
        ),
        style="solid-line-with-arrow",
        padding=4.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
                7,
            ],
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-7 "Viola" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

# saxophone music


trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(-12, 4, 3, 1, 3, 1)])),
    evans.PitchHandler(["e'''", "f''", "g''", "f'''", "a''"]),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.invisible_tuplet_brackets(),
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
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="secco slap",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=10,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Baritone" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([1, -1000], 16)),
    evans.PitchHandler(["g'"]),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
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
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("f"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Gran ON",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea([-1, 2, -100], 4)),
    library.multiphonic_trem_noteheads(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        preprolated=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([1, 2, 2, 3]),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Gran OFF",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([5, -1, 1], 4)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            "b'",
        ]
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            pitched=True,
        ),
        peaks=[0, 0.5, 0],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[5, 5, 5],
        divisions=[3],
        counts=[1],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=2,
        forget=False,
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
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(1, -3, 1, -1)])),
    evans.PitchHandler(["b'"]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #2",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
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
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(evans.talea([4, 3, 3, 4], 16)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        slash=True,
    ),
    evans.PitchHandler(["e'"]),
    trinton.pitch_with_selector_command(
        pitch_list=[["1/1", "7/6"]],
        as_ratios=True,
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["e'", "g'"]], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0])),
    abjad.slur,
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\set Staff.forceClef = ##t", site="before"),
            abjad.Clef("treble"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.LilyPondLiteral(r"\set Staff.forceClef = ##f", site="absolute_after"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 0, 1, 2, 2, 3, -1], first=True, pitched=True
        ),
    ),
    trinton.continuous_glissando(
        invisible_center=True, zero_padding=True, no_ties=True
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(0.25, 0.5, 1, 2, 2.5, 3),
            evans.make_fancy_gliss(3, 2.5, 2, 1, 0.5, 0.25),
        ],
        selector=trinton.select_logical_ties_by_index([1, 2], first=True),
    ),
    trinton.transparent_noteheads(selector=trinton.select_leaves_by_index([-2, -1])),
    voice=score["cello voice"],
    beam_meter=True,
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 20), (1, 8), (1, 32)],
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
    evans.PitchHandler(
        pitch_list=["a''", "d'", "g''", "e'", "f''", "f'", "e''", "g'", "d''"]
    ),
    trinton.invisible_tuplet_brackets(selector=abjad.select.tuplets),
    trinton.invisible_rests(),
    library.contour_staff(
        clef="harp strings",
        reset=False,
        force_clef=False,
    ),  # for section only
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
            trinton.boxed_markup(
                string="Gran ON",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, -3, -1], pitched=True),
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((4, 100)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([-6, 1, 1], 16)),
    evans.PitchHandler(["d'", "b'"]),
    library.contour_staff(
        clef="harp strings", reset=True, force_clef=False
    ),  # for section only
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
            trinton.boxed_markup(
                string="Gran OFF",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="pince",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    voice=score["harp voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="newspaper strings",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(evans.talea([1, -1], 2)),
    evans.PitchHandler([["b'", "e'''"]]),
    trinton.tremolo_command(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\set Staff.forceClef = ##t", site="before"),
            abjad.Arpeggio(),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.LilyPondLiteral(r"\set Staff.forceClef = ##f", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1, -1]),
    ),
    voice=score["harp voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    trinton.duration_line(
        selector=trinton.logical_ties(pitched=True, grace=False)
        # color=False,
        # sustained=False,
        # visible_grace=False,
        # on_beat_graces=False,
    ),
    trinton.noteheads_only(),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(3, 2)])),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="bellows",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4.5,
        direction=None,
        right_padding=1,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.hooked_spanner_command(
        string=r"\tremolo-stretto",
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        padding=2,
        direction=None,
        right_padding=4,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup {""}""",
            r"\tremolo-largo",
            r"\tremolo-moderato",
            r"\tremolo-largo",
        ],
        selector=trinton.select_logical_ties_by_index(
            [2, 4, 4, 5, 5, -1], pitched=True, first=True
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 4, 4, 5, 5, -1], first=True, pitched=True
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
                r"- \tweak padding #6",
            ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #6",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -3]),
        direction=abjad.UP,
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.aftergrace_command(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.spanner_command(
        strings=[r"\somatic-position-one", r"\somatic-position-two"],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 1"),
        ],
        right_padding=-3,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["accordion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# piano lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([-2, 100], 4)),
    evans.PitchHandler(
        [["a,,", "g,,", "f,,", "e,,", "d,,", "c,,"]],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.duration_line(sustained=True),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tremolo-articulation"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, -1], pitched=True),
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
        right_padding=1,
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
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(evans.talea([1, -1], 2)),
    evans.PitchHandler([["ds,,", "f,"]]),
    trinton.tremolo_command(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.Arpeggio(direction=None),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1, -1]),
    ),
    trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 2 voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="quarter", tempo=54, padding=11, site="closing", hspace=-3
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
            library.return_metronome_markup(
                note_value="eighth",
                tempo=144,
                padding=17.5,
                site="closing",
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Note("c'16."), right_rhythm=abjad.Note("c'8")
                )
                # hspace=-3
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# for measure in [1]:
trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
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
            abjad.bundle(
                trinton.boxed_markup(
                    string="ALL STAND",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=4,
                    string_only=False,
                ),
                r"- \tweak padding #18",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

for measure in [1, 2]:
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

# breaks

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
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

# beautification

trinton.remove_redundant_time_signatures(score=score)

for voice_name in library.all_voice_names:
    trinton.fill_empty_staves_with_skips(voice=score[voice_name])

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/04",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
