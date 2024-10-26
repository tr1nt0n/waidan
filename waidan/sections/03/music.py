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
        (3, 4),
        (9, 8),
        (3, 4),
        (1, 8),
    ],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([7, 2, -1000], 4)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
    ),
    evans.PitchHandler(["b'", "b'", ["c''", "a'"]]),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False),
        # color=False,
        # sustained=False,
        # visible_grace=False,
        # on_beat_graces=False,
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
        peaks=[0, 5, 5],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[1, 5, 5],  # must be greater than 1
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
    library.contour_staff(
        clef=None,
        reset=True,
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        force_clef=False,
    ),
    trinton.change_lines(
        lines=4,
        selector=trinton.select_leaves_by_index(
            [
                1,
            ],
            grace=False,
            pitched=True,
        ),
        invisible_barlines=False,
    ),
    library.string_clef(
        selector=trinton.select_leaves_by_index([1, 1, -1], grace=False, pitched=True)
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
        # tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=["XFB", "legno molto pont.", "crine dietro pont."],
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([2, -1], pitched=True),
        padding=6,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        # tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("mf")],
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True
        ),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[
                (1, 1, 1, 1, 1, 1, 1),
                (1,),
            ],
            preprocessor=None,
            nested_ratios=[
                (1, 1),
                (1, 1, 1, 1, 1, 1, 1),
                (1, 1, 1),
                (1, 1),
                (1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
            ],
            nested_vectors=[0, 1, 2, 3, 4, 5, 6],
            nested_period=8,
            # extract_trivial_tuplets=False,
        ),
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.invisible_tuplet_brackets(selector=trinton.select_tuplets_by_index([0])),
    evans.PitchHandler(
        [
            "e'''",
            "b''",
            "g''",
            "f''",
            "d''",
            "b'",
            "e'",
            "d'",
            "b",
            "f",
            "a",
            "e",
            "g'",
            "d''",
            "f",
            "a,",
            "b,",
            "e",
            "c",
            "e",
            "c",
            "f",
            "a,",
            "b,",
            "e",
            "c",
            "e",
            "a,",
            "e",
            "d",
            "a",
            "g",
            "d'",
            "c'",
            "b'",
            "f'",
            "e'",
            "b'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, -2]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([19, 20, 26, 27]),
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
        selector=trinton.select_leaves_by_index([0, -2], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 9, 11, 13, 14, 20, 23, 23, 27, 30], pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="secco slap",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -2], pitched=True),
        padding=13.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    library.multiphonic_trem_noteheads(
        selector=trinton.select_leaves_by_index([-1]), preprolated=True
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("|>o"),
        ],
        selector=trinton.select_leaves_by_index([-2, -1, -1], pitched=True),
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
                r"- \tweak padding #13",
            ),
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
        selector=trinton.select_leaves_by_index([0, -2]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((6, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["baritonesaxophone voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
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
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            pitched=True,
        ),
        peaks=[0, 5, 5],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[1, 5, 5],  # must be greater than 1
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
    library.contour_staff(
        clef=None,
        reset=True,
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        force_clef=False,
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
        # tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
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
        selector=trinton.select_leaves_by_index([0, -1]),
        direction=abjad.UP,
    ),
    voice=score["cello voice"],
)

# globals

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             library.return_metronome_markup(
#                 note_value="eighth",
#                 tempo=70,
#                 padding=11.5,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (4,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override TimeSignature.X-offset = -6.5",
#                 site="before"
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE")
#     ),
#     voice=score["Global Context"],
# )

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

trinton.fermata_measures(
    score=score,
    measures=[5],
    fermata="long-fermata",
    voice_names=None,
    font_size=12,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-10,
    extra_offset=2.5,
    tag=None,
)

# breaks

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3,)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="after")],
#         selector=trinton.select_leaves_by_index(
#             [
#                 0,
#             ]
#         ),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (12, 14)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
#         selector=trinton.select_leaves_by_index([0, 1, 2]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (15,)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="after")],
#         selector=trinton.select_leaves_by_index(
#             [
#                 0,
#             ]
#         ),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# beautification

trinton.remove_redundant_time_signatures(score=score)

for voice_name in library.all_voice_names:
    trinton.fill_empty_staves_with_skips(voice=score[voice_name])

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/03",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
