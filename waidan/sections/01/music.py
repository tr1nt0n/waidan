import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones
from waidan import library
from itertools import cycle

# tape chord

# score

score = library.waidan_score(
    [
        # breath
        (3, 8),
        # senza vibrato
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        # increasing vibrato
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
    ],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    evans.RhythmHandler(
        evans.talea([1000], 8),
    ),
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
    trinton.noteheads_only(),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.logical_ties(all_except_first=True)
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.RhythmHandler(
        evans.talea([1], 8),
    ),
    abjad.beam,
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
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
        selector=trinton.pleaves(exclude=[0]),
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 11)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(exclude=[-2, -1]), zero_padding=True
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(), zero_padding=True, invisible_center=True
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(0.1),
            evans.make_fancy_gliss(0.2),
            evans.make_fancy_gliss(0.3),
            evans.make_fancy_gliss(0.4),
            evans.make_fancy_gliss(0.5),
            evans.make_fancy_gliss(0.6),
            evans.make_fancy_gliss(0.7),
            evans.make_fancy_gliss(0.8),
            evans.make_fancy_gliss(0.9),
            evans.make_fancy_gliss(1),
            evans.make_fancy_gliss(1.1),
            evans.make_fancy_gliss(1.2),
            evans.make_fancy_gliss(1.3),
            evans.make_fancy_gliss(1.4),
            evans.make_fancy_gliss(1.5),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    abjad.slur,
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 15)),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fmp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0, 8, -1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="poco tast.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="senza vib.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, 9], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    voice=score["viola voice"],
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { Baritone } """
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[(2, 1, 1, 2, 1)],
            preprocessor=None,
            nested_ratios=[
                (1, 1, 1),
            ],
            nested_vectors=[0],
            nested_period=5,
            # extract_trivial_tuplets=False,
        ),
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        [
            "b,",
            "c",
            "a,",
            "d",
            "g",
            "f'",
            "b'",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [r"\slapped", r"\override Staff.NoteHead.no-ledgers = ##t"],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [r"\revert-noteheads", r"\revert Staff.NoteHead.no-ledgers"],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    abjad.beam,
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([2, 3]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 3, -1]),
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
        padding=12,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(
        evans.talea([-9, 1, 2, -5, 1, 2, -100], 32),
    ),
    evans.PitchHandler(["f'''", "b''", "d'''", "e'''"]),
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (
                    -2,
                    1,
                    1,
                    1,
                    1,
                ),
                (-1,),
                (
                    1,
                    2,
                    1,
                    1,
                ),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            1,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    voice=score["baritonesaxophone voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(
        evans.talea([1, 1, -1, 4, 4, -100], 16),
    ),
    trinton.rewrite_meter_command(),
    voice=score["baritonesaxophone voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.PitchHandler(
        [
            "f",
            "g",
            "e",
            "d",
            "f",
            "g",
            "d'",
            "a'",
            "b''",
            "g''",
            "cqs'",
            "cqs'",
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
        selector=trinton.select_logical_ties_by_index(
            [0, -3], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("f"),
            abjad.Dynamic("p"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 7, 8, 9, 10], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["baritonesaxophone voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([-1, 2, 1, -100], 16)),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.continuous_glissando(zero_padding=True, invisible_center=True),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_leaves_by_index([0]),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([1], pitched=True)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.transparent = ##t", site="before"
            ),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, 2, 2, -1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="sponge on body",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    evans.RhythmHandler(
        evans.talea([1000], 8),
    ),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="e'",
                repeating_ratio="7/6",
                number_of_divisions=3,
                scale_degree=3,
            ),
        ],
    ),
    trinton.noteheads_only(),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.logical_ties(all_except_first=True)
    ),
    trinton.change_lines(lines=5, clef="treble", invisible_barlines=False),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.RhythmHandler(
        evans.talea([3], 16),
    ),
    abjad.beam,
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="e'",
                repeating_ratio="7/6",
                number_of_divisions=3,
                scale_degree=3,
            ),
        ],
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.pleaves(exclude=[0]),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 11)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(exclude=[-1]), zero_padding=True
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(), zero_padding=True, invisible_center=True
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(0.3),
            evans.make_fancy_gliss(0.4),
            evans.make_fancy_gliss(0.5),
            evans.make_fancy_gliss(0.7),
            evans.make_fancy_gliss(0.9),
            evans.make_fancy_gliss(1.1),
            evans.make_fancy_gliss(1.2),
            evans.make_fancy_gliss(1.3),
            evans.make_fancy_gliss(1.4),
            evans.make_fancy_gliss(1.5),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    abjad.slur,
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 15)),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fmp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0, 11, -1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="poco tast.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="senza vib.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, 9], pitched=True),
        padding=10,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    voice=score["cello voice"],
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 1, -1], 8)),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.continuous_glissando(zero_padding=True, invisible_center=True),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before"),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 1, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="rub palms on soundboard",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3,
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
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 2, 2, 3, 1)])),
    evans.PitchHandler(
        pitch_list=[
            "b'",
            "g'",
            "c''",
            "a'",
            "b'",
            "f''",
            "c'",
        ]
    ),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    library.contour_staff(clef="harp strings"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [r"\slapped", r"\override Staff.NoteHead.no-ledgers = ##t"],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [r"\revert-noteheads", r"\revert Staff.NoteHead.no-ledgers"],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="newspaper strings",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9,
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
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 3, -1], pitched=True),
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[
                (
                    -2,
                    2,
                    -1,
                    1,
                    -1,
                )
            ],
            # preprocessor=trinton.fuse_preprocessor((2,)),
            nested_ratios=[
                (-1, 1, 1),
                (1, 2),
            ],
            nested_vectors=[0],
            nested_period=1,
            # extract_trivial_tuplets=False,
        ),
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(pitch_list=["b'", "a''", "e''", "b'"]),
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
            abjad.Dynamic("f"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -4,
                2,
                -2,
                1,
                1,
                1,
                1,
            ],
            32,
        )
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -3,
                2,
                2,
                2,
                2,
                1,
            ],
            32,
        )
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(
        evans.talea([-1, 1, 1, -1, 4, 4, -1000], 16, extra_counts=[1, 0])
    ),
    trinton.rewrite_meter_command(),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 1000)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.PitchHandler(
        [
            "d'",
            "e'",
            "f'",
            "e'",
            "f'",
            "a''",
            "f''",
            "g''",
            "f''",
            "a''",
            "f''",
            "b'",
            "ef,",
            "ef,",
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
            abjad.LilyPondLiteral(
                [
                    r"\revert Staff.NoteHead.no-ledgers",
                    r"\staff-line-count 5",
                    r"\revert Staff.StaffSymbol.line-positions",
                    r"\revert Staff.Clef.stencil",
                ],
                site="before",
            ),
            abjad.Clef("bass"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -3, -2, -2], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [5, 11, 13, 15], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("f"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 4, 5, 9, 10, 11, 12], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["harp voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([-1, 1, -1], 8)),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.continuous_glissando(zero_padding=True),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_leaves_by_index([0]),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.transparent = ##t", site="before"
            ),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="air",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 7)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["e'"]),
    trinton.change_lines(
        lines=5,
        selector=trinton.select_leaves_by_index([0]),
        clef="treble",
        invisible_barlines=False,
    ),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("fp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 11)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ]
        )
    ),
    evans.PitchHandler(["e'"]),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("<"), abjad.StartHairpin(">")]),
        selector=trinton.pleaves(),
    ),
    abjad.slur,
    voice=score["accordion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 15)),
    evans.RhythmHandler(
        evans.talea(
            [
                7,
                5,
                4,
                3,
                1,
                1,
            ],
            16,
        )
    ),
    trinton.aftergrace_command(
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler([["e'", "fs'", "g'"], "d'", "e'", "c'", "d'", "c'", "e'", "b"]),
    trinton.noteheads_only(selector=trinton.pleaves(grace=False)),
    trinton.transparent_noteheads(selector=trinton.pleaves(grace=False, exclude=[0])),
    trinton.linear_attachment_command(
        attachments=[abjad.StopHairpin(), abjad.StartHairpin("<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 1, -1]),
    ),
    voice=score["accordion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((10,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(exclude=[-4, -3, -2, -1]), zero_padding=True
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 12)),
    trinton.continuous_glissando(zero_padding=True, invisible_center=True),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 15)),
    trinton.continuous_glissando(zero_padding=True, invisible_center=True),
    library.accelerando_trills(
        initial_width=19,
        y_scale=1.5,
        speed_factor=0.9,
        thickness=0.005,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        accordion_markup=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    \column {
                        \line {
                            "trilling between notated pitch and random adjacent diads"
                        }
                        \line {
                            "maintaining basic chord shape through glissando"
                        }
                    }
                }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["accordion 1 voice"],
)

# piano rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1, 1, 1),
                (1, 1, 1),
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
                (1, 1, 1),
                (1, 1, 1),
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
                (1, 1, 1, 1),
                (
                    1,
                    1,
                    1,
                ),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(),
    evans.PitchHandler(
        [
            "b",
            "d'",
            "e'",
            "a'",
            "e'",
            "d'",
            "b",
            "d'",
            "b",
            "d'",
            "e'",
            "gs'",
            "e'",
            "d'",
            "b",
            "d'",
            "bf",
            "d'",
            "e'",
            "gs'",
            "e'",
            "d'",
            "bf",
            "d'",
        ]
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                4,
                6,
                10,
                12,
                16,
                18,
                20,
                23,
            ]
        )
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            6,
            6,
            12,
            6,
            3,
            3,
            6,
        ),
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 7)),
    trinton.rewrite_meter_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    trinton.octavation(
        octave=-1, selector=trinton.select_leaves_by_index([0, 1, 2], pitched=True)
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([3], pitched=True),
    ),
    trinton.vertical_accidentals(
        selector=trinton.select_leaves_by_index([11, 13], pitched=True),
    ),
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
                3,
                6,
                7,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index(
            [
                15,
                16,
                22,
                23,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                3,
                5,
                7,
                9,
                10,
                13,
                14,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 7, 10, 14, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="mute w/ styrofoam",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(
        evans.talea(
            [
                -3,
                4,
                4,
                -4,
                4,
                4,
                -4,
            ],
            16,
        ),
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            ["a'", "bf'", "d''", "fs''", "a''"],
            ["g'", "c''", "e''", "a''"],
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio(direction=abjad.UP), abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (11, 15)),
#     evans.RhythmHandler(
#         evans.tuplet(
#             [
#                 (1, 1, 1),
#                 (1, 1, 1),
#                 (
#                     1,
#                     1,
#                     1,
#                     1,
#                     1,
#                 ),
#                 (1, 1, 1),
#                 (1, 1, 1),
#                 (
#                     1,
#                     1,
#                     1,
#                     1,
#                     1,
#                     1,
#                     1,
#                 ),
#                 (1, 1, 1, 1),
#                 (
#                     1,
#                     1,
#                     1,
#                 ),
#             ]
#         )
#     ),
#     rmakers.rewrite_dots,
#     trinton.respell_tuplets_command(),
#     trinton.rewrite_meter_command(),
#     evans.PitchHandler(
#         [
#             "e'",
#             "d'",
#             "b",
#             "d'",
#             "b",
#             "d'",
#             "e'",
#             "gs'",
#             "e'",
#             "d'",
#             "b",
#             "d'",
#             "bf",
#             "d'",
#             "e'",
#             "gs'",
#             "e'",
#             "d'",
#             "bf",
#             "d'",
#             "b",
#             "d'",
#             "e'",
#             "a'",
#         ]
#     ),
#     trinton.force_rest(
#         selector=trinton.select_logical_ties_by_index([3, 6, 9, 16, 20, -1])
#     ),
#     trinton.octavation(
#         octave=2, selector=trinton.select_logical_ties_by_index([0, 1, 2], pitched=True)
#     ),
#     trinton.octavation(
#         octave=1, selector=trinton.select_logical_ties_by_index([3, 4], pitched=True)
#     ),
#     trinton.octavation(
#         octave=-1,
#         selector=trinton.select_logical_ties_by_index([9, 10, 11, 12], pitched=True),
#     ),
#     trinton.octavation(
#         octave=-2,
#         selector=trinton.select_logical_ties_by_index(
#             [13, 14, 15, 16, 17], pitched=True
#         ),
#     ),
#     trinton.attachment_command(
#         attachments=[
#             abjad.Clef("bass"),
#             abjad.LilyPondLiteral(
#                 r"\once \override Staff.Clef.X-extent = #'(3.5 . 3.5)"
#             ),
#         ],
#         selector=trinton.select_logical_ties_by_index(
#             [
#                 9,
#             ],
#             first=True,
#             pitched=True,
#         ),
#     ),
#     trinton.vertical_accidentals(
#         selector=trinton.select_leaves_by_index([-4], pitched=True),
#     ),
#     trinton.linear_attachment_command(
#         attachments=cycle(
#             [
#                 abjad.StartBeam(),
#                 abjad.StopBeam(),
#             ]
#         ),
#         selector=trinton.select_logical_ties_by_index(
#             [3, 4, 5, 6, 7, 8, 9, 12, 13, 15, 16, -1],
#             pitched=True,
#             first=True,
#         ),
#     ),
#     trinton.linear_attachment_command(
#         attachments=cycle(
#             [
#                 abjad.StartSlur(),
#                 abjad.StopSlur(),
#             ]
#         ),
#         selector=trinton.select_logical_ties_by_index(
#             [0, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 15, 16, -1], first=True, pitched=True
#         ),
#     ),
#     trinton.change_notehead_command(
#         notehead="cross",
#         selector=trinton.pleaves(),
#     ),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.Dynamic("p"),
#             abjad.Dynamic("mf"),
#             abjad.Dynamic("pp"),
#             abjad.Dynamic("p"),
#             abjad.Dynamic("mp"),
#             abjad.Dynamic("pp"),
#             abjad.StartHairpin("<"),
#             abjad.Dynamic("mf"),
#         ],
#         selector=trinton.select_logical_ties_by_index(
#             [0, 1, 2, 5, 7, 9, 9, 13], first=True, pitched=True
#         ),
#     ),
#     trinton.hooked_spanner_command(
#         string=trinton.boxed_markup(
#             string="mute w/ styrofoam",
#             # column="\center-column",
#             # font_name="Bodoni72 Book",
#             fontsize=-1,
#             string_only=True,
#         ),
#         selector=trinton.select_leaves_by_index([0, -1], pitched=True),
#         padding=9,
#         direction=None,
#         right_padding=2,
#         full_string=True,
#         style="dashed-line-with-hook",
#         hspace=None,
#         command="",
#         tag=None,
#         tweaks=None,
#     ),
#     voice=score["piano 1 voice"],
#     preprocessor=trinton.fuse_sixteenths_preprocessor(
#         (
#             12,
#             3,
#             3,
#             6,
#             3,
#             3,
#         ),
#     ),
# )

# piano lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0]),
        invisible_barlines=False,
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(evans.talea([-1, 1, -10, 2, -8, 2, -2, 2, -2 - 1000], 16)),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato"), abjad.Dynamic("ff")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="lid slam",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(
        evans.talea(
            [
                -3,
                4,
                4,
                4,
            ],
            16,
        ),
    ),
    trinton.rewrite_meter_command(),
    trinton.change_lines(
        lines=5,
        clef="bass",
        selector=trinton.select_leaves_by_index([0], pitched=True),
        invisible_barlines=False,
    ),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index([-1], first=True, pitched=True),
        invisible_barlines=False,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            ["g,", "c", "e", "a"],
            ["a,", "bf,", "d", "fs", "a"],
        ],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Arpeggio(direction=abjad.DOWN),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, exclude=[-1]),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_logical_ties_by_index([-1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.transparent = ##t", site="before"
            ),
        ],
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, first=True),
    ),
    voice=score["piano 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    evans.RhythmHandler(evans.talea([1, -100], 8)),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato"), abjad.Dynamic("ff")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 15)),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [1, 13, 18, -1],
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.SustainPedalLineSpanner.staff-padding = #'10",
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([18]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="lid slam",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([8, -1], pitched=True),
        padding=4,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    voice=score["piano 2 voice"],
)

# electronics

for voice_name in ["harp voice", "baritonesaxophone voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (4,)),
        evans.RhythmHandler(rmakers.note),
        trinton.transparent_noteheads(selector=trinton.pleaves()),
        trinton.noteheads_only(),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 4)),
        trinton.linear_attachment_command(
            attachments=[
                trinton.boxed_markup(
                    string="Gran ON",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
            direction=abjad.UP,
        ),
        voice=score[voice_name],
    )

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="dotted quarter",
                tempo=50,
                padding=10,
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
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="after")],
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
    lambda _: trinton.select_target(_, (12, 14)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
        selector=trinton.select_leaves_by_index([0, 1, 2]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# beautification

trinton.remove_redundant_time_signatures(score=score)

trinton.fill_empty_staves_with_skips(voice=score["piano 2 voice"])

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/01",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/waidan_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
