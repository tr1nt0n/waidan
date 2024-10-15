import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones
from waidan import library

# tape chord

# score

score = trinton.make_empty_score(
    instruments=[
        abjad.Viola(),
        abjad.BaritoneSaxophone(),
        abjad.Cello(),
        abjad.Harp(),
        abjad.Accordion(),
        abjad.Piano(),
    ],
    groups=[
        1,
        1,
        1,
        1,
        1,
        1,
    ],
    time_signatures=[
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (4, 8),
        (3, 8),
    ],
    filler=abjad.Skip,
)

# define tuplets

logistic_map = [_ for _ in trinton.logistic_map(x=4, r=3.56, n=9) if _ > 0]

logistic_map = evans.Sequence(logistic_map).grouper([3, 4, 2])

ametric_tuplets = []

for group in logistic_map:
    group = tuple(group)
    ametric_tuplets.append(group)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(evans.tuplet(ametric_tuplets, treat_tuplets=False)),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((11,)),
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 1), treat_tuplets=False)
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    voice=score["baritonesaxophone voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((6,)),
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 2), treat_tuplets=False)
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5,)),
)

# harp music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 1), treat_tuplets=False)
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((9,)),
)

# accordion music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 0), treat_tuplets=False)
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    voice=score["accordion voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((7,)),
)

# piano music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(
        evans.tuplet(trinton.rotated_sequence(ametric_tuplets, 2), treat_tuplets=False)
    ),
    rmakers.duration_bracket,
    trinton.noteheads_only(),
    voice=score["piano voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((13,)),
)

# globals

library.write_instrument_names(score=score)
library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/waidan/waidan/rhythm/",
    build_path="/Users/trintonprater/scores/waidan/waidan/build",
    segment_name="_superheroes_1",
    includes=[
        "/Users/trintonprater/scores/waidan/waidan/build/waidan_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
