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
    [(8, 4), (3, 4), (5, 4), (1, 4)],
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(6, 4, 4, 5, 1)])),
    trinton.aftergrace_command(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(["b''", "b''", "b''", "b''", "b''", "d''"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 2, 3, 3, -1], first=True, pitched=True
        ),
    ),
    trinton.continuous_glissando(no_ties=True, zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.X-extent = #'(0 . 0)", site="before"
            )
        ],
        selector=trinton.pleaves(),
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.tuplet([(3, -1, 3, -1, 3, -1, 3, -1, 3, -1)])),
    trinton.aftergrace_command(),
    evans.PitchHandler(["b''", "f''", "g''", "b'", "e''", "e'", "g'", "a", "c'", "e"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 2, -1], first=True, pitched=True
        ),
    ),
    trinton.continuous_glissando(no_ties=True, zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.X-extent = #'(0 . 0)", site="before"
            )
        ],
        selector=trinton.pleaves(),
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(3, 3, 4, 2)])),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    evans.PitchHandler(["a", "d", "b", "e'''", "c'''"]),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("mf")],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(no_ties=True, zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.X-extent = #'(0 . 0)", site="before"
            )
        ],
        selector=trinton.pleaves(),
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    voice=score["baritonesaxophone voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.tuplet([(1, 3, 1)])),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    evans.PitchHandler(["g''", "a''", "c'", "d'"]),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
    ),
    trinton.continuous_glissando(no_ties=True, zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.X-extent = #'(0 . 0)", site="before"
            )
        ],
        selector=trinton.pleaves(),
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    voice=score["baritonesaxophone voice"],
)

# globals


trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
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
                r"- \tweak padding #17.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

for measure in [1, 2, 3, 4]:
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
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/07",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
