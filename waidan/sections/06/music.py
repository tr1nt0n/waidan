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
        (2, 4),
        (3, 4),
        (4, 10),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
    ],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.tuplet([(1,), (4, 1), (-1,)])),
    evans.PitchHandler(["d''", "a''", "e''"]),
    library.change_viola_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override NoteHead.X-extent = #'(0 . 0)",
                    r"\override NoteHead.transparent = ##t",
                    r"\override NoteHead.no-ledgers = ##t",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert NoteHead.X-extent",
                    r"\revert NoteHead.transparent",
                    r"\revert NoteHead.no-ledgers",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BendAfter(2),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.Dynamic("mp"), abjad.Dynamic("mf")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.spanner_command(
        strings=[
            r"135°",
            r"45°",
            r"135°",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1, 1, 2, 2, -1], first=True),
        style="solid-line-with-arrow",
        padding=6,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=False,
        command="Two",
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="3/4 spazzolato",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=6,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        )
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

# piano rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.aftergrace_command(
        slash=True, selector=trinton.select_logical_ties_by_index([0])
    ),
    evans.PitchHandler(["f''"]),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Stem.direction = #DOWN", site="before"
            )
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1, 1),
                (2, 2, 1),
                (-1,),
            ]
        )
    ),
    evans.PitchHandler(["g,", "f''"]),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ],
        ),
        selector=trinton.pleaves(exclude=[0]),
    ),
    library.manual_beam_positions(positions=(0, 0)),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.patterned_leaf_index_selector([1], 2, pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.patterned_leaf_index_selector([0], 2, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartPianoPedal(), abjad.StopPianoPedal()]),
        selector=abjad.select.leaves,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(-2, 1, 1)])),
    evans.PitchHandler(
        [
            "f''",
            "g,",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"""\once \override TupletBracket.stencil =
                         #(lambda (grob)
                            (let* ((pos (ly:grob-property grob 'positions))
                                   (dir (ly:grob-property grob 'direction))
                                   (new-pos (if (= dir 1)
                                                (max (car pos)(cdr pos))
                                                (min (car pos)(cdr pos)))))
                              (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
                              (ly:tuplet-bracket::print grob)))""",
                    r"\once \override TupletBracket.padding = #-1",
                ],
                site="before",
            )
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ],
        ),
        selector=trinton.pleaves(),
    ),
    library.manual_beam_positions(positions=(0, 0)),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.patterned_leaf_index_selector([0], 2, pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.patterned_leaf_index_selector([1], 2, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("fff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="Chains",
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
    voice=score["piano 1 voice"],
)

# piano lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1)])),
    evans.PitchHandler(
        [["a,,", "g,,", "f,,", "e,,", "d,,", "c,,"]],
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.change_lines(lines=5, clef="bass", invisible_barlines=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.tremolo_command(),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("fffp"), abjad.StartHairpin(">o")],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([-1])
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
        padding=7.5,
        direction=None,
        right_padding=1,
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

# globals

# for measure in [1]:
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 trinton.boxed_markup(
#                     string="ALL SIT",
#                     # column="\center-column",
#                     # font_name="Bodoni72 Book",
#                     fontsize=4,
#                     string_only=False,
#                 ),
#                 r"- \tweak padding #23",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#     ),
#     trinton.attachment_command(
#         attachments=[
#             library.return_metronome_markup(
#                 note_value="quarter",
#                 tempo=54,
#                 padding=16,
#                 site="closing",
#                 metric_modulation=abjad.MetricModulation(
#                     left_rhythm=abjad.Tuplet("3:2", "c'2"),
#                     right_rhythm=abjad.Note("c'4"),
#                 )
#                 # hspace=-3
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )
#
# for measure in [
#     2,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(
#                     r"\once \override TimeSignature.X-offset = -6.5", site="before"
#                 ),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (3,)),
#     trinton.attachment_command(
#         attachments=[
#             library.return_metronome_markup(
#                 note_value="quarter",
#                 tempo=("67", "1", "2"),
#                 padding=16,
#                 site="closing",
#                 metric_modulation=abjad.MetricModulation(
#                     left_rhythm=abjad.Tuplet("5:4", "c'8"),
#                     right_rhythm=abjad.Note("c'8"),
#                 )
#                 # hspace=-3
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (4,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override TimeSignature.X-offset = -6.5", site="before"
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     trinton.attachment_command(
#         attachments=[
#             library.return_metronome_markup(
#                 note_value="quarter",
#                 tempo=("84", "3", "8"),
#                 padding=17.5,
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (5,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 trinton.boxed_markup(
#                     string="ALL STAND",
#                     # column="\center-column",
#                     # font_name="Bodoni72 Book",
#                     fontsize=4,
#                     string_only=False,
#                 ),
#                 r"- \tweak padding #19",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#     ),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override TimeSignature.Y-offset = 15", site="before"
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (8,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 trinton.boxed_markup(
#                     string="ALL SIT",
#                     # column="\center-column",
#                     # font_name="Bodoni72 Book",
#                     fontsize=4,
#                     string_only=False,
#                 ),
#                 r"- \tweak padding #17",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )

for measure in [1]:
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
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

# for measure in [6, 8]:
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
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/06",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
