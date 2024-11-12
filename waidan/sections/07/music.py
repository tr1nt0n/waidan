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

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.tuplet([(-5, 1)])),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.invisible_rests(),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast Stones" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["viola voice"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="( trumpet embouchure )",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["baritonesaxophone voice"],
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(-7, 1, -2)])),
    trinton.duration_line(),
    trinton.invisible_rests(),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.pleaves(grace=False)
    ),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tremolo-articulation"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.tuplet([(-3, 2)])),
    trinton.duration_line(),
    trinton.invisible_rests(),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tremolo-articulation"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet([(-2, 3, -2, 3, -2, 5, -3)]),
    ),
    trinton.duration_line(),
    trinton.invisible_rests(),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tremolo-articulation"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [abjad.Dynamic("pp"), abjad.StartHairpin("<|"), abjad.Dynamic("mf")]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 2, 3], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("|>o"), abjad.StopHairpin()],
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True
        ),
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
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True, first=True),
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
    voice=score["accordion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="bellows",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-1,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
    voice=score["accordion 1 voice"],
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
