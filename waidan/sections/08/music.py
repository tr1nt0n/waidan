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
                r'\tweak text "×37" \startMeasureSpanner', site="absolute_before"
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
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    trinton.duration_line(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    voice=score["viola voice"],
)
trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.tuplet([(1,), (4, 1), (1,)])),
    evans.PitchHandler(["d''", "a''", "e''", "b'"]),
    library.change_viola_staff(
        clef_name="string", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index([-2, -1], pitched=True)
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([-2, -1], pitched=True)
    ),
    # trinton.linear_attachment_command(
    #     attachments=[
    #         abjad.LilyPondLiteral(
    #             [
    #                 r"\override NoteHead.X-extent = #'(0 . 0)",
    #                 r"\override NoteHead.transparent = ##t",
    #                 r"\override NoteHead.no-ledgers = ##t",
    #             ],
    #             site="before",
    #         ),
    #         abjad.LilyPondLiteral(
    #             [
    #                 r"\revert NoteHead.X-extent",
    #                 r"\revert NoteHead.transparent",
    #                 r"\revert NoteHead.no-ledgers",
    #             ],
    #             site="absolute_after",
    #         ),
    #     ],
    #     selector=trinton.select_leaves_by_index([0, -1], grace=False),
    # ),
    # trinton.attachment_command(
    #     attachments=[abjad.Glissando(zero_padding=True)],
    #     selector=trinton.select_leaves_by_index([0, 1], pitched=True, grace=False),
    # ),
    # trinton.linear_attachment_command(
    #     attachments=[
    #         abjad.BendAfter(2),
    #     ],
    #     selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    # ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Articulation(">"),
    #     ],
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    # ),
    # trinton.linear_attachment_command(
    #     attachments=[abjad.Dynamic("f"), abjad.Dynamic("mp"), abjad.Dynamic("mf")],
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    # ),
    # trinton.spanner_command(
    #     strings=[
    #         r"135°",
    #         r"45°",
    #         r"135°",
    #     ],
    #     selector=trinton.select_logical_ties_by_index([0, 1, 1, 2, 2, -1], first=True),
    #     style="solid-line-with-arrow",
    #     padding=6,
    #     tweaks=None,
    #     right_padding=0,
    #     direction=None,
    #     full_string=False,
    #     command="Two",
    #     end_hook=True,
    #     end_hook_style="dashed-line-with-hook",
    #     tag=None,
    # ),
    # trinton.hooked_spanner_command(
    #     string=trinton.boxed_markup(
    #         string="3/4 spazzolato",
    #         # column="\center-column",
    #         # font_name="Bodoni72 Book",
    #         fontsize=-1,
    #         string_only=True,
    #     ),
    #     selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    #     padding=8.5,
    #     direction=None,
    #     right_padding=16,
    #     full_string=True,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="One",
    #     tag=abjad.Tag("+SCORE"),
    #     tweaks=None,
    # ),
    # trinton.hooked_spanner_command(
    #     string=trinton.boxed_markup(
    #         string="3/4 spazzolato",
    #         # column="\center-column",
    #         # font_name="Bodoni72 Book",
    #         fontsize=-1,
    #         string_only=True,
    #     ),
    #     selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    #     padding=8.5,
    #     direction=None,
    #     right_padding=6,
    #     full_string=True,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="One",
    #     tag=abjad.Tag("+PARTS"),
    #     tweaks=None,
    # ),
    # trinton.invisible_accidentals_command(
    #     selector=trinton.select_logical_ties_by_index(
    #         [-1], first=True, pitched=True, grace=False
    #     )
    # ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            1,
            1,
            6,
        )
    ),
)

# first barline literals

for voice_name in [_ for _ in library.all_voice_names if _ != "viola voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"""\once \override Voice.BarLine.glyph-name = "|" """,
                    site="before",
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
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
                r'\tweak text "×37" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #11 \with-dimensions-from \null { "( after 9× viola )" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Lento" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-3.5 { "cast Stones" } } """
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
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                0,
                0,
                1,
                2,
                3,
                -1,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf")],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    trinton.duration_line(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    voice=score["baritonesaxophone voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
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
                r'\tweak text "×37" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #11 \with-dimensions-from \null { "( after 9× saxophone )" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Largo" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-3.5 { "cast Stones" } } """
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
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 0, 1, 2, 3, -1], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf")],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    trinton.duration_line(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    voice=score["cello voice"],
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
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
                r'\tweak text "×37" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #11 \with-dimensions-from \null { "( after 9× cello + accordion )" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Adagio" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-3.5 { "cast Stones" } } """
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
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 0, 1, 2, 3, -1], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf")],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    trinton.duration_line(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    voice=score["harp voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
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
                r'\tweak text "×37" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #11 \with-dimensions-from \null { "( after 9× saxophone )" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Largo" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-3.5 { "cast Stones" } } """
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
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 0, 1, 2, 3, -1], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf")],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    trinton.duration_line(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    voice=score["accordion 1 voice"],
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
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
                r'\tweak text "×37" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #11 \with-dimensions-from \null { "( after 9× cello + accordion )" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Adagio" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-3.5 { "cast Stones" } } """
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
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 0, 1, 2, 3, -1], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mf")],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    trinton.duration_line(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    voice=score["piano 1 voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #4 { \override #'(font-name . "Bodoni72 Book Italic") \raise #12 \with-dimensions-from \null { "I've been waiting a long time for emergence" } }"""
            ),
            abjad.LilyPondLiteral(
                r"\override Score.BarLine.X-extent = #'(2 . 2)", site="before"
            ),
            abjad.BarLine(".|:", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

for measure in [2, 3, 4]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.BarLine(":..:", site="before"),
            ],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        voice=score["Global Context"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine(":|.", site="before"),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Score.BarLine.X-extent = #'(-0.5 . -0.5)",
                site="absolute_after",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
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