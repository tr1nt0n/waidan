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
        (9, 16),
        (2, 4),
        (13, 16),
        (3, 4),
        (3, 4),
        (1, 8),
        (5, 4),
    ],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([-16, 16, -11, 6, -19, 9, -1000], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="e'",
                repeating_ratio="7/6",
                number_of_divisions=3,
                scale_degree=1,
            ),
        ],
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.logical_ties(all_except_first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("alto"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("--")],
        selector=trinton.logical_ties(
            exclude=[-1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [-2, -1, -1], pitched=True, grace=False
        ),
    ),
    trinton.duration_line(visible_grace=True),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="senza vib., poco tast.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([0]),
        slash=True,
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(evans.talea([18, 4, -4, 8, 2, 24], 32)),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_thirty_seconds_preprocessor(
        (12, 6, 8, 8, 2, 2, 8, 2, 12)
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 7)),
    evans.PitchHandler(["ef''", "bqf''", "c", "c", "ef''", "bqf''"]),
    trinton.pitch_with_selector_command(
        pitch_list=[["1/1", "7/6"]],
        as_ratios=True,
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True),
    ),
    trinton.detach_command(detachments=[abjad.Markup], selector=trinton.pleaves()),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, grace=False
        ),
        invisible=True,
        pitch_matching=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, -3, -2, -1], pitched=True
        ),
        zero_padding=True,
        # invisible_center=True
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, 3, 6, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            evans.make_fancy_gliss(
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
                1,
                1,
                1,
                1,
                1,
                1,
                1,
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_logical_ties_by_index(
            [0, 2, -3, -1], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("downbow"),
            abjad.Articulation("tenuto"),
            abjad.Articulation("downbow"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 1, 2, 2], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            trinton.make_custom_dynamic("ff mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 4, 4, 5, 5, 6], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="IV",
            # column="\column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="poco pont.",
            # column="\column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index([0, 2], first=True, pitched=True),
        padding=9,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="+ III",
            # column="\column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index([3, 4], first=True, pitched=True),
        padding=6.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="poco pont.",
            # column="\column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_logical_ties_by_index(
            [-3, -1], first=True, pitched=True
        ),
        padding=8,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    voice=score["viola voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(evans.talea([-9, 4, -100], 16)),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True)
    ),
    library.change_viola_staff(
        clef_name="alto", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tremolo-articulation"),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-13 { \center-column { \line { "Hold all seven Stones loosely in your hands," } \line { "and cup your hands around the microphone." } \line { "Rotate the hands gently," } \line { "allowing the Stones to roll." } } } } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"p"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["viola voice"],
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1], pitched=True),
    ),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(evans.talea([9, 2, -1, 2, -3, 13], 16)),
    evans.PitchHandler(["g'", "cqs''", "cqs''", "g'"]),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [1, 2], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((6, 3, 4, 4, 6, 1, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    evans.RhythmHandler(
        evans.talea(
            [-4, -2, 2, 7, 2, 1, -1, 3, 2, 1, -100], 16, extra_counts=[0, 1, 0, 0]
        )
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 3, -1], pitched=True, grace=False
        ),
        invisible=True,
    ),
    evans.PitchHandler(
        ["g'", "g'", "d''", "b'''", "c'''", "d'''", "f'", "d''", "f'", "a'"],
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([2, 3, 4, 5], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([6, 7, 8, 9], pitched=True),
        zero_padding=True,
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
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartBeam(),
            abjad.StopBeam(),
        ],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="trumpet embouchure",
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
            trinton.boxed_markup(
                string="Env ON",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
            trinton.boxed_markup(
                string="Env OFF",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 2, 3, 3, 4, 4, 6, 6, 7, -1], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index([6], first=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Soprano" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1, 1, 1, 1000)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    voice=score["baritonesaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(evans.talea([-9, 4, -100], 16)),
    library.multiphonic_trem_noteheads(
        selector=trinton.select_leaves_by_index([0], pitched=True), preprolated=True
    ),
    trinton.invisible_rests(),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Baritone" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([2, 2, 3]),
    ),
    voice=score["baritonesaxophone voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([-16, 14, -10, 1000], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["e'"]),
    evans.PitchHandler(["7/6"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("--")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.duration_line(visible_grace=True),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="senza vib., poco tast.",
            # column="\center-column",
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
        command="",
        tag=None,
        tweaks=None,
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
                r"- \tweak padding #7",
            ),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        evans.talea(
            [-8, -3, 4, -6, 2, 8, 12],
            32,
            extra_counts=[
                0,
                -1,
                0,
                0,
                0,
            ],
        )
    ),
    evans.PitchHandler(["b'"]),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.hooked_spanner_command(
        string="\gridato-twist-bow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=2,
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
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        # tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                3,
            ],
        ),
        peaks=[0, 5, 0, 0],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[25, 0, 2, 0],
        divisions=[4],
        counts=[1],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=2,
        forget=False,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [-3, -2],
        ),
        peaks=[0, 5, 2, 0],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[1, 2, 8],
        divisions=[4],
        counts=[1],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=2,
        forget=False,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"f"')],
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Dots.staff-position = #-2", site="before"
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"\tremolo-largo",
            r"\tremolo-stretto",
        ],
        selector=trinton.select_leaves_by_index([-3, -2, -2, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=6.5,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="Three",
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 2, 2, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(
        evans.talea(
            [3, 3, 3, 8, 13],
            16,
        )
    ),
    evans.PitchHandler(["b'"]),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea([2, 3, 2, 2, 2, -2, 2, -2, -2, 2, 2, -1, -2, 2, 2], 16)
        ),
        direction=abjad.UP,
        voice_name="finger percussion voice",
        # preprocessor=trinton.fuse_eighths_preprocessor((9, 10, 7)),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((9, 8, 6, 1, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.PitchHandler(["e''''"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = 18", site="before"
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=False),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 8, 10, -3, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 \raise #4 { \hspace #-19 "finger percussion on String IV:" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 4]),
        direction=abjad.UP,
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
        ],
        selector=trinton.select_leaves_by_index([8]),
        direction=abjad.UP,
    ),
    voice=score["finger percussion voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [2, 3, -1], pitched=True, grace=False
        ),
        pitch_matching=True,
    ),
    trinton.hooked_spanner_command(
        string="\gridato-twist-bow",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=4,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -2"],
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="back of body",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
        direction=None,
        right_padding=4,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        # tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [0],
        ),
        peaks=[0, 2],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[1],
        divisions=[2],
        counts=[1],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=2,
        forget=False,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [1],
        ),
        peaks=[0, 3.5],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[1],
        divisions=[2],
        counts=[1],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=2,
        forget=False,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [2],
        ),
        peaks=[0, 5],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[1],
        divisions=[2],
        counts=[1],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=2,
        forget=False,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [6],
        ),
        peaks=[
            0,
            5,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            1,
            0.1,
            4,
            0.1,
            1,
            0.1,
            4,
            0.1,
            4,
            0.1,
            4.5,
            1,
            3,
            2,
            4,
            3,
            5,
            1,
            1.5,
            0.5,
            1,
            0.1,
            5,
        ],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[
            1,
            0.1,
            0.1,
            0.1,
            0.1,
            0.1,
            0.1,
            1,
            1,
            0.1,
            0.1,
            0.1,
            0.1,
            0.5,
            1,
            0.1,
            0.2,
            0.1,
            0.05,
            0.1,
            0.1,
            0.3,
            0.05,
            0.3,
            0.05,
            0.3,
            0.05,
            0.6,
            0.06,
            0.8,
            0.08,
            1,
            0.1,
            0.1,
            0.1,
            0.1,
            0.1,
            3,
        ],
        divisions=[
            39,
        ],
        counts=[
            1,
        ],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=-4,
        forget=True,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index(
            [4],
        ),
        peaks=[
            0,
            1.5,
            0.5,
            1.5,
            0.5,
            1.5,
            0.7,
            4,
            1,
            2,
            0.5,
            2,
            1,
            1.5,
            0.5,
            3,
            1,
            2,
            1,
            2,
            0.2,
            5,
            0,
        ],
        peak_direction=abjad.UP,
        anchor_point_step_sizes=[
            1,
            0.2,
            0.1,
            0.2,
            0.1,
            0.2,
            1.5,
            0.2,
            0.1,
            0.2,
            0.1,
            0.2,
            0.1,
            0.2,
            1,
            0.2,
            0.1,
            0.2,
            0.1,
            0.2,
            1.5,
            1,
        ],
        divisions=[23],
        counts=[1],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=2,
        forget=False,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Voice.Dots.staff-position = #-2", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\revert Voice.Dots.staff-position", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, 2]),
    ),
    voice=score["cello voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 7)),
    library.contour_staff(
        clef=None,
        reset=True,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        force_clef=False,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.spanner_command(
        strings=[r"\somatic-position-four", r"\somatic-position-five"],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 6.5"),
        ],
        right_padding=0,
        direction=None,
        full_string=True,
        command="",
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
        end_hook_right_padding=9,
        tag=None,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(evans.talea([-9, 4, -100], 16)),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        # color=False,
        # sustained=False,
        # visible_grace=False,
        # on_beat_graces=False,
    ),
    evans.PitchHandler([["c''", "a'"]]),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    library.change_viola_staff(
        clef_name="stringing",
        selector=trinton.select_leaves_by_index([0], grace=False, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=["XFB", "legno molto pont.", "crine dietro pont."],
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
        # tweaks=[r"- \tweak font-size -4" r"- \tweak Y-offset -1"],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation("downbow"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    voice=score["cello voice"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                2,
                3,
                2,
            ],
            16,
        )
    ),
    evans.PitchHandler(["d''", "g'"]),
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
    abjad.beam,
    trinton.tremolo_command(),
    trinton.continuous_glissando(),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("fp"),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["harp voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(evans.tuplet([(1,), (2, 2, 1), (-1,), (-2, 2, 1)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.tuplet([(-1, 2, 2, 2, -1), (-2, 2, 1), (-1,), (-2, 2, 1)])
        ),
        direction=abjad.UP,
        voice_name="harp stone voice",
        preprocessor=trinton.fuse_sixteenths_preprocessor((8, 6, 1, 6)),
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((8, 6, 1, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["e''''"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = 18", site="before"
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=False),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 3, 5, 7, 9, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 \raise #7 { \hspace #-11 "strike and scrape Stones:" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    library.stone_arrow_noteheads(
        notehead_list=["right-down", "left", "right-up"],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"ff"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
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
                r"- \tweak padding #15",
            ),
        ],
        selector=trinton.select_leaves_by_index([5]),
        direction=abjad.UP,
    ),
    voice=score["harp stone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.PitchHandler(
        [
            "b'",
            ["bf,", "bf,,"],
            "b'",
            "b'",
            "b'",
            "b'",
        ]
    ),
    library.contour_staff(
        clef=None,
        reset=True,
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
        force_clef=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([1]),
    ),
    library.contour_staff(
        clef="harp strings",
        reset=True,
        selector=trinton.select_leaves_by_index([2, -1], pitched=True),
        force_clef=True,
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(exclude=[1])),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.LilyPondLiteral(
                    [r"\slapped", r"\override NoteHead.no-ledgers = ##t"],
                    site="before",
                ),
                abjad.LilyPondLiteral(
                    [r"\revert-noteheads", r"\revert NoteHead.no-ledgers"],
                    site="absolute_after",
                ),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 0, 2, -1], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 3, 5, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.bundle(abjad.Dynamic("ff"), r"- \tweak Y-offset -12"),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, 1, -1]),
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0])),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="pince",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([2, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[r"- \tweak Y-offset 3"],
    ),
    voice=score["harp voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 11)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.spanner_command(
        strings=[
            r"\somatic-position-one",
            r"\somatic-position-two",
            r"\somatic-position-three",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 2, 2, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 5"),
        ],
        right_padding=0,
        direction=None,
        full_string=True,
        command="",
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    voice=score["harp voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([4, 4, -8, 16, -11, 6, -1000], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            "c'",
            "c'",
            ["e'", "g'"],
            ["e'", "g'"],
        ]
    ),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="bellows",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        padding=4.5,
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
            r"\tremolo-moderato",
            r"\tremolo-largo",
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
    trinton.change_lines(
        lines=5,
        clef="treble",
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([2], pitched=True, grace=False),
    ),
    trinton.duration_line(
        visible_grace=True, selector=trinton.logical_ties(exclude=[0, 1])
    ),
    library.accelerando_trills(
        initial_width=10,
        y_scale=1.5,
        speed_factor=0.1,
        thickness=0.005,
        selector=trinton.select_leaves_by_index([2, 4], pitched=True),
        accordion_markup=True,
    ),
    library.accelerando_trills(
        initial_width=0.4,
        y_scale=1.5,
        speed_factor=-1,
        thickness=0.005,
        selector=trinton.select_leaves_by_index([6, 8], pitched=True),
        accordion_markup=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    \column {
                        \line {
                            "trilling between notated pitch and random adjacent diads"
                        }
                    }
                }"""
            ),
            abjad.Markup(
                r"""\markup {
                    \override #'(font-name . "Bodoni72 Book Italic")
                    \column {
                        \line {
                            "( sim. )"
                        }
                    }
                }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([2, 5], pitched=True, grace=False),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2]),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()]
        ),
        selector=trinton.select_leaves_by_index([2, 2, 5, -3, -3, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([9, 1, -1000], 16)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(["bf,", "aqs,"]),
    trinton.continuous_glissando(),
    trinton.linear_attachment_command(
        [
            abjad.Clef("bass"),
            abjad.StartSlur(),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mf"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.talea([1000], 16)),
    evans.PitchHandler([["a,", "bf,,"]]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("f")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["accordion 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((6, 1, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([-1, 1], 4)),
    trinton.change_lines(lines=1, clef="percussion"),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "strike and scrape Stones" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Dynamic('"fp"'),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.tremolo_command(),
    voice=score["accordion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.tuplet([(-3, 2, 2), (-1,), (-3, 2, 2)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(),
    library.stone_arrow_noteheads(
        notehead_list=["left-down", "right", "left-up"], selector=trinton.pleaves()
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic('"ff"')],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2, 4, -1]),
    ),
    voice=score["accordion 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((6, 1, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 11)),
    evans.RhythmHandler(
        evans.talea([6, 6, 1, 5, 5], 8),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.spanner_command(
        strings=[
            r"\somatic-position-two",
            r"\somatic-position-three",
            r"\somatic-position-one",
            r"\somatic-position-four",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 2, 2, 4, 4, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        tweaks=[
            abjad.Tweak(r"- \tweak Y-extent ##f"),
            abjad.Tweak(r"- \tweak Y-offset 5"),
        ],
        right_padding=0,
        direction=None,
        full_string=True,
        command="",
        end_hook=True,
        end_hook_style="dashed-line-with-hook",
        end_hook_right_padding=0,
        tag=None,
    ),
    voice=score["accordion 1 voice"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.tuplet([(-1, 1, 1), (-1, 1, 1), (1, -3, 1, -3)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(),
    evans.PitchHandler(
        [["e,,", "d,,", "c,,"]],
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 5],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -2], pitched=True),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((4, 5, 8)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(evans.talea([-4, 2, 1, -2, 2, 2], 16)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(["f''", "g,"]),
    trinton.change_lines(
        lines=1,
        invisible_barlines=False,
        clef="percussion",
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ],
        ),
        selector=trinton.pleaves(grace=False),
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "lift" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-1 "drop" } """
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-1 "( etc. )" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 2], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Stem.direction = #DOWN", site="before"
            )
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.Dynamic('"ffff"'),
            abjad.Dynamic("pppp"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            # abjad.bundle(
            trinton.boxed_markup(
                string="Gran OFF",
                # column="\center-column",
                # font_name="Bodoni72 Book",
                fontsize=0,
                string_only=False,
            ),
            #     r"- \tweak padding #3",
            # ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
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
    lambda _: trinton.select_target(_, (7, 8)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[abjad.StopPianoPedal()],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(evans.talea([-9, 4, -100], 16)),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        # color=False,
        # sustained=False,
        # visible_grace=False,
        # on_beat_graces=False,
    ),
    evans.PitchHandler([["b", "fs'", "c''", "e''", "f''"]]),
    trinton.change_lines(
        lines=5,
        clef="treble",
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([1]),
    ),
    trinton.noteheads_only(),
    trinton.invisible_rests(),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="Jewellery Wire, XFB",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
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
        attachments=[
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="mallets on low strings",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.5,
        direction=None,
        right_padding=1.5,
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
        notehead_list=["right", "left-down", "left-up", "right-down", "right-up"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(
        evans.talea([3, 3, 3, -1, 2, 2, 2, -1, -2, 2, 2, -1, -2, 2, 2], 16)
    ),
    trinton.linear_attachment_command(
        attachments=cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 7, 8, 10, 12, -1],
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0, 1, 2]),
        visible_grace=True,
        sustained=True,
    ),
    library.stone_arrow_noteheads(
        notehead_list=["right", "left-down", "left-up", "right-down", "right-up"],
        selector=trinton.pleaves(exclude=[0, 1, 2], grace=False),
    ),
    trinton.spanner_command(
        strings=[r"\tremolo-largo", r"\tremolo-stretto", r"\tremolo-largo"],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 3], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=5.5,
        tweaks=None,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        tag=None,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.Dynamic('"ff"'),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, 3, 4]),
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

for measure in [
    2,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
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
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TimeSignature.Y-offset = 15", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
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
                r"- \tweak padding #17",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

for measure in [9, 11]:
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
    measures=[10],
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
    lambda _: trinton.select_target(_, (8,)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="quarter",
                tempo=("105", "15", "32"),
                padding=16,
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

# breaks

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="after")],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

for measure in [2, 4, 5, 9, 10]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\break", site="after")],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

for measure in [6, 8]:
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
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/05",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
