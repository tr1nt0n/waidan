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
        (8, 4),
        (4, 8),
        (4, 8),
        (4, 8),
        (5, 8),
        (8, 4),
        (1, 8),
        (7, 8),
        (7, 8),
        (7, 8),
        (3, 8),
        (1, 8),
        (3, 8),
        (7, 8),
        (7, 8),
        (7, 8),
        (1, 8),
    ],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
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
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.logical_ties(all_except_first=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("mp")],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="XFB, molto pont.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="flaut., ord.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=5.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 5)),
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
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
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
                4,
                7,
                9,
                13,
                16,
                21,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([11, 12], pitched=True),
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
            [4, 6, 6, 8],
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
            [9, 10, 10, 16],
        ),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="molto tast.",
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
            [17, -1],
        ),
        style="solid-line-with-arrow",
        padding=4,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 7, 7, 10, 10, 11, 13, 14, 16, -1], first=True
        ),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
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
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.logical_ties(all_except_first=True)
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ff")],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="XFB, molto pont.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="norm., ord.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=5.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 16)),
    evans.RhythmHandler(
        evans.talea(
            [1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 2],
            32,
            extra_counts=[0, 0, 1, 0, 2, 0, -1, 0, 0, 0, -1],
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["c"]),
    evans.PitchHandler([["7/6", "5/2"]], as_ratios=True),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0])),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartBeam(),
            abjad.LilyPondLiteral(
                r"\override Accidental.transparent = ##t", site="before"
            ),
            abjad.StopBeam(),
            abjad.LilyPondLiteral(
                r"\override Accidental.transparent = ##f", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1, -1, -1]),
    ),
    # trinton.annotate_leaves_locally(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index(
            [
                9,
                10,
                13,
                14,
                19,
                20,
                25,
                26,
                33,
                34,
                40,
                41,
                45,
                46,
                50,
                51,
                55,
                56,
                60,
                61,
                64,
                65,
                71,
                72,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ffff"),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #3 \column { \line { "While playing, bare your teeth," } \line { "widen your eyes, furrow and arch your eyebrows," } \line { "and shout like a furious animal." } } } """
                ),
                r"- \tweak padding #1",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="II + III",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=16.5,
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
            string="poco pont., poco scratch, full bows as possible",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=13.5,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            6,
            3,
            3,
            4,
            4,
            4,
            4,
            3,
            3,
            3,
            3,
            4,
            4,
            4,
            4,
            3,
            3,
            3,
            3,
            4,
            4,
            4,
            4,
            3,
            3,
        )
    ),
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
    evans.PitchHandler(["dqf''"]),
    trinton.duration_line(sustained=True),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("o<"), abjad.StartHairpin(">o")]),
        selector=trinton.logical_ties(exclude=[-1], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="flz.",
                # column="\center-column",6
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="ord.",
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
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((4,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 5)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.aftergrace_command(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.spanner_command(
        strings=[r"\somatic-position-five", r"\somatic-position-four"],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 4"),
        ],
        right_padding=-6,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
    evans.PitchHandler(["dqf''"]),
    trinton.duration_line(sustained=True),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("o<"), abjad.StartHairpin(">o")]),
        selector=trinton.logical_ties(exclude=[-1], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="flz.",
                # column="\center-column",6
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="ord.",
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
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    evans.PitchHandler(
        ["e''"],
    ),
    evans.PitchHandler(["7/6"], as_ratios=True),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("mp")],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="XFB, molto pont.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="flaut., ord.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=7.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        evans.talea([-6, 16, 21, -100], 32, extra_counts=[0, 0, -1, 0, 0, 0])
    ),
    trinton.change_notehead_command(
        notehead="la", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.duration_line(sustained=True, visible_grace=True),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.transparent = ##t", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
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
        padding=6,
        direction=None,
        right_padding=1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { "" }""",
            r"\tremolo-stretto",
            r"\tremolo-largo",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 3, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 3, 3, -1], pitched=True),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 2, 2, 3, 2)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    evans.PitchHandler(
        ["e''"],
    ),
    evans.PitchHandler(["7/6"], as_ratios=True),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.change_lines(lines=5, clef="treble", invisible_barlines=False),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ff")],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="XFB, molto pont.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="norm., ord.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=7.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["cello voice"],
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.aftergrace_command(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.spanner_command(
        strings=[r"\somatic-position-two", r"\somatic-position-three"],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 8"),
        ],
        right_padding=-3,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[(2, 1), (-1,)],
            preprocessor=None,
            nested_ratios=[
                (1, 1, 1),
            ],
            nested_vectors=[0],
            nested_period=2,
            # extract_trivial_tuplets=False,
        ),
    ),
    evans.PitchHandler(
        pitch_list=[
            "b'",
            "g'",
            "d''",
            "f''",
        ]
    ),
    library.contour_staff(clef="harp strings", reset=True, force_clef=True),
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
            string="newspaper strings",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=3,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
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
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[(-1,), (1, 2)],
            preprocessor=None,
            nested_ratios=[
                (1, 1, 1),
            ],
            nested_vectors=[-1],
            nested_period=2,
            # extract_trivial_tuplets=False,
        ),
    ),
    evans.PitchHandler(
        pitch_list=[
            "f''",
            "d''",
            "g'",
            "b'",
        ]
    ),
    library.contour_staff(clef="harp strings", reset=True, force_clef=True),
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
            string="newspaper strings",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=3,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
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
        selector=trinton.select_leaves_by_index([-1]),
        direction=abjad.UP,
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 2)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([-1, 1], 1)),
    evans.PitchHandler([["e'", "ff'"]]),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="bow",
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
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string=["left hand near lower frame,", "right hand near upper frame"],
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="both hands center",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=5.5,
        tweaks=None,
        right_padding=-5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 11)),
    evans.RhythmHandler(
        evans.talea([2, -2, 2, -8], 16, extra_counts=[0, 0, 1, 1, -1, -1, 2, 2])
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=[
                        "Begin walking",
                        "towards Viola Gate.",
                        "Carry 3 stones in your cupped hands",
                        "in front of your chest.",
                    ],
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=-1,
                ),
                r"- \tweak padding #6",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="West",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        style="solid-line-with-arrow",
        padding=4.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "left foot" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-1 "right foot" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "( etc. )" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 2], pitched=True),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="South-East",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_leaves_by_index([4, 5], pitched=True),
        style="solid-line-with-arrow",
        padding=3,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="North-East",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_leaves_by_index([6, 7], pitched=True),
        style="solid-line-with-arrow",
        padding=3.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 4)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 16)),
    evans.RhythmHandler(
        evans.talea([2, -2, 2, -8], 16, extra_counts=[2, -1, -1, 1, 1, 0, 0])
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=[
                        "Leave your stones",
                        "with the Violist.",
                        "Begin walking",
                        "back to your seat.",
                    ],
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=-1,
                ),
                r"- \tweak padding #5.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=2)],
        selector=trinton.select_leaves_by_index([3, 6], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="South-West",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=3.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="North-West",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=3,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="East",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=3,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 4)),
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    evans.PitchHandler(
        [["e'", "e"]],
    ),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("mp")],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 5)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.aftergrace_command(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.spanner_command(
        strings=[r"\somatic-position-four", r"\somatic-position-five"],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 4"),
        ],
        right_padding=-6,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["accordion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    evans.PitchHandler(
        [["e'", "e"]],
    ),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ff")],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
    ),
    voice=score["accordion 1 voice"],
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.aftergrace_command(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.spanner_command(
        strings=[r"\somatic-position-three", r"\somatic-position-two"],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 8"),
        ],
        right_padding=-3,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 5)),
    evans.RhythmHandler(evans.talea([-3, 5, 6, -100], 8)),
    evans.PitchHandler([["a,,,", "b,,,", "c,,", "d,,", "e,,"]]),
    trinton.change_notehead_command(
        notehead="cluster",
    ),
    trinton.duration_line(sustained=True, visible_grace=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                2,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Articulation("sharp-articulation"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    %\hspace #-2 {
                        ( \note {2} #2 )
                    %}
                }"""
            )
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 2))],
            preselector=abjad.select.leaves,
        ),
        direction=abjad.UP,
    ),
    trinton.tremolo_command(),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 5)),
    evans.RhythmHandler(evans.talea([-3, 5, 6, -100], 8)),
    evans.PitchHandler([["a,,,", "b,,,", "c,,", "d,,", "e,,"]]),
    trinton.change_notehead_command(
        notehead="cluster",
    ),
    trinton.duration_line(sustained=True, visible_grace=True),
    trinton.change_lines(lines=5, clef="bass", invisible_barlines=False),
    trinton.attachment_command(
        attachments=[
            # abjad.Clef("bass"),
            abjad.Articulation("natural-articulation"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    %\hspace #-2 {
                        ( \note {2} #2 )
                    %}
                }"""
            )
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 2))],
            preselector=abjad.select.leaves,
        ),
        direction=abjad.UP,
    ),
    trinton.tremolo_command(),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([-1, 1], 1)),
    evans.PitchHandler(["f''"]),
    trinton.duration_line(),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.invisible_rests(),
    trinton.noteheads_only(),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=["shake Chains above strings", "( do not touch strings )"],
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11,
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
            abjad.Articulation("tremolo-articulation"),
            abjad.StartPianoPedal(),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1, -1], pitched=True),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 11)),
    evans.RhythmHandler(
        evans.talea([2, -2, 2, -8], 16, extra_counts=[0, 0, 1, 1, -1, -1, 2, 2])
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=[
                        "Begin walking",
                        "towards Viola Gate.",
                        "Carry 3 stones in your cupped hands",
                        "in front of your chest.",
                    ],
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=-1,
                ),
                r"- \tweak padding #6",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="West",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        style="solid-line-with-arrow",
        padding=4.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "right foot" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-1 "left foot" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "( etc. )" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 2], pitched=True),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="North-East",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_leaves_by_index([4, 5], pitched=True),
        style="solid-line-with-arrow",
        padding=3,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="South-East",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_leaves_by_index([6, 7], pitched=True),
        style="solid-line-with-arrow",
        padding=3.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 4)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 16)),
    evans.RhythmHandler(
        evans.talea([2, -2, 2, -8], 16, extra_counts=[2, -1, -1, 1, 1, 0, 0])
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=[
                        "Leave your stones",
                        "with the Violist.",
                        "Begin walking",
                        "back to your seat.",
                    ],
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=-1,
                ),
                r"- \tweak padding #5.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=2)],
        selector=trinton.select_leaves_by_index([3, 6], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="North-West",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=3.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="South-West",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=3,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="East",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            r"""\markup { "" }""",
        ],
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=3,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 4)),
)

# somatic movements

for voice_name in [
    "violin voice",
    "cello voice",
    "baritonesaxophone voice",
    "accordion 1 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (9, 11)),
        evans.RhythmHandler(
            evans.talea(
                [
                    7,
                ],
                16,
            )
        ),
        trinton.noteheads_only(),
        trinton.transparent_noteheads(selector=trinton.pleaves()),
        trinton.spanner_command(
            strings=[
                r"\somatic-position-one",
                r"\somatic-position-two",
                r"\somatic-position-three",
                r"\somatic-position-four",
                r"\somatic-position-five",
            ],
            selector=trinton.select_logical_ties_by_index(
                [0, 1, 1, 2, 2, 3, 3, 4], pitched=True, first=True
            ),
            style="solid-line-with-arrow",
            padding=0,
            tweaks=[
                abjad.Tweak(r"- \tweak Y-extent ##f"),
                abjad.Tweak(r"- \tweak Y-offset 4"),
            ],
            right_padding=0,
            direction=None,
            full_string=True,
            command="",
            end_hook=False,
            end_hook_style="dashed-line-with-hook",
            tag=None,
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (13, 15)),
        evans.RhythmHandler(
            evans.talea(
                [
                    6,
                    7,
                    7,
                    7,
                    7,
                    7,
                    7,
                ],
                16,
            )
        ),
        trinton.noteheads_only(),
        trinton.transparent_noteheads(selector=trinton.pleaves()),
        trinton.spanner_command(
            strings=[
                r"\somatic-position-five",
                r"\somatic-position-four",
                r"\somatic-position-three",
                r"\somatic-position-two",
                r"\somatic-position-one",
            ],
            selector=trinton.select_logical_ties_by_index(
                [0, 1, 1, 2, 2, 3, 3, 4], pitched=True, first=True
            ),
            style="solid-line-with-arrow",
            padding=0,
            tweaks=[
                abjad.Tweak(r"- \tweak Y-extent ##f"),
                abjad.Tweak(r"- \tweak Y-offset 4"),
            ],
            right_padding=0,
            direction=None,
            full_string=True,
            command="",
            end_hook=False,
            end_hook_style="dashed-line-with-hook",
            tag=None,
        ),
        voice=score[voice_name],
    )

# globals

trinton.fermata_measures(
    score=score,
    measures=[7],
    fermata="middle-fermata",
    voice_names=library.all_voice_names,
    font_size=12,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-10,
    extra_offset=2.5,
    tag=None,
)

trinton.fermata_measures(
    score=score,
    measures=[12],
    fermata="extremely-long-fermata",
    voice_names=library.all_voice_names,
    font_size=12,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-10,
    extra_offset=2.5,
    tag=None,
)

trinton.fermata_measures(
    score=score,
    measures=[17],
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (5, 6)),
#     trinton.spanner_command(
#         strings=[
#             r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } """,
#             library.return_metronome_markup(
#                 note_value="sixteenth",
#                 tempo=90,
#                 padding=0,
#                 metric_modulation=abjad.MetricModulation(
#                     left_rhythm=abjad.Tuplet("3:2", "c'8"),
#                     right_rhythm=abjad.Note("c'16"),
#                 ),
#                 site="after",
#                 hspace=None,
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=6,
#         tweaks=None,
#         right_padding=0,
#         direction=None,
#         full_string=True,
#         command="",
#         tag=None,
#     ),
#     voice=score["Global Context"],
# )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            # abjad.Markup(
            #     r"""\markup \fontsize #6 { \override #'(font-name . "Bodoni72 Book Italic") \raise #22 \with-dimensions-from \null { "Zeit zog dich in einem Bann" } }"""
            # ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Tape I ON",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #17",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text " 18.5\" " \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="eighth", tempo=70, padding=11.5, site="closing"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
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
                r"- \tweak padding #16.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
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
    lambda _: trinton.select_target(_, (6,)),
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
                r"- \tweak padding #21",
            ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Tape II ON",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #17",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text " 37\" " \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
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
                r"- \tweak padding #17.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="eighth", tempo=90, padding=11.5, site="closing", hspace=1.5
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=["ALL SIT", "( except for Pianist and Harpist )"],
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=4,
                    string_only=False,
                ),
                r"- \tweak padding #10",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=["Pianist and Harpist", "Open Viola's Gate"],
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=4,
                    string_only=False,
                ),
                r"- \tweak padding #17.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
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
                r"- \tweak padding #10",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)

for measure in [1, 6]:
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

# breaks

for measure in [2, 3, 4]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [1, 5, 6, 9, 13, 17]:

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

# for measure in [
#     1,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )

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
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/11",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="11",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
