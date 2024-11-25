import abjad
import baca
import evans
import trinton
import fractions
from abjadext import rmakers
from abjadext import microtones
from itertools import cycle
from waidan import library
from waidan import pitch

# score

score = library.waidan_score(
    [
        (3, 4),
        (5, 8),
        (5, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 4),
        (1, 8),
        (1, 8),
    ],
)

# viola music

# cello music

# trinton.make_music(
#     lambda _: trinton.select_target(_, ())
# )

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 11)),
    evans.RhythmHandler(
        evans.talea([-5, 4, -6, 3, -1, 4, -3, 4, -2, 4, -1, 4, -9, 3, 3, 2, 3, 100], 16)
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            "af''",
            "a''",
            "a''",
            "c'''",
            "b''",
            "fs'''",
            "g''",
            "d'''",
            "f'''",
            "ef'''",
            "e'''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("E6")),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("B5")),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("Ef6")),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("D6")),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("Cs6")),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("A6")),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("C6")),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("Ef6")),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("Ef6")),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("D6")),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("F6")),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                5,
                6,
                8,
                9,
                10,
                11,
            ],
            first=True,
            pitched=False,
        ),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True)),
    trinton.linear_attachment_command(
        attachments=cycle(
            [abjad.Dynamic("mp"), abjad.StartHairpin(">o"), abjad.Dynamic("mf")]
        ),
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                2,
                3,
                6,
                6,
                7,
                8,
                8,
                9,
                11,
                11,
                12,
                13,
                13,
                14,
                15,
                15,
                16,
            ],
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                18,
                19,
            ],
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_logical_ties_by_index(
            [
                20,
            ],
            first=True,
        ),
    ),
    voice=score["accordion 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([20, 19, 1], 64)),
    evans.PitchHandler([["ef", "ef,"], ["dqs", "ef,"], ["ef", "ef,"]]),
    trinton.noteheads_only(),
    trinton.continuous_glissando(zero_padding=True),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass"), abjad.StartHairpin("o<"), abjad.Dynamic("mf")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
    ),
    voice=score["accordion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 11)),
    evans.RhythmHandler(evans.talea([10000], 8)),
    evans.PitchHandler(
        [
            ["ef,", "ef,,"],
        ]
    ),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([-2, -2, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["accordion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 13)),
    evans.RhythmHandler(evans.talea([-3, 1, -1, 2, -1, 3, -1, 100], 16)),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.duration_line(),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=2,
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
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                3,
            ],
            pitched=True,
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=2,
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
        selector=trinton.select_logical_ties_by_index([4, 5], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=2,
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
        selector=trinton.select_leaves_by_index([6, 7, 7, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=2,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="bellows",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=5,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StopTrillSpan(),
            trinton.boxed_markup(
                string="Gran ON",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Gran OFF",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #6",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-2 { \center-column { \line { "fluttering" } \line { "quasi-cadenza" } } } } """
            ),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 2, 3, 4, 4, 5, 6, 6, -1], first=True, pitched=True
        ),
    ),
    voice=score["accordion 1 voice"],
)

# piano rh music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
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
        selector=trinton.pleaves(),
    ),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
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
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[abjad.StopPianoPedal()], selector=trinton.pleaves()
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ],
            treat_tuplets=False,
        )
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [0, 2, 4, 6, 8, 10, 12, 14, 16, 19, -1]
        )
    ),
    trinton.change_lines(lines=5, clef="treble", invisible_barlines=False),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (
                        1,
                        1,
                        1,
                        1,
                        1,
                        1,
                    )
                ],
                treat_tuplets=False,
            )
        ),
        direction=abjad.UP,
        voice_name="piano polyrhythm voice",
        preprocessor=trinton.fuse_sixteenths_preprocessor(
            (5, 2, 8, 2, 2, 2, 5, 2, 4, 2, 3, 2, 11, 2, 1, 2, 1, 2, 2, 1, 2, 2, 1000)
        ),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (5, 2, 8, 2, 2, 2, 5, 2, 4, 2, 3, 2, 11, 2, 1, 2, 1, 2, 2, 1, 2, 2, 1000)
    ),
)
#
trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    trinton.treat_tuplets(),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                4,
                5,
                6,
                8,
                10,
                17,
                18,
                19,
                22,
                23,
                24,
                25,
                30,
                31,
                33,
                34,
                36,
                37,
                38,
                39,
                40,
                43,
                48,
                53,
                54,
                62,
                64,
                65,
                66,
                75,
                78,
                79,
                80,
            ],
            pitched=True,
        )
    ),
    trinton.fuse_tuplet_rests_command(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    voice=score["piano 1 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [0, 2, 4, 6, 8, 10, 12, 14, 16, 19, -1]
        )
    ),
    trinton.treat_tuplets(),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.invisible_rests(),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                8,
                9,
                11,
                13,
                15,
                22,
                23,
                26,
                29,
                35,
                39,
                40,
                43,
                44,
                49,
                50,
                51,
                52,
                57,
                58,
                61,
                62,
                63,
                70,
                71,
            ],
            pitched=True,
        )
    ),
    trinton.fuse_tuplet_rests_command(),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano polyrhythm voice"],
)

pitch.vertical_moment_pitching(
    voices=[score["piano 1 voice temp"], score["piano polyrhythm voice"]],
    pitch_list=pitch.final_section_chords_piano,
)

piano_sextuplets = abjad.select.tuplets(score["piano 1 voice temp"])

for tuplet in piano_sextuplets:
    tuplet_pleaves = abjad.select.leaves(tuplet, pitched=True)
    if len(tuplet_pleaves) != 0:
        abjad.attach(abjad.StartBeam(), tuplet_pleaves[0])
        abjad.attach(abjad.StopBeam(), tuplet_pleaves[-1])
#
trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    evans.RewriteMeterCommand(),
    trinton.invisible_rests(selector=trinton.select_leaves_by_index([-2, -1])),
    trinton.octavation(octave=2, selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.DOWN),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [
                1,
                3,
                7,
                22,
                27,
                28,
                29,
                30,
                33,
                35,
                38,
                40,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index(
            [
                10,
                15,
                20,
                44,
            ],
            pitched=True,
        ),
    ),
    trinton.vertical_accidentals(selector=trinton.pleaves(), direction=abjad.DOWN),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceTwo", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.manual_beam_positions(positions=(-12, -12)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-5", site="before"
            )
        ],
        selector=trinton.logical_ties(first=True, pitched=False),
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["piano 1 voice temp"],
)
#
piano_septuplets = abjad.select.tuplets(score["piano polyrhythm voice"])

for tuplet in piano_septuplets:
    tuplet_pleaves = abjad.select.leaves(tuplet, pitched=True)
    abjad.attach(abjad.StartBeam(), tuplet_pleaves[0])
    abjad.attach(abjad.StopBeam(), tuplet_pleaves[-1])
#
trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    trinton.octavation(octave=2, selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [
                2,
                17,
                27,
                30,
                35,
                44,
            ],
            pitched=True,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index(
            [
                6,
                5,
            ],
            pitched=True,
        ),
    ),
    trinton.vertical_accidentals(selector=trinton.pleaves(), direction=abjad.UP),
    library.manual_beam_positions(positions=(12, 12)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #13", site="before"
            )
        ],
        selector=trinton.logical_ties(first=True, pitched=False),
    ),
    # trinton.annotate_leaves_locally(),
    trinton.linear_attachment_command(
        attachments=cycle(
            [abjad.Dynamic("ppp"), abjad.StartHairpin("<|"), abjad.Dynamic("mp")]
        ),
        selector=trinton.select_leaves_by_index(
            [
                2,
                2,
                7,
                8,
                8,
                13,
                14,
                14,
                20,
                22,
                22,
                27,
                28,
                28,
                33,
                35,
                35,
                41,
                43,
                43,
                48,
                49,
                49,
                54,
                55,
                55,
                57,
                58,
                58,
                63,
                64,
                64,
                67,
                68,
                68,
                73,
            ]
        ),
    ),
    voice=score["piano polyrhythm voice"],
)

# piano lh music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 11)),
    evans.RhythmHandler(
        evans.talea(
            [
                -5,
                3,
                -7,
                1,
                -3,
                3,
                -4,
                2,
                -4,
                2,
                -3,
                3,
                1,
                1,
                1,
                2,
                1,
                1,
                1,
                2,
                3,
                3,
                2,
                3,
                2,
                3,
                2,
                2,
                2,
                2,
                2,
                2,
                -1000,
            ],
            16,
        )
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            ["c'", "d'", "ef", "f'", "a", "bf"],
            ["ef", "af", "bf", "df'", "g'"],
        ],
        selector=trinton.logical_ties(
            exclude=[6, 7, 8, 9, 10, 11, 12, 13], pitched=True, grace=False
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            ["a,,", "g,,", "f,,"],
            ["a,,", "g,,", "f,,"],
            ["a,,", "g,,", "f,,"],
            ["e,,", "d,,", "c,,"],
        ],
        selector=trinton.select_logical_ties_by_index(
            [6, 7, 8, 9, 10, 11, 12, 13], pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.select_leaves_by_index(
            [
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                13,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.LilyPondLiteral(
                r"\override Staff.PianoPedalBracket.shorten-pair = #'(0 . 0)",
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Articulation("tenuto"),
            abjad.StartPianoPedal(),
        ],
        selector=trinton.logical_ties(
            exclude=[6, 7, 8, 10, 11, 12], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.LaissezVibrer()],
        selector=trinton.logical_ties(
            exclude=[6, 7, 8, 9, 10, 11, 12, 13], last=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [6, 9, 10, 13, 14, 15, 16, 17, 18, 19], pitched=True, grace=False
        ),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index(
            [
                3,
                5,
                8,
                10,
                12,
                13,
                17,
                21,
                22,
                23,
                24,
                25,
                26,
                27,
            ],
            grace=False,
        ),
        invisible=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.StopPianoPedal()], selector=trinton.pleaves(grace=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<")],
        selector=trinton.select_logical_ties_by_index(
            [6, 10], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["piano 2 voice"],
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[abjad.Markup(r'\markup { \harp-pedal "-v^|^--^" }')],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    trinton.rewrite_meter_command(),
    trinton.aftergrace_command(invisible=True),
    evans.PitchHandler(["ef"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.StartHairpin("o<"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
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
        padding=3.5,
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
    lambda _: trinton.select_target(_, (4, 12)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ],
            treat_tuplets=False,
        )
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [0, 2, 4, 6, 8, 10, 12, 14, 16, 19, -1]
        )
    ),
    trinton.IntermittentVoiceHandler(
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
                ],
                treat_tuplets=False,
            )
        ),
        direction=abjad.UP,
        voice_name="harp polyrhythm voice",
        preprocessor=trinton.fuse_sixteenths_preprocessor(
            (5, 2, 8, 2, 2, 2, 5, 2, 4, 2, 3, 2, 11, 2, 1, 2, 1, 2, 2, 1, 2, 2, 1000)
        ),
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (5, 2, 8, 2, 2, 2, 5, 2, 4, 2, 3, 2, 11, 2, 1, 2, 1, 2, 2, 1, 2, 2, 1000)
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                4,
                7,
                9,
                10,
                11,
                18,
                19,
                23,
                26,
                28,
                30,
                31,
                37,
                38,
                39,
                47,
                49,
                52,
                54,
                55,
                59,
                62,
                68,
                69,
                70,
                71,
                73,
                74,
                75,
                76,
                81,
                82,
                83,
                94,
                95,
            ],
            pitched=True,
        )
    ),
    trinton.fuse_tuplet_rests_command(),
    voice=score["harp voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [0, 2, 4, 6, 8, 10, 12, 14, 16, 19, -1]
        )
    ),
    trinton.treat_tuplets(),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.invisible_rests(),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [
                1,
                4,
                8,
                9,
                12,
                13,
                16,
                17,
                21,
                22,
                26,
                27,
                28,
                34,
                36,
                41,
                49,
                54,
                56,
                57,
            ],
            pitched=True,
        )
    ),
    trinton.fuse_tuplet_rests_command(),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["harp polyrhythm voice"],
)

pitch.vertical_moment_pitching(
    voices=[score["harp voice temp"], score["harp polyrhythm voice"]],
    pitch_list=pitch.final_section_chords_harp,
)

harp_octuplets = abjad.select.tuplets(score["harp voice temp"])

for tuplet in harp_octuplets:
    tuplet_pleaves = abjad.select.leaves(tuplet, pitched=True)
    if len(tuplet_pleaves) != 0:
        abjad.attach(abjad.StartBeam(), tuplet_pleaves[0])
        abjad.attach(abjad.StopBeam(), tuplet_pleaves[-1])

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    trinton.treat_tuplets(
        selector=trinton.select_tuplets_by_index(
            [0, 2, 4, 6, 8, 10, 12, 14, 16, 19, -1]
        )
    ),
    evans.RewriteMeterCommand(),
    trinton.treat_tuplets(),
    trinton.invisible_rests(selector=trinton.select_leaves_by_index([-2, -1])),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.vertical_accidentals(selector=trinton.pleaves(), direction=abjad.DOWN),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [
                1,
                7,
                16,
                17,
                25,
                34,
                36,
                37,
                42,
                45,
                46,
                47,
                48,
                49,
                51,
                52,
                53,
                55,
                56,
                57,
                59,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index(
            [4, 5, 6, 11, 21, 23, 28, 41], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceTwo", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.manual_beam_positions(positions=(-12, -12)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-5", site="before"
            )
        ],
        selector=trinton.logical_ties(
            exclude=[0, 1, 5, 11, 21], first=True, pitched=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #0", site="before"
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 5, 11, 21], first=True, pitched=False
        ),
    ),
    voice=score["harp voice temp"],
)

harp_quintuplets = abjad.select.tuplets(score["harp polyrhythm voice"])

for tuplet in harp_quintuplets:
    tuplet_pleaves = abjad.select.leaves(tuplet, pitched=True)
    abjad.attach(abjad.StartBeam(), tuplet_pleaves[0])
    abjad.attach(abjad.StopBeam(), tuplet_pleaves[-1])

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index([3, 6, 7], pitched=True, grace=False),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [9, 11, 15, 18, 20, 21, 25, 28, 29, 35, 36, 37], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(),
    trinton.vertical_accidentals(selector=trinton.pleaves(), direction=abjad.UP),
    library.manual_beam_positions(positions=(12, 12)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #13", site="before"
            )
        ],
        selector=trinton.logical_ties(first=True, pitched=False),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [abjad.Dynamic("ppp"), abjad.StartHairpin("<|"), abjad.Dynamic("mp")]
        ),
        selector=trinton.select_leaves_by_index(
            [
                2,
                2,
                6,
                8,
                8,
                12,
                13,
                13,
                17,
                19,
                19,
                23,
                24,
                24,
                28,
                29,
                29,
                32,
                34,
                34,
                39,
                40,
                40,
                45,
                46,
                46,
                50,
                51,
                51,
                56,
                57,
                57,
                61,
                62,
                62,
                66,
            ]
        ),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="normale",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=22.5,
        right_padding=1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([1000], 4)),
        direction=abjad.DOWN,
        voice_name="harp bowing voice",
        preprocessor=trinton.fuse_eighths_preprocessor((4,)),
    ),
    voice=score["harp polyrhythm voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 12)),
    trinton.aftergrace_command(invisible=True),
    evans.PitchHandler(["ef"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, -3, -1]),
    ),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index([-2, -1], grace=False)
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(8, 11)], nested=True),
        zero_padding=True,
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
        padding=14,
        direction="down",
        right_padding=1.5,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["harp bowing voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[13],
    fermata="extremely-long-fermata",
    voice_names=library.all_voice_names,
    font_size=12,
    clef_whitespace=False,
    blank=False,
    last_measure=False,
    padding=-10,
    extra_offset=2.5,
    tag=None,
)

trinton.fermata_measures(
    score=score,
    measures=[14],
    fermata="extremely-long-fermata",
    voice_names=library.all_voice_names,
    font_size=12,
    clef_whitespace=True,
    blank=True,
    last_measure=True,
    padding=-10,
    extra_offset=2.5,
    tag=None,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="eighth", tempo=72, padding=11.5, site="closing", hspace=0.25
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="eighth",
                tempo=54,
                padding=16,
                site="closing",
                metric_modulation=abjad.MetricModulation(
                    left_rhythm=abjad.Tuplet("3:2", "c'4"),
                    right_rhythm=abjad.Note("c'8"),
                ),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #6 { \override #'(font-name . "Bodoni72 Book Italic") \raise #17.5 \with-dimensions-from \null { " \"it's never just a shape alone\" " } }"""
            ),
            abjad.bundle(
                trinton.boxed_markup(
                    string="Tape IV ON",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
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

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)


trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)",
                site="before",
            ),
        ],
        selector=abjad.select.leaves,
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
                r"- \tweak padding #17.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
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
                r"- \tweak padding #10",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("|.", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# breaks

for measure in [1, 2, 4, 5, 7, 8, 10]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )


# for measure in [1, 6]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (9,)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="after")],
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


# beautification

trinton.remove_redundant_time_signatures(score=score)

for voice_name in library.all_voice_names:
    trinton.fill_empty_staves_with_skips(voice=score[voice_name])

library.reset_line_positions(score=score, voice_names=["viola voice"])

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/13",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="13",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)