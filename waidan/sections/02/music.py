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
        (5, 8),
    ],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
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

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 20), (1, 8), (1, 32)],
        )
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                -1,
            ]
        )
    ),
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    evans.PitchHandler(["c''", "d''", "g''", "f'''"]),
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
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
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
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Remove mouthpiece from Soprano, continue playing Baritone" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.accelerando(
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
    evans.PitchHandler(["f'''", "g''", "d''", "c''", "a'"]),
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
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 3)),
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    evans.RhythmHandler(
        evans.talea(
            [
                -1,
                2,
                2,
                -5,
                2,
                2,
                -2,
            ],
            16,
        )
    ),
    evans.PitchHandler(
        [
            fractions.Fraction(64, -3),
        ]
    ),
    trinton.force_accidentals_command(
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        )
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, grace=False
        ),
        # color=False,
        sustained=True,
        # visible_grace=False,
        # on_beat_graces=False,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [2, 3], pitched=True, grace=False
        ),
        # color=False,
        sustained=True,
        # visible_grace=False,
        # on_beat_graces=False,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [4, 5], pitched=True, grace=False
        ),
        # color=False,
        sustained=True,
        # visible_grace=False,
        # on_beat_graces=False,
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartHairpin("o<"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.patterned_tie_index_selector([1], 3, first=True, pitched=True),
    ),
    voice=score["cello voice"],
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
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
    library.contour_staff(clef="harp strings", reset=False, force_clef=False),
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
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
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
        padding=6,
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
    voice=score["harp voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 2)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.hooked_spanner_command(
        string="\somatic-position-one",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 0"),
        ],
    ),
    voice=score["harp voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(evans.talea([1000], 8)),
    evans.PitchHandler(["d,"]),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        # color=False,
        # sustained=False,
        # visible_grace=False,
        # on_beat_graces=False,
    ),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 2, -1]),
    ),
    voice=score["accordion 2 voice"],
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1, 1, 2, 3, 4, 5), (-1,)])),
    evans.PitchHandler(["f'''", "e'''", "g'''", "d'''"]),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
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
        padding=13,
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
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.hooked_spanner_command(
        string="\somatic-position-one",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 0.5"),
        ],
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (
                    5,
                    4,
                    3,
                    2,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
            ]
        )
    ),
    evans.PitchHandler(["f'''", "e'''", "g'''", "d'''"]),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
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
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5,)),
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
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
            abjad.LilyPondLiteral(
                r"\once \override TimeSignature.X-offset = -6.5", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (16,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)",
#                 site="before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)

# breaks

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
            ]
        ),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
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
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/02",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
