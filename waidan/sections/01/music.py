import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones
from waidan import library
from itertools import cycle

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
        # ametric
        (15, 8),
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
        selector=trinton.select_leaves_by_index([0, -10], pitched=True),
        padding=6,
        direction=None,
        right_padding=-1,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                4,
                4,
                1,
                1,
                6,
                2,
                2,
                1,
                2,
                6,
                7,
                4,
                1,
                1,
                1,
                1,
                1,
            ],
            32,
        ),
    ),
    evans.PitchHandler(
        [
            "f'",
            "a'",
            "e'",
            "f'",
            "c'",
            "a'",
            "e'",
            "g'",
            "d'",
            "e'",
            "c'",
            "d'",
            "a",
            "c'",
            "a",
            "b",
            "g",
            "a",
            "f",
            "g",
            "c",
            "d",
        ]
    ),
    trinton.noteheads_only(),
    trinton.continuous_glissando(invisible_center=True, zero_padding=True),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 16)),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="( poco tast. )",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="tasto poss.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=6,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
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

for voice_name in ["baritonesaxophone voice", "harp voice", "piano 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (5, 9)),
        evans.RhythmHandler(evans.talea([-4, 1, 1, -6, 3, 3, -4, 4, 4], 16)),
        trinton.aftergrace_command(
            slash=True,
            selector=trinton.patterned_tie_index_selector(
                [1], 2, pitched=True, last=True, grace=False
            ),
        ),
        voice=score[voice_name],
        beam_meter=True,
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.RhythmHandler(evans.talea([-2, 4, 4, -8, 3, 3, -100], 16)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.patterned_tie_index_selector(
            [1], 2, pitched=True, last=True, grace=False
        ),
    ),
    voice=score["baritonesaxophone voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 15)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { Soprano } """
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    evans.PitchHandler(["a'"]),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("o<"), abjad.StartHairpin(">o")]),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Env ON",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
            trinton.boxed_markup(
                string="Env OFF",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_logical_ties_by_index([6, 8], first=True, pitched=True),
        direction=abjad.UP,
    ),
    trinton.continuous_glissando(
        zero_padding=True, invisible_center=True, no_ties=True
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(grace=True)),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([8, 9], pitched=True)
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -23,
                8,
                7,
                6,
                3,
                1,
                1,
                1,
                4,
                1,
                2,
                3,
                1,
                1,
                1,
                5,
                1,
                1,
                1,
                6,
                1,
                1,
            ],
            32,
        ),
    ),
    evans.PitchHandler(
        ["c'''", "e'''", "b''", "f", "d", "e", "b,", "c", "a", "b", "b'"]
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 7, 7, -1], pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { Baritone } """
            ),
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
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="secco slap",
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
            fontsize=0,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, 9], pitched=True),
        padding=10,
        direction=None,
        right_padding=-2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    evans.RhythmHandler(
        evans.talea(
            [
                6,
                2,
                2,
                1,
                1,
                2,
                6,
                7,
                4,
                1,
                1,
                1,
                1,
                1,
                4,
                4,
                4,
                1,
                1,
            ],
            32,
        ),
    ),
    evans.PitchHandler(
        [
            "g'",
            "d'",
            "f'",
            "c'",
            "e'",
            "b",
            "d'",
            "g",
            "a",
            "f",
            "g",
            "e",
            "f",
            "d",
            "e",
            "c",
            "f",
            "d",
            "f",
            "d",
            "f",
            "b,",
            "d",
            "c",
        ]
    ),
    trinton.noteheads_only(),
    trinton.continuous_glissando(invisible_center=True, zero_padding=True),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override NoteHead.no-ledgers = ##t", site="before"
            ),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.LilyPondLiteral(r"\revert NoteHead.no-ledgers", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="( poco tast. )",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="tasto poss.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=4,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
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
    library.contour_staff(clef="harp strings", reset=True),
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
    lambda _: trinton.select_target(_, (5, 9)),
    evans.PitchHandler([["e,,", "ds,,"]]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("o<"), abjad.StartHairpin(">o")]),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        zero_padding=True, invisible_center=True, no_ties=True
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(grace=True)),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([8, 9], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="scrape strings w/ plastic card",
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
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(evans.talea([-1, 4, 4, -1000], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            [
                "e,",
                "ds,,",
            ]
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["harp voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 15)),
    evans.RhythmHandler(evans.talea([4, 4, -2, 1, 1, -3, 2, 2, -100], 16)),
    trinton.rewrite_meter_command(),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.patterned_tie_index_selector(
            [1], 2, pitched=True, grace=False
        ),
    ),
    evans.PitchHandler([["e,,", "ds,,"]]),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("o<"), abjad.StartHairpin(">o")]),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        zero_padding=True, invisible_center=True, no_ties=True
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(grace=True)),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([3, -3, -1], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="scrape strings w/ plastic card",
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
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["harp voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 20), (1, 8), (1, 32)],
            [(1, 8), (1, 20), (1, 32)],
        )
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        )
    ),
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.force_rest(
        selector=trinton.select_leaves_by_index([1, 4, 8, 11], pitched=True)
    ),
    evans.PitchHandler(["d'", "f'", "g'", "b'", "b'", "b'", "e''", "f''", "g''"]),
    trinton.invisible_rests(),
    trinton.invisible_tuplet_brackets(),
    library.contour_staff(clef="harp strings", reset=False),
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
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 3, 6, -1], pitched=True),
    ),
    trinton.attachment_command(
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
    voice=score["harp voice"],
    preprocessor=trinton.fuse_thirty_seconds_preprocessor((30, 15, 15)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    evans.RhythmHandler(evans.talea([20, 9, 1], 16)),
    evans.PitchHandler([["ds'", "fs"], "f", "eqs"]),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        # color=False,
        # sustained=False,
        # visible_grace=False,
        # on_beat_graces=False,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], pitched=True, grace=False
        ),
        zero_padding=True,
    ),
    trinton.noteheads_only(),
    library.accelerando_trills(
        initial_width=0.2,
        y_scale=1.5,
        speed_factor=-0.8,
        thickness=0.005,
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        accordion_markup=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    \column {
                        \line {
                            "( sim. )"
                        }
                    }
                }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">o"),
            trinton.make_custom_dynamic("f mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, -1], pitched=True, grace=False, first=True
        ),
    ),
    voice=score["accordion 1 voice"],
)

# piano rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.accelerando([(1, 20), (1, 8), (1, 32)])),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        )
    ),
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.force_rest(
        selector=trinton.select_leaves_by_index([3, 6, 8], pitched=True)
    ),
    evans.PitchHandler(["f'''", "e'''", "g'''", "d'''"]),
    trinton.change_notehead_command(notehead="highest", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")], selector=trinton.pleaves()
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="mute w/ hand",
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 5, -1]),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((1, 1000)),
)

for voice_name in ["piano 1 voice", "piano 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (10, 11)),
        evans.RhythmHandler(evans.talea([-1, 4, 4, -1000], 16)),
        trinton.rewrite_meter_command(),
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        ),
        voice=score[voice_name],
        beam_meter=True,
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.PitchHandler(
        [
            [
                "a''",
                "fs''",
                "d''",
                "bf'",
                "a'",
            ],
            ["a''", "e''", "c''", "g'"],
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio(direction=abjad.UP)],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[(-1,), (1, 2, 1, 1, 2)],
            preprocessor=None,
            nested_ratios=[
                (1, 1, 1),
            ],
            nested_vectors=[-1],
            nested_period=5,
            # extract_trivial_tuplets=False,
        ),
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.invisible_rests(),
    evans.PitchHandler(
        [
            "d'''",
            "g'''",
            "e'''",
            "f'''",
        ]
    ),
    trinton.change_notehead_command(notehead="highest", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")], selector=trinton.pleaves()
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="mute w/ hand",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10,
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
            abjad.StartBeam(),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.StopBeam(),
        ],
        selector=trinton.select_leaves_by_index([0, 3, 4, -1], pitched=True),
    ),
    trinton.attachment_command(
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
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 3, 3, -1], pitched=True),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((24, 6)),
)

# piano lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.PitchHandler(["e'"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">"), abjad.LaissezVibrer()],
        selector=trinton.pleaves(),
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    evans.PitchHandler(["ds,,"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("o<"), abjad.StartHairpin(">o")]),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        zero_padding=True, invisible_center=True, no_ties=True
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(grace=True)),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([8, 9], pitched=True)
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="scrape strings w/ plastic card",
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
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.PitchHandler(
        [
            ["a", "e", "c", "g,"],
            [
                "a",
                "fs",
                "d",
                "bf,",
                "a,",
            ],
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio(direction=abjad.DOWN)],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["piano 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
    evans.RhythmHandler(evans.talea([3, 3, 2, 2, -100], 16)),
    trinton.rewrite_meter_command(),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.patterned_tie_index_selector(
            [1], 2, pitched=True, grace=False
        ),
    ),
    evans.PitchHandler(["ds,,"]),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("o<"), abjad.StartHairpin(">o")]),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([0, 1, 2]),
        zero_padding=True,
        invisible_center=True,
        no_ties=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([3, 4, 5]),
        zero_padding=True,
        invisible_center=True,
        no_ties=True,
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(grace=True)),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="scrape strings w/ plastic card",
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
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["piano 2 voice"],
    beam_meter=True,
)

for measures in [(2, 9), (13, 14)]:
    trinton.make_music(
        lambda _: trinton.select_target(_, measures),
        trinton.linear_attachment_command(
            attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        ),
        voice=score["piano 2 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    evans.RhythmHandler(evans.talea([-21, 3, -6], 16)),
    evans.PitchHandler(
        [["a,,", "g,,", "f,,", "e,,", "d,,", "c,,"]],
    ),
    trinton.duration_line(),
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
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="mallets on low strings",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([3, -1]),
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
    trinton.aftergrace_command(
        invisible=True, selector=trinton.select_leaves_by_index([-1])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([3, -1]),
    ),
    voice=score["piano 2 voice"],
)

# electronics

for voice_name in ["harp voice", "baritonesaxophone voice", "piano 1 voice"]:
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
                note_value="dotted quarter", tempo=50, padding=11, hspace=0.5
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
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
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/01",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/waidan-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
