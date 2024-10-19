import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones
from waidan import library

# tape chord

# score

score = library.waidan_score(
    [
        # breath
        (3, 8),
        # senza vibrato
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        # increasing vibrato
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
    ],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    evans.RhythmHandler(
        evans.talea([1000], 8),
    ),
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
    trinton.noteheads_only(),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.logical_ties(all_except_first=True)
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.RhythmHandler(
        evans.talea([1], 8),
    ),
    abjad.beam,
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
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
        selector=trinton.pleaves(exclude=[0]),
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 11)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(exclude=[-2, -1]), zero_padding=True
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(), zero_padding=True, invisible_center=True
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(0.1),
            evans.make_fancy_gliss(0.2),
            evans.make_fancy_gliss(0.3),
            evans.make_fancy_gliss(0.4),
            evans.make_fancy_gliss(0.5),
            evans.make_fancy_gliss(0.6),
            evans.make_fancy_gliss(0.7),
            evans.make_fancy_gliss(0.8),
            evans.make_fancy_gliss(0.9),
            evans.make_fancy_gliss(1),
            evans.make_fancy_gliss(1.1),
            evans.make_fancy_gliss(1.2),
            evans.make_fancy_gliss(1.3),
            evans.make_fancy_gliss(1.4),
            evans.make_fancy_gliss(1.5),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    abjad.slur,
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 15)),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fmp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0, 8, -1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="poco tast.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-2,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="senza vib.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-2,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, 9], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    voice=score["viola voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([-1, 2, 1, -100], 16)),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.continuous_glissando(zero_padding=True, invisible_center=True),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_leaves_by_index([0]),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([1], pitched=True)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.transparent = ##t", site="before"
            ),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, 2, 2, -1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="brush on body",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-4,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    evans.RhythmHandler(
        evans.talea([1000], 8),
    ),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="e'",
                repeating_ratio="7/6",
                number_of_divisions=3,
                scale_degree=3,
            ),
        ],
    ),
    trinton.noteheads_only(),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.logical_ties(all_except_first=True)
    ),
    trinton.change_lines(lines=5, clef="treble"),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.RhythmHandler(
        evans.talea([3], 16),
    ),
    abjad.beam,
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="e'",
                repeating_ratio="7/6",
                number_of_divisions=3,
                scale_degree=3,
            ),
        ],
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.pleaves(exclude=[0]),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 11)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(exclude=[-1]), zero_padding=True
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(), zero_padding=True, invisible_center=True
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(0.3),
            evans.make_fancy_gliss(0.4),
            evans.make_fancy_gliss(0.5),
            evans.make_fancy_gliss(0.7),
            evans.make_fancy_gliss(0.9),
            evans.make_fancy_gliss(1.1),
            evans.make_fancy_gliss(1.2),
            evans.make_fancy_gliss(1.3),
            evans.make_fancy_gliss(1.4),
            evans.make_fancy_gliss(1.5),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    abjad.slur,
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 15)),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fmp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0, 11, -1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="poco tast.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-2,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7.5,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=None,
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="senza vib.",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-2,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, 9], pitched=True),
        padding=10,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=None,
    ),
    voice=score["cello voice"],
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 1, -1], 8)),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.continuous_glissando(zero_padding=True, invisible_center=True),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.transparent = ##t", site="before"
            ),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 1, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="rub palms on soundboard",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-4,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3,
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
    beam_meter=True,
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([-1, 1, -1], 8)),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.continuous_glissando(zero_padding=True),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_leaves_by_index([0]),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.transparent = ##t", site="before"
            ),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string="air",
            # column="\center-column",
            # font_name="Bodoni72 Book",
            fontsize=-4,
            string_only=True,
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=None,
    ),
    voice=score["accordion 2 voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.return_metronome_markup(
                note_value="dotted quarter",
                tempo=50,
                padding=10,
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

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/sections/01",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/waidan_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
