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

# measure 2 stones

for voice_name in [
    "baritonesaxophone voice",
    "cello voice",
    "accordion 1 voice",
    "harp voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (2,)),
        evans.RhythmHandler(
            trinton.handwrite_nested_tuplets(
                tuplet_ratios=[(1, -3), (1, -3, 1), (-1,)],
                nested_ratios=[(1, 1, 1, 1, 1)],
                triple_nested_ratios=None,
                nested_vectors=[0],
                nested_period=1,
                triple_nested_vectors=None,
                triple_nested_period=None,
                extract_trivial_tuplets=True,
                # preprocessor=trinton.fuse_quarters_preprocessor((1,))
            ),
        ),
        trinton.linear_attachment_command(
            attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
            selector=trinton.select_leaves_by_index(
                [0, 4, 5, -1], pitched=True, grace=False
            ),
        ),
        library.stone_arrow_noteheads(
            notehead_list=["down", "right", "left", "up"],
            selector=trinton.pleaves(),
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "strike + scrape" } """
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        trinton.linear_attachment_command(
            attachments=cycle(
                [abjad.Dynamic("mf"), abjad.StartHairpin(">o"), abjad.StopHairpin()]
            ),
            selector=trinton.select_leaves_by_index([0, 0, 5, 6, 6, 11, 12, 12, -1]),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    )

# viola music

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
        right_padding=16,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=abjad.Tag("+SCORE"),
        tweaks=None,
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
        tag=abjad.Tag("+PARTS"),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(-2, 1, 1)])),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="e''",
                repeating_ratio="7/6",
                number_of_divisions=3,
                scale_degree=1,
            ),
        ],
    ),
    trinton.change_notehead_command(notehead="harmonic", selector=trinton.pleaves()),
    library.change_viola_staff(
        clef_name="alto", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [trinton.make_custom_dynamic("fmp"), abjad.StartHairpin(">o")]
        ),
        selector=trinton.select_leaves_by_index([0, 0, 1, 1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartTrillSpan(pitch=abjad.NamedPitch("F5"))],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["viola voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin(), abjad.StopTrillSpan()],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 7)),
    evans.RhythmHandler(
        evans.talea(
            [
                -7,
                7,
                -1,
                -2,
                -3,
                7,
                -1,
                -6,
            ],
            16,
            extra_counts=[0, 0, 1, 0, 0, 1, 0],
        )
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="e''",
                repeating_ratio="7/6",
                number_of_divisions=3,
                scale_degree=1,
            ),
        ],
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.logical_ties(pitched=True, all_except_first=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartTrillSpan(pitch=abjad.NamedPitch("F5"))],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.duration_line(
        visible_grace=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.StopTrillSpan()],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.Dynamic("pp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("mp"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 0, 1, 1, 3, 4, 4, 5, 5, 7], pitched=True
        ),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((4, 2, 1, 1, 4, 1, 3)),
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 8), (1, 20), (1, 32)],
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Stones" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="strike",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="rub",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Soprano" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.aftergrace_command(
        slash=True, selector=trinton.select_logical_ties_by_index([0])
    ),
    trinton.change_lines(lines=5, clef="treble"),
    trinton.linear_attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Env ON",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 8)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                4,
                4,
                -4,
                -8,
                4,
                -4,
                -2,
                2,
                -2,
                -2,
                3,
                1,
                4,
                1,
                -1,
                6,
                -2,
                -2,
                9,
                -4,
                -4,
                4,
                -2,
                2,
                -1,
                5,
                -2 - 1000,
            ],
            32,
            extra_counts=[0, 0, 2, 1, 1, 0, 2, 0, 0, 3, 2, 2, 0, 0],
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index(
            [2, 3, 4, 8, 9, 10, 11, 12, 13], pitched=True, grace=False
        ),
        slash=True,
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 7, 9, 10, 11, 12, 13, 14, 16, 17, 18, 26, 28], grace=False
        ),
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            4,
            4,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 8)),
    evans.PitchHandler(
        [
            "e'''",
            "g'",
            "a'",
            "d''",
            "f'",
            "b'",
            "c''",
            "d''",
            "b'",
            "a",
            "b'",
            "f'''",
            "c'''",
            "g'''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
            "b''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                1,
                3,
                3,
                4,
                5,
                5,
                6,
                7,
                9,
                10,
                10,
                13,
                14,
                14,
                15,
                16,
                16,
                17,
                18,
                18,
                21,
                22,
                22,
                23,
            ],
            first=True,
            pitched=True,
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
    voice=score["baritonesaxophone voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 20), (1, 8), (1, 32)],
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([1])),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Stones" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="strike",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="rub",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(-1, 1, 1, 1)])),
    evans.PitchHandler(["e''"]),
    evans.PitchHandler(["7/6"], as_ratios=True),
    trinton.force_accidentals_command(selector=trinton.pleaves()),
    trinton.change_notehead_command(notehead="harmonic", selector=trinton.pleaves()),
    trinton.change_lines(
        lines=5,
        clef="treble",
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [trinton.make_custom_dynamic("fmp"), abjad.StartHairpin(">o")]
        ),
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, 2, 2], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartTrillSpan(pitch=abjad.NamedPitch("G5"))],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Cello" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin(), abjad.StopTrillSpan()],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(evans.talea([5, -7, 5, -100], 16)),
    evans.PitchHandler(["e''"]),
    evans.PitchHandler(["7/6"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.change_notehead_command(notehead="harmonic", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("G5")),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.duration_line(visible_grace=True),
    trinton.attachment_command(
        attachments=[abjad.StopTrillSpan(), abjad.StopHairpin()],
        selector=trinton.pleaves(grace=True),
    ),
    voice=score["cello voice"],
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 8), (1, 20), (1, 32)],
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Stones" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="rub",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="strike",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
    preprocessor=trinton.fuse_eighths_preprocessor((1, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(-1, 1, 1, 1)])),
    evans.PitchHandler([["c,", "bs,,"]]),
    trinton.change_lines(lines=5, clef="bass", invisible_barlines=False),
    trinton.change_notehead_command(notehead="lowest", selector=trinton.pleaves()),
    trinton.force_accidentals_command(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Harp" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("salzedo-thunder")], selector=trinton.pleaves()
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin("<"), abjad.Dynamic("fff")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["harp voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([1, -5, 1, -1], 8)),
    evans.PitchHandler([["c,", "bs,,"]]),
    trinton.change_notehead_command(notehead="lowest", selector=trinton.pleaves()),
    trinton.force_accidentals_command(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("salzedo-thunder"),
            abjad.LaissezVibrer(),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["harp voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 20), (1, 8), (1, 32)],
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([1])),
    trinton.invisible_tuplet_brackets(),
    trinton.invisible_rests(),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Stones" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="rub",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="strike",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
    voice=score["accordion 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(-2, 1, 1)])),
    evans.PitchHandler([["e'''", "fs'''", "b'''", "c''''", "f''''"]]),
    trinton.change_lines(
        lines=5,
        clef="treble",
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [trinton.make_custom_dynamic("fmp"), abjad.StartHairpin(">o")]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                1,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartTrillSpan()], selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Accordion" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    \column {
                        \line {
                            "trilling between"
                        }
                        \line {
                            "notated pitches"
                        }
                        \line {
                            "and random"
                        }
                        \line {
                            "adjacent notes"
                        }
                    }
                }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin(), abjad.StopTrillSpan()],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(evans.talea([-4, 4, 4, -3, 5, 4], 16)),
    evans.PitchHandler([["e'''", "fs'''", "b'''", "c''''", "f''''"]]),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, grace=False
        ),
        sustained=True,
        visible_grace=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                3,
            ],
            pitched=True,
            grace=False,
        ),
        sustained=True,
        visible_grace=True,
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    { "( sim. )" }
                }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(exclude=[0, 3])),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartHairpin("o<"),
                abjad.Dynamic("mp"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 1, 1, 2, 3, 5, 5, -1], pitched=True
        ),
    ),
    voice=score["accordion 1 voice"],
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
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], grace=False), invisible=True
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ],
        ),
        selector=trinton.pleaves(exclude=[0], grace=False),
    ),
    library.manual_beam_positions(positions=(0, 0)),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.patterned_leaf_index_selector(
            [1], 2, pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.patterned_leaf_index_selector(
            [0], 2, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartPianoPedal(), abjad.StopPianoPedal()]),
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.pleaves(grace=False),
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
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(evans.talea([-4, 1, -3, -2, 1, -100], 8)),
    trinton.aftergrace_command(
        slash=True, selector=trinton.select_logical_ties_by_index([0, 3])
    ),
    evans.PitchHandler(["f''", "g,"]),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="lowest", selector=trinton.pleaves(grace=False)
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.pleaves(grace=True)
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
        attachments=[abjad.Articulation(">")],
        selector=trinton.pleaves(grace=False),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
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
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([-8, 5], 16, extra_counts=[0, 1, 0])),
    evans.PitchHandler(
        [["a,,", "g,,", "f,,", "e,,", "d,,", "c,,"]],
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.change_lines(lines=5, clef="bass", invisible_barlines=False),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["piano 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1)])),
    evans.PitchHandler(
        [["a,,", "g,,", "f,,", "e,,", "d,,", "c,,"]],
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
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
    voice=score["piano 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(evans.talea([-4, 4, 2, -5, 5, 2, -100], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [["a,,", "g,,", "f,,", "e,,", "d,,", "c,,"]],
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index([0, 2, 3], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.select_leaves_by_index([1, 4], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartHairpin("o<"), abjad.Dynamic("ff")]),
        selector=trinton.logical_ties(first=True, pitched=True),
        direction=abjad.UP,
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="mallets on low strings",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8,
        direction=None,
        right_padding=1.5,
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
    lambda _: trinton.select_target(_, (4, 7)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([1, -1]),
    ),
    voice=score["piano 2 voice"],
)

# globals


trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
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
                r"- \tweak padding #19",
            ),
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
            abjad.bundle(
                trinton.boxed_markup(
                    string="ALL SIT",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=4,
                    string_only=False,
                ),
                r"- \tweak padding #12",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

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

for measure in [2]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
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
