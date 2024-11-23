import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones
from waidan import library
from waidan import pitch

# tape chord

# score

score = library.waidan_score([(4, 8) for _ in range(0, 30)])

# initial two chords

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 1], 4)),
    evans.PitchHandler(
        [
            ["c''", "d''", "ef'", "f''", "a'", "bf'"],
            ["ef'", "af'", "bf'", "df''", "g''"],
        ]
    ),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.X-offset = -4", site="before"
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Seed Chords" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 30)),
    evans.RhythmHandler(evans.talea([1], 16)),
    evans.PitchHandler(pitch.final_section_chords_piano),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "helianthated alpha permutations" } """
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 30)),
    evans.RhythmHandler(evans.talea([1], 16)),
    evans.PitchHandler(pitch.final_section_chords_harp),
    trinton.noteheads_only(),
    voice=score["harp voice"],
)

trinton.make_sc_file(
    score=score,
    tempo=((1, 4), 20),
    current_directory="/Users/trintonprater/scores/waidan/waidan/pitch",
)

abjad.attach(
    abjad.LilyPondLiteral(r"\override TimeSignature.transparent = ##t", site="before"),
    abjad.select.leaf(score["Global Context"], 0),
)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/pitch/",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="_piano_harp_chords",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
