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
    [(7, 4), (7, 4), (7, 4), (7, 4), (8, 4)],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 1, 1, 4], 4)),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index([0, 2], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"""\once \override Staff.BarLine.glyph-name = ".|:" """, site="before"
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Grave" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + shake" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + crunch" } } """
            ),
            abjad.LilyPondLiteral(
                r"""\once \override Staff.BarLine.glyph-name = ":|." """,
                site="absolute_after",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 1, 2, 3, -1], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf")],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    voice=score["viola voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #4 { \override #'(font-name . "Bodoni72 Book Italic") \raise #12 \with-dimensions-from \null { "I've been waiting a long time for emergence" } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)


for measure in [1, 5]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override Score.TimeSignature.stencil = ##f",
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
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/08",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
