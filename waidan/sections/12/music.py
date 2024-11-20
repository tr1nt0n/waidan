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
        (8, 4),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (6, 8),
        (9, 8),
        (1, 8),
    ],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 2],
            32,
            treat_tuplets=False,
        )
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["c"], selector=trinton.select_tuplets_by_index([0])
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["7/6", "5/2"]],
        as_ratios=True,
        selector=trinton.select_tuplets_by_index([0]),
    ),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0])),
    trinton.transparent_noteheads(selector=trinton.select_tuplets_by_index([-1])),
    trinton.duration_line(
        sustained=True,
        selector=trinton.pleaves(exclude=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]),
    ),
    trinton.noteheads_only(
        selector=trinton.pleaves(exclude=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
    ),
    trinton.treat_tuplets(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("alto"),
            abjad.StartBeam(),
            abjad.LilyPondLiteral(
                r"\override Accidental.transparent = ##t", site="before"
            ),
            abjad.StopBeam(),
            abjad.LilyPondLiteral(
                r"\override Accidental.transparent = ##f", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                12,
                12,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #45.5 #37 %% #width #height"),
                r"- \tweak padding #21",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ffff"),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #3 \column { \line { "While playing, bare your teeth, widen your eyes," } \line { "furrow and arch your eyebrows," } \line { "and shout like a furious animal." } } } """
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
            [0, 12], first=True, pitched=True
        ),
        padding=19.5,
        direction=None,
        right_padding=1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=["poco pont., poco scratch,", "full bows as possible"],
            column="\column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 12], first=True, pitched=True
        ),
        padding=15,
        direction=None,
        right_padding=1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 100)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    evans.PitchHandler([["e''", "c''"]]),
    trinton.duration_line(),
    trinton.noteheads_only(),
    library.change_viola_staff(
        clef_name="stringing",
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="XFB, molto tast.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=4,
        direction=None,
        right_padding=0.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    voice=score["viola voice"],
)

for measure, sixteenth in zip(
    list(range(3, 9)),
    [
        1,
        2,
        3,
        4,
        5,
        6,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.talea([sixteenth, -100], 16)),
        trinton.rewrite_meter_command(),
        evans.PitchHandler([["e''", "c''"]]),
        trinton.duration_line(visible_grace=True),
        trinton.hooked_spanner_command(
            string=trinton.boxed_markup(
                string="XFB, molto tast.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            selector=trinton.select_logical_ties_by_index(
                [0, -1], first=True, pitched=True
            ),
            padding=7.5,
            direction=None,
            right_padding=0.5,
            full_string=True,
            style="dashed-line-with-hook",
            hspace=None,
            command="One",
            tag=None,
            tweaks=None,
        ),
        voice=score["viola voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(evans.talea([3, 3, 9], 8)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["e''", "c''"]]),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [0, 1], grace=False, pitched=True
        ),
        visible_grace=True,
        sustained=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([2], grace=False, pitched=True),
        visible_grace=True,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="XFB, molto tast.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, -1], first=True, pitched=True
        ),
        padding=7.5,
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
            trinton.make_custom_dynamic("mfp"),
            trinton.make_custom_dynamic("mfp"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 3, 3, -1], pitched=True),
    ),
    voice=score["viola voice"],
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([1, 1, 12, -100], 4),
    ),
    evans.PitchHandler(["cs'", "fs'", "b'"]),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0, 1])),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ffff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, -2, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="norm.",
                # column="\center-column",6
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="1/2 overblow",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 2, 3], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=4,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=True,
        end_hook_right_padding=0.5,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #45.5 #13 %% #width #height"),
                r"- \tweak padding #5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
)

