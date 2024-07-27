import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones

# tape chord

# score

score = trinton.make_empty_score(
    instruments=[
        abjad.MezzoSopranoVoice(),
        # abjad.Viola(),
        # abjad.SopranoSaxophone(),
        # abjad.BaritoneSaxophone(),
        # abjad.Cello(),
        # abjad.Harp(),
        # abjad.Accordion(),
        # abjad.Piano(),
    ],
    groups=[
        1,
        # 1,
        # 6,
    ],
    time_signatures=[
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (2, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (2, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (2, 4),
    ],
    filler=abjad.Skip,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 19)),
    evans.RhythmHandler(
        evans.talea([10000], 4),
    ),
    voice=score["mezzosopranovoice voice"],
)

# trinton.make_sc_file(
#     score=score,
#     tempo=((1, 4), 60),
#     current_directory="/Users/trintonprater/scores/waidan/waidan/pitch",
# )

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/pitch/",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="_tape_chord_1",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/waidan_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
