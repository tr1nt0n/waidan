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
        (7, 4),
        (9, 8),
        (3, 4),
        (5, 8),
    ],
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.tuplet([(-1, 1, -6, 1, -2, 1), (-3, 1, -3), (-7, 1)], treat_tuplets=False)
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-2, -1])),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            "g''",
            "f''",
            "e'''",
            "f'",
            "d'",
            "g''",
            "f''",
            "a''",
            "d'",
            "b",
            "a''",
            "e''",
            "a''",
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
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([3, 5, 11, 16, 22, 27]),
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
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 4, 5, 5, 7, 8, 9, 10], first=True, pitched=True
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
                r"- \tweak padding #3",
            ),
        ],
        selector=trinton.select_leaves_by_index([20]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((6, 4, 4, 3, 3, 3, 2, 2, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([-2, 3], 8)),
    library.multiphonic_trem_noteheads(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        preprolated=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #3",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.tuplet([(-8, 1, -1), (-2, 1, 1, -4), (-8, 2, 2, 2)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        ["d'", "g''", "d''", "f'", "a'", "c''", "d'", "g''", "c''", "d'", "a'", "g''"]
    ),
    library.contour_staff(
        clef="harp strings",
        reset=False,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        force_clef=False,
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
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([4, 5, 8, 10, 14, 17, 19, 21]),
    ),
    # trinton.hooked_spanner_command(
    #     string=trinton.boxed_markup(
    #         string="newspaper strings",
    #         # column="\center-column",
    #         # font_name="Bodoni72 Book",
    #         fontsize=-1,
    #         string_only=True,
    #     ),
    #     selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    #     padding=8,
    #     direction=None,
    #     right_padding=2,
    #     full_string=True,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="",
    #     tag=None,
    #     tweaks=None,
    # ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, 3, 5, 6, 8, 9, 9, 11], first=True, pitched=True
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
                r"- \tweak padding #3",
            ),
        ],
        selector=trinton.select_leaves_by_index([-4]),
        direction=abjad.UP,
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            4,
            4,
            6,
            3,
            3,
            3,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        evans.talea([-8, 2, -1, 4, -8, 3, 8, 12], 32, extra_counts=[2, 0, 0, 0]),
    ),
    evans.PitchHandler(["d'", "g''", "f'", "g''", "d'"]),
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
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fp"),
            abjad.Dynamic("fp"),
        ],
        selector=trinton.select_leaves_by_index([1, 1, 2, 3, 4, 7, 8, 9]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BendAfter(7),
            abjad.BendAfter(-7),
            abjad.Glissando(),
            abjad.Glissando(),
            abjad.Glissando(),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_leaves_by_index([1, 2]),
        style="solid-line-with-arrow",
        padding=4.75,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_leaves_by_index([3, 4]),
        style="solid-line-with-arrow",
        padding=4.75,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-stretto",
            r"\tremolo-largo",
        ],
        selector=trinton.select_leaves_by_index([-2, -1]),
        style="solid-line-with-arrow",
        padding=4.75,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([2], pitched=True)),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 2, 5)),
)

# piano rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.tuplet([(-4, 1, -7), (-11, 1), (1, -2, 1, -6)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(),
    evans.PitchHandler(
        [["e,,", "d,,", "c,,"]],
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.change_lines(lines=5, clef="bass", invisible_barlines=False),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3, 6, 7, -2, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1, 1, 3, 4, 5, 7, 8, 9, 11], pitched=True
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
                r"- \tweak padding #3",
            ),
        ],
        selector=trinton.select_leaves_by_index([6], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((4, 6, 4, 3, 3, 3, 2, 2, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([1, -3, 2, -4], 16)),
    evans.PitchHandler(
        [["e,,", "d,,", "c,,"]],
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    voice=score["piano 1 voice"],
)

# piano lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([2, 2, 2, 2, 2], 16)),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"f"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 4],
        ),
    ),
    library.stone_arrow_noteheads(
        notehead_list=["right", "left-down", "right-up", "right-down", "left-up"],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Rub stones" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["piano 2 voice"],
)

# globals

# for measure in [1]:
trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
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
                r"- \tweak padding #23",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="quarter",
                tempo=54,
                padding=16,
                site="closing",
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'2"),
                    right_rhythm=abjad.Note("c'4"),
                )
                # hspace=-3
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
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
            library.return_metronome_markup(
                note_value="quarter",
                tempo=("67", "1", "2"),
                padding=16,
                site="closing",
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("5:4", "c'8"),
                    right_rhythm=abjad.Note("c'8"),
                )
                # hspace=-3
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
            abjad.LilyPondLiteral(
                r"\once \override TimeSignature.X-offset = -6.5", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="quarter",
                tempo=("84", "3", "8"),
                padding=17.5,
                site="closing",
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("5:4", "c'4"),
                    right_rhythm=abjad.Note("c'4"),
                )
                # hspace=-3
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# for measure in [1, 2]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(
#                     r"\once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)",
#                     site="before",
#                 ),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)

# trinton.fermata_measures(
#     score=score,
#     measures=[5],
#     fermata="long-fermata",
#     voice_names=None,
#     font_size=12,
#     clef_whitespace=True,
#     blank=True,
#     last_measure=False,
#     padding=-10,
#     extra_offset=2.5,
#     tag=None,
# )

# breaks

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
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
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\break", site="after")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

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

# library.reset_line_positions(score=score, voice_names=["viola voice"])

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/05",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