for measure, sixteenth, note_value in zip(
    [3, 4, 5, 6, 8],
    [
        1,
        2,
        3,
        4,
        # 5,
        6,
    ],
    [
        r"{16} #2",
        r"{8} #2",
        r"""{8} #2 \fontsize #6 "." """,
        r"{4} #2",
        r"""{4} #2 \fontsize #6 "." """,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.talea([sixteenth, -100], 16)),
        trinton.rewrite_meter_command(),
        library.multiphonic_trem_noteheads(
            selector=trinton.pleaves(), preprolated=True
        ),
        trinton.attachment_command(
            attachments=[
                abjad.bundle(
                    abjad.Markup(
                        rf"""\markup {{
                            \hspace #1 {{
                                ( \note {note_value} )
                            }}
                        }}"""
                    ),
                    r"- \tweak padding #5",
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        voice=score["baritonesaxophone voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.talea([5, -100], 16)),
    trinton.rewrite_meter_command(),
    library.multiphonic_trem_noteheads(
        selector=trinton.logical_ties(first=True, pitched=True), preprolated=True
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([2], pitched=True)
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([2], pitched=True)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup {
                        \hspace #1 {
                            ( \note {4} #2 + \note {16} #2 )
                        }
                    }"""
                ),
                r"- \tweak padding #5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(evans.talea([3, 3, 9], 8)),
    trinton.rewrite_meter_command(),
    library.multiphonic_trem_noteheads(
        selector=trinton.logical_ties(first=True, pitched=True), preprolated=True
    ),
    trinton.aftergrace_command(
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([-1], grace=False, pitched=True)
    ),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index([-1], grace=False, pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("mfp"),
            trinton.make_custom_dynamic("mfp"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 4, 4, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup {
                        \hspace #1 {
                            ( \note {4} #2 \fontsize #6 "." )
                        }
                    }"""
                ),
                r"- \tweak padding #5",
            ),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup {
                        \hspace #1 {
                            ( \note {4} #2 \fontsize #6 "." )
                        }
                    }"""
                ),
                r"- \tweak padding #5",
            ),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup {
                        \hspace #1 {
                            ( \note {2} #2 \fontsize #6 "." + \note {4} #2 \fontsize #6 "."  )
                        }
                    }"""
                ),
                r"- \tweak padding #5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 4]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([1, 1, 1, 1, 1, 4, 4, 4, 92, -1000], 32),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e,,"],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["1/1", "28/3"]],
        as_ratios=True,
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["d"],
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
            ]
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.transparent_noteheads(
        selector=trinton.pleaves(exclude=[0, 1, 2, 3, 4, 5, 6, 7])
    ),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -4, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=[
                    "Immediately stop shouting,",
                    "assume natural facial expression.",
                ],
                column="\column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                -4,
            ],
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("downbow"), abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="1/2 scratch",
                # column="\center-column",6
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="norm.",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 12, 12, 15], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13.5,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="",
        end_hook=True,
        end_hook_right_padding=0.5,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #48 #32 %% #width #height"),
                r"- \tweak padding #14",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #3 \column { \line { "While playing, bare your teeth, widen your eyes," } \line { "furrow and arch your eyebrows," } \line { "and shout like a furious animal." } } } """
                ),
                r"- \tweak padding #1",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                -4,
                1,
                -5,
                2,
                -4,
                3,
                -3,
                4,
                -2,
                5,
                -1,
                6,
                6,
                6,
            ],
            16,
        )
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["a'", "f'"]]),
    library.change_viola_staff(
        clef_name="stringing",
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("mfp"),
            trinton.make_custom_dynamic("mfp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -2, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.duration_line(
        visible_grace=True,
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[-3, -2, -1]),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.talea([100], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["a'", "f'"]]),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_logical_ties_by_index(
            [-4, -3, -2, -1], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([-3, -3, -1], pitched=True),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 10)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=["1/2 legno tratto", "wood MSP", "hair behind the bridge"],
            column="\column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
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
            r"""\markup { \hspace #-5 { "au talon" } }""",
            r"""\markup { "punta d'arco" } """,
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=1,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { \hspace #-4 { "au talon" } }""",
            r"""\markup { "punta d'arco" } """,
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { \hspace #-2 { "au talon" } }""",
            r"""\markup { "punta d'arco" } """,
        ],
        selector=trinton.select_logical_ties_by_index([4, 6], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { \hspace #-2 { "au talon" } }""",
            r"""\markup { "punta d'arco" } """,
        ],
        selector=trinton.select_logical_ties_by_index([7, 9], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=-5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { \hspace #-2 { "au talon" } }""",
            r"""\markup { "punta d'arco" } """,
        ],
        selector=trinton.select_logical_ties_by_index(
            [10, 12], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=-5,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["cello voice"],
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([5, 1, 1, 1, 1, 1, 1, 1, 1, 94, -1000], 32),
    ),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.select_leaves_by_index([0])
    ),
    library.stone_arrow_noteheads(
        notehead_list=[
            "up",
            "right-down",
            "left-down",
            "down",
            "up",
            "right-up",
            "left-up",
            "down",
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3, 4, 5, 6, 7, 8], first=True, pitched=True, grace=False
        ),
    ),
    trinton.transparent_noteheads(
        selector=trinton.pleaves(exclude=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    ),
    trinton.duration_line(selector=trinton.pleaves(exclude=[2, 3, 4, 5, 6, 7, 8, 9])),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ffff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, -4, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=[
                    "Immediately stop shouting,",
                    "assume natural facial expression.",
                ],
                column="\column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                -4,
            ],
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #39 #17 %% #width #height"),
                r"- \tweak padding #5",
            ),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "Soundboard" } """
                ),
                r"- \tweak padding #3",
            ),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "strike + scrape Stones" } """
                ),
                r"- \tweak padding #2",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True, first=True),
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
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #3 \column { \line { "While playing, bare your teeth, widen your eyes," } \line { "furrow and arch your eyebrows," } \line { "and shout like a furious animal." } } } """
                ),
                r"- \tweak padding #1",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                -2,
                1,
                -5,
                2,
                -4,
                3,
                -3,
                4,
                -2,
                5,
                -1,
                6,
                6,
                6,
            ],
            16,
        )
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["ds", "b", "fs'", "c''", "e''", "f''"]]),
    trinton.change_lines(lines=5, clef="treble", invisible_barlines=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.Clef.X-extent = ##f"
                    r"\once \override Staff.Clef.X-offset = -5",
                ],
                site="before",
            ),
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("mfp"),
            trinton.make_custom_dynamic("mfp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -2, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Arpeggio(),
        ],
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=False, exclude=[-2, -1]
        ),
    ),
    trinton.duration_line(
        visible_grace=True,
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[-3, -2, -1]),
    ),
    trinton.tremolo_command(),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.talea([100], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["ds", "b", "fs'", "c''", "e''", "f''"]]),
    trinton.tremolo_command(),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_logical_ties_by_index(
            [-4, -3, -2, -1], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([-3, -3, -1], pitched=True),
    ),
    voice=score["harp voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([1, 1, 12, -1000], 4),
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, grace=False
        ),
        pitch_list=[["ef", "d", "af", "ds'", "e'"]],
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
            ]
        ),
        pitch_list=["d"],
    ),
    trinton.transparent_noteheads(
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
            ]
        )
    ),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Accidental.X-extent = #'(-0.25 . -0.25)",
                site="before",
            ),
            abjad.Clef("bass"),
            abjad.Dynamic("ffff"),
            abjad.LilyPondLiteral(
                r"\once \override Accidental.transparent = ##t", site="before"
            ),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 2, -2, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=[
                    "Immediately stop shouting,",
                    "assume natural facial expression.",
                ],
                column="\column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                -2,
            ],
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #45.5 #43 %% #width #height"),
                r"- \tweak padding #7",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=6,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #3 \column { \line { "While playing, bare your teeth, widen your eyes," } \line { "furrow and arch your eyebrows," } \line { "and shout like a furious animal." } } } """
                ),
                r"- \tweak padding #1",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([1, 1, 12, -1000], 4),
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, grace=False
        ),
        pitch_list=[["e,", "b,,", "e,,"], ["a,", "e,", "a,,"]],
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
            ]
        ),
        pitch_list=["d"],
    ),
    trinton.transparent_noteheads(
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
            ]
        )
    ),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -2, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=3,
        tweaks=None,
        right_padding=-1,
        direction=None,
        full_string=True,
        command="Two",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["accordion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                -4,
                1,
                -5,
                2,
                -4,
                3,
                -3,
                4,
                -2,
                5,
                -1,
                6,
                6,
                6,
            ],
            16,
        )
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["ef''''", "f''''", "gf''''"]]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    {
                        \hspace #1.5
                        \column {
                            \line { "trilling between notated pitches" }
                            \line { "and random adjacent diads" }
                        }
                    }
                }"""
            ),
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.Clef.X-extent = ##f"
                    r"\once \override Staff.Clef.X-offset = -5",
                ],
                site="before",
            ),
            abjad.Clef("treble"),
            abjad.Dynamic("p"),
            abjad.Markup(
                r"""\markup {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    {
                        "( sim. )"
                    }
                }"""
            ),
            trinton.make_custom_dynamic("mfp"),
            trinton.make_custom_dynamic("mfp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 0, 1, -2, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartTrillSpan()],
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=False, exclude=[-2, -1]
        ),
    ),
    trinton.duration_line(
        visible_grace=True,
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[-3, -2, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopTrillSpan()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.talea([100], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["ef''''", "f''''", "gf''''"]]),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_logical_ties_by_index(
            [-4, -3, -2, -1], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([-3, -3, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 10)),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.StopTrillSpan()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([1, 1, 1, 1, 24, -1000], 8),
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3], pitched=True, grace=False
        ),
        pitch_list=["f''", "g,"],
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0, 1, 2, 3])),
    trinton.duration_line(selector=trinton.pleaves(exclude=[0, 1, 2, 3])),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_logical_ties_by_index([0, 2])
    ),
    trinton.change_notehead_command(
        notehead="lowest", selector=trinton.select_logical_ties_by_index([1, 3])
    ),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ffff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, -2, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string=[
                    "Immediately stop shouting,",
                    "assume natural facial expression.",
                ],
                column="\column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                -2,
            ],
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [abjad.Articulation("tremolo-articulation"), abjad.Articulation(">")]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\markup \staffBox #45.5 #48.5 %% #width #height"),
                r"- \tweak padding #12",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #3 \column { \line { "While playing, bare your teeth, widen your eyes," } \line { "furrow and arch your eyebrows," } \line { "and shout like a furious animal." } } } """
                ),
                r"- \tweak padding #1",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-6 { "shake Chains above strings" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-4 { "drop Chains on strings" } } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-1 "( etc. )" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 2]),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="Chains",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, 3], pitched=True),
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
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([1, 1, 1, 1, 24, -1000], 8),
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3], pitched=True, grace=False
        ),
        pitch_list=[["e,,", "d,,"], ["a,,,", "b,,,"]],
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.pleaves(exclude=[0, 1, 2, 3]),
        pitch_list=["d"],
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0, 1, 2, 3])),
    trinton.duration_line(selector=trinton.pleaves(exclude=[0, 1, 2, 3])),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.change_notehead_command(
        notehead="cluster", selector=trinton.select_logical_ties_by_index([0, 1, 2, 3])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index([1, 3], first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.select_logical_ties_by_index([0, 2], first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, 3])),
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="elbow",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="hand-heel",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
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
    trinton.spanner_command(
        strings=[
            trinton.boxed_markup(
                string="elbow",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
            trinton.boxed_markup(
                string="hand-heel",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=-1,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([2, 3], pitched=True),
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
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3, 4], first=True, pitched=True
        ),
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                -2,
                1,
                -5,
                2,
                -4,
                3,
                -3,
                4,
                -2,
                5,
                -1,
                6,
                6,
                6,
            ],
            16,
        )
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["b", "fs'", "c''", "e''", "f''"]]),
    trinton.change_lines(lines=5, clef="treble", invisible_barlines=False),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.Clef.X-extent = ##f"
                    r"\once \override Staff.Clef.X-offset = -3.5",
                ],
                site="before",
            ),
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("mfp"),
            trinton.make_custom_dynamic("mfp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -2, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.duration_line(
        visible_grace=True,
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[-3, -2, -1]),
    ),
    # trinton.duration_line(sustained=True, visible_grace=True, selector=trinton.select_logical_ties_by_index([-3, -2, -1], pitched=True, grace=False)),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.LaissezVibrer()
    #     ],
    #     selector=trinton.select_l
    # ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.talea([100], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["b", "fs'", "c''", "e''", "f''"]]),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    trinton.duration_line(
        sustained=True,
        visible_grace=True,
        selector=trinton.select_logical_ties_by_index(
            [-4, -3, -2, -1], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([-3, -3, -1], pitched=True),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 10)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="Jewellery Wire, XFB",
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
        # tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartPianoPedal(), abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["piano 1 voice"],
)

# globals

trinton.fermata_measures(
    score=score,
    measures=[11],
    fermata="very-long-fermata",
    voice_names=library.all_voice_names,
    font_size=12,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-10,
    extra_offset=2.5,
    tag=None,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string="Tape III ON",
                    # column="\center-column",
                    # font_name="Bodoni72 Book",
                    fontsize=0,
                    string_only=False,
                ),
                r"- \tweak padding #32",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TimeSignature.Y-offset = 28", site="absolute_before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override Score.MeasureSpanner.padding = 26.25",
                site="absolute_before",
            ),
            abjad.LilyPondLiteral(
                r'\tweak text " 37\" " \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
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
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #6 { \override #'(font-name . "Bodoni72 Book Italic") \raise #19 \with-dimensions-from \null { "die flirrende . . ." } }"""
            ),
            library.return_metronome_markup(
                note_value="eighth", tempo=44, padding=11.5, site="closing", hspace=0.5
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BarLine(".|:", site="before"),
            abjad.LilyPondLiteral(
                r'\tweak text "×3" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
            abjad.BarLine(":|.|:", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Score.BarLine.X-extent = #'(2 . 2)", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override TimeSignature.X-offset = -2.7", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BarLine(":|.|:", site="before"),
            abjad.LilyPondLiteral(
                r'\tweak text "×9" \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
            abjad.BarLine(":|.", site="after"),
            abjad.LilyPondLiteral(
                r"\override Score.BarLine.X-extent = #'(-0.5 . -0.5)",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1, -1]),
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3,)),
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
#                 r"- \tweak padding #17.5",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)


trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)",
                site="before",
            ),
        ],
        selector=abjad.select.leaves,
    ),
    voice=score["Global Context"],
)

# breaks

for measure in [3, 4, 5, 7, 8]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )


for measure in [1, 6]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="after")],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

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
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/12",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="12",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
