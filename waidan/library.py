import abjad
import baca
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones

# immutables


def waidan_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Violin(),
            abjad.Viola(),
            abjad.BaritoneSaxophone(),
            abjad.Cello(),
            abjad.Harp(),
            abjad.Accordion(),
            abjad.Accordion(),
            abjad.Piano(),
            abjad.Piano(),
        ],
        groups=[
            1,
            1,
            1,
            1,
            1,
            2,
            2,
        ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


all_voice_names = eval(
    """[
        "violin voice",
        "viola voice",
        "baritonesaxophone voice",
        "cello voice",
        "harp voice",
        "accordion 1 voice",
        "accordion 2 voice",
        "piano 1 voice",
        "piano 2 voice",
    ]"""
)


first_voice_names = eval(
    """[
        "violin voice",
        "viola voice",
        "baritonesaxophone voice",
        "cello voice",
        "harp voice",
        "accordion 1 voice",
        "piano 1 voice",
    ]"""
)

bari_multiphonic_1 = r"\markup \override #'(size . .7) { \woodwind-diagram #'baritone-saxophone #'((cc . (one two three four five)) (lh . ()) (rh . (low-c))) }"

bari_multiphonic_2 = r"\markup \override #'(size . .7) { \woodwind-diagram #'baritone-saxophone #'((cc . (one two three four five)) (lh . ()) (rh . ())) }"

# notation tools


def manual_beam_positions(positions, selector=abjad.select.leaves):
    def beaming(argument):
        selections = selector(argument)
        leaves = abjad.select.leaves(selections)
        start_beam_leaves = []

        for leaf in leaves:
            if abjad.get.has_indicator(leaf, abjad.StartBeam):
                start_beam_leaves.append(leaf)

        for start_beam_leaf in start_beam_leaves:
            start_beam = abjad.get.indicator(start_beam_leaf, abjad.StartBeam)

            start_beam = abjad.bundle(
                start_beam,
                rf"- \tweak Beam.positions #'({positions[0]} . {positions[-1]})",
            )

            abjad.detach(abjad.StartBeam, start_beam_leaf)

            abjad.attach(start_beam, start_beam_leaf)

    return beaming


def change_viola_staff(
    clef_name, selector=trinton.select_leaves_by_index([0], pitched=True)
):
    _clef_name_to_info = {
        "body": (3, [7, 0, -7]),
        "back-of-body": (2, [7, -7]),
        "string": (5, [7, 4, 6, 0, -7]),
        "stringing": (4,),
        "alto": (5, "revert"),
    }

    def change(argument):
        selections = selector(argument)
        first_leaf = abjad.select.leaf(selections, 0)

        if clef_name != "alto":
            clef = f"\{clef_name}-clef"
            clef_line_count = _clef_name_to_info[clef_name][0]

            literal_strings = [
                r"\override Staff.NoteHead.no-ledgers = ##t"
                rf"\staff-line-count {clef_line_count}",
                r"\override Staff.Clef.stencil = #ly:text-interface::print",
                f"\override Staff.Clef.text = {clef}",
                r"\set Staff.forceClef = ##t",
            ]

            if clef_name != "stringing":
                clef_line_positions = _clef_name_to_info[clef_name][-1]
                clef_line_positions = tuple(clef_line_positions)
                clef_line_positions = str(clef_line_positions)
                clef_line_positions = clef_line_positions.replace(",", "")

                literal_strings.append(
                    f"\override Staff.StaffSymbol.line-positions = #'{clef_line_positions}"
                )

            literal = abjad.LilyPondLiteral(
                literal_strings,
                site="before",
            )

            abjad.attach(abjad.Clef("treble"), first_leaf)

            abjad.attach(literal, first_leaf)

        else:
            literal = abjad.LilyPondLiteral(
                [
                    r"\revert Staff.NoteHead.no-ledgers",
                    r"\staff-line-count 5",
                    r"\revert Staff.StaffSymbol.line-positions",
                    r"\revert Staff.Clef.stencil",
                    r"\set Staff.forceClef = ##t",
                ],
                site="before",
            )

            abjad.attach(abjad.Clef("alto"), first_leaf)
            abjad.attach(literal, first_leaf)

    return change


def multiphonic_trem_noteheads(selector, preprolated=True):
    def multi_trem(argument):
        selections = selector(argument)
        ties = abjad.select.logical_ties(selections)
        tie_duration = abjad.get.duration(selections, preprolated=preprolated)
        tremolo_count = tie_duration * 16
        tremolo_count = int(tremolo_count)

        tremolo_container = abjad.TremoloContainer(
            count=tremolo_count, components="d32 d"
        )

        opening_literal = abjad.LilyPondLiteral(
            [
                r"\once \override NoteHead.X-extent = #'(-1.5 . 2)",
                r"\override NoteHead.no-ledgers = ##t",
                r"\override NoteHead.stencil = #ly:text-interface::print",
                rf"\once \override NoteHead.text = {bari_multiphonic_1}"
                rf"\once \override NoteHead.X-offset = 0.5",
            ],
            site="before",
        )

        center_literal = abjad.LilyPondLiteral(
            [
                r"\once \override NoteHead.X-extent = #'(-1.5 . -1.5)",
                rf"\once \override NoteHead.text = {bari_multiphonic_2}",
            ],
            site="before",
        )

        closing_literal = abjad.LilyPondLiteral(
            [
                # r"\revert Stem.X-extent",
                r"\revert NoteHead.stencil",
                r"\revert NoteHead.no-ledgers",
            ],
            site="absolute_after",
        )

        tremolo_container_leaves = abjad.select.leaves(tremolo_container)

        abjad.attach(opening_literal, tremolo_container_leaves[0])
        abjad.attach(center_literal, tremolo_container_leaves[1])
        abjad.attach(closing_literal, tremolo_container_leaves[-1])

        bend_after_bundle = abjad.bundle(
            abjad.BendAfter(0),
            r"- \tweak Y-extent ##f",
            r"- \tweak Y-offset 6.5",
        )

        abjad.attach(bend_after_bundle, tremolo_container_leaves[-1])

        abjad.mutate.replace(selections, tremolo_container)

    return multi_trem


def graphic_bow_pressure_spanner(
    selector=trinton.logical_ties(),
    peaks=[0, 1, 4, 2],
    peak_direction=abjad.DOWN,
    anchor_point_step_sizes=[1, 0.5, 1, 0.25],  # must be greater than 1
    divisions=[4, 5],
    counts=[1, 3, 1, 2],
    cyclic=True,
    left_broken_text=None,
    left_text=None,
    right_padding=None,
    right_text=None,
    padding=2,
    forget=False,
):
    if peak_direction == abjad.UP:
        peaks = [0 - _ for _ in peaks]
    cyc_peaks = evans.CyclicList(peaks, forget=forget)
    cyc_divisions = evans.CyclicList(divisions, forget=forget)
    cyc_anchor_points = evans.CyclicList(anchor_point_step_sizes, forget=forget)

    def returned_function(argument):
        selections = selector(argument)
        ties = abjad.select.logical_ties(selections, pitched=True)
        if counts is not None:
            groups = abjad.select.partition_by_counts(
                ties, counts, cyclic=cyclic, overhang=cyclic
            )
            for group in groups:
                final = abjad.select.leaf(group, -1)
                next_leaf = abjad.get.leaf(final, 1)
                group.append(next_leaf)
            for group in groups:
                current_divisions = cyc_divisions(r=1)[0]
                current_peaks = cyc_peaks(r=current_divisions)
                current_anchor_point_step_sizes = cyc_anchor_points(
                    r=current_divisions - 1
                )
                normalized_step_sizes = evans.Sequence(
                    current_anchor_point_step_sizes
                ).normalize_to_sum(1)
                summed_steps = abjad.math.cumulative_sums(normalized_step_sizes)
                zipped_peaks_and_positions = [
                    _ for _ in zip(summed_steps, current_peaks)
                ]
                pairs = str(
                    tuple([f"({x} . {y})" for x, y in zipped_peaks_and_positions])
                )
                current_peaks = pairs.replace(",", "")
                current_peaks = current_peaks.replace("'", "")
                constructed_string = rf"\startBowSpan #'{current_peaks}"
                start_indicator = abjad.StartTextSpan(
                    command=constructed_string,
                    left_broken_text=left_broken_text,
                    left_text=left_text,
                    right_padding=right_padding,
                    right_text=right_text,
                )
                bundle = abjad.bundle(
                    start_indicator,
                    abjad.Tweak(rf"- \tweak padding {padding}"),
                    abjad.Tweak(r"- \tweak Y-extent ##f"),
                    abjad.Tweak(r"- \tweak Y-offset 0"),
                )
                stop_indicator = abjad.StopTextSpan(
                    command=r"\stopBowSpan",
                )
                abjad.attach(bundle, abjad.select.leaf(group, 0))
                abjad.attach(stop_indicator, abjad.select.leaf(group, -1))

    return returned_function


def contour_staff(
    clef=None,
    reset=False,
    selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    force_clef=True,
):
    def change(argument):
        selections = selector(argument)
        first_leaf = abjad.select.leaf(selections, 0)
        last_leaf = abjad.select.leaf(selections, -1)

        literal_strings = [
            r"\override Staff.NoteHead.no-ledgers = ##t" r"\staff-line-count 2",
            r"\override Staff.StaffSymbol.line-positions = #'(7  -7)",
            # f"\override Staff.Clef.text = {clef}",
        ]

        if clef == "harp strings":
            literal_strings.append(
                r"\override Staff.Clef.stencil = #ly:text-interface::print"
            )
            literal_strings.append(r"\override Staff.Clef.X-extent = #'(9 . 9)")
            literal_strings.append(
                r"""\override Staff.Clef.text = \markup \fontsize #-1 { \override #'(font-name . "Bodoni72 Book") \raise #4.1 \center-column { \line { "upper frame" } \line { \fontsize #27 \with-color #white "." } \line { "lower frame" } } }""",
            )
            if force_clef is True:
                literal_strings.append(
                    r"\set Staff.forceClef = ##t",
                )

        else:
            literal_strings.append(r"\override Staff.Clef.stencil = ##f")

        open_literal = abjad.LilyPondLiteral(
            literal_strings,
            site="before",
        )

        abjad.attach(open_literal, first_leaf)
        abjad.attach(abjad.Clef("treble"), first_leaf)

        if reset is True:
            close_literal = abjad.LilyPondLiteral(
                [
                    r"\revert Staff.NoteHead.no-ledgers",
                    r"\staff-line-count 5",
                    r"\revert Staff.StaffSymbol.line-positions",
                    r"\revert Staff.Clef.stencil",
                    r"\revert Staff.Clef.X-extent",
                ],
                site="absolute_after",
            )

            abjad.attach(close_literal, last_leaf)

    return change


def accelerando_trills(
    initial_width,
    y_scale,
    speed_factor,
    thickness=3,
    selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    accordion_markup=False,
):
    def trills(argument):
        if speed_factor > 0.9:
            raise Exception("Speed factor must be a float value under 1.")
        selections = selector(argument)

        it = iter(selections)
        tups = [*zip(it, it)]

        if accordion_markup is True:
            # start_trill = abjad.bundle(
            #     abjad.StartTrillSpan(),
            #     r"""- \tweak bound-details.left.text \markup \with-color "goldenrod" { \center-column { \fontsize #5 \override #'(font-name . "ekmelos") \line { \char ##xe0BE | \char ##xe0A4 } } }""",
            # )
            start_trill = abjad.bundle(
                abjad.LilyPondLiteral(r"\slow-fast-trill", site="after"),
                rf"- \tweak details.squiggle-Y-scale {y_scale}",
                rf"- \tweak details.squiggle-initial-width {initial_width}",
                rf"- \tweak details.squiggle-speed-factor {speed_factor}",
                rf"- \tweak thickness {thickness}",
            )

        else:
            start_trill = abjad.bundle(
                abjad.LilyPondLiteral(r"\slow-fast-trill", site="after"),
                rf"- \tweak details.squiggle-Y-scale {y_scale}",
                rf"- \tweak details.squiggle-initial-width {initial_width}",
                rf"- \tweak details.squiggle-speed-factor {speed_factor}",
                rf"- \tweak thickness {thickness}",
            )

        stop_trill = abjad.StopTrillSpan()

        for tup in tups:
            abjad.attach(start_trill, tup[0])

            abjad.attach(stop_trill, tup[-1])

    return trills


# markups

all_instrument_names = [
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Conductor }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Viola }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Saxophone }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Violoncello }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Harp }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Accordion }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Piano }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Conductor }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ vla }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ sax }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ vc }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ hp }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ acc }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic"){ pno }'
        ),
    ),
]


def write_instrument_names(score):
    for voice_name, markup in zip(first_voice_names, all_instrument_names):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


def write_short_instrument_names(score):
    for voice_name, markup in zip(first_voice_names, all_short_instrument_names):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
            tag=abjad.Tag("+SCORE"),
        )


def return_metronome_markup(
    note_value, tempo, padding, metric_modulation=None, site="after", hspace=None
):
    _note_value_to_number_pair = {
        "sixteenth": (4, 0),
        "eighth": (3, 0),
        "dotted eighth": (3, 1),
        "quarter": (2, 0),
        "dotted quarter": (2, 1),
        "half": (1, 0),
        "dotted half": (1, 1),
        "whole": (0, 0),
    }

    tempo_markup = f"""\\abjad-metronome-mark-markup #{_note_value_to_number_pair[note_value][0]} #{_note_value_to_number_pair[note_value][-1]} #2 #" {tempo} " """

    if metric_modulation is None:
        literal_strings = [
            r"^ \markup {",
            rf"  \raise #{padding} \with-dimensions-from \null",
            r"  \override #'(font-size . 5.5)",
            r"  \concat {",
            f"      {tempo_markup}",
            r"  }",
            r"}",
        ]

        if hspace is not None:
            literal_strings.insert(1, rf"\hspace #{hspace}")

        mark = abjad.LilyPondLiteral(
            literal_strings,
            site=site,
        )

    else:
        mark = abjad.LilyPondLiteral(
            [
                r"^ \markup {",
                r"  \hspace #-9",
                rf"  \raise #{padding} \with-dimensions-from \null",
                r"  \override #'(font-size . 5.5)",
                r"  \concat {",
                f"  [{abjad.lilypond(metric_modulation)[8:]}]",
                r"      \hspace #1",
                f"      {tempo_markup}",
                r"  }",
                r"}",
            ],
            site=site,
        )

    return mark


# beautification tools


def reset_line_positions(score, voice_names):
    for voice_name in voice_names:

        reset = abjad.LilyPondLiteral(
            [
                r"\once \revert Staff.StaffSymbol.line-positions",
                r"\once \override Staff.Clef.stencil = ##f",
            ],
            site="before",
        )

        literal_strings = [
            r"\once \revert Staff.StaffSymbol.line-positions",
            r"\once \override Staff.Clef.stencil = ##f",
        ]

        if voice_name == "viola voice":
            literal_strings.append(
                r"\once \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)"
            )

        else:
            literal_strings.append(
                r"\once \override Staff.BarLine.bar-extent = #'(-2 . 2)"
            )

        fermata_measure_literal = abjad.LilyPondLiteral(
            literal_strings,
            site="before",
        )

        voice = score[voice_name]

        shards = abjad.select.group_by_measure(voice)
        relevant_shards = []
        for shard in shards:
            if (
                all(isinstance(leaf, abjad.Rest) for leaf in shard)
                or all(isinstance(leaf, abjad.MultimeasureRest) for leaf in shard)
                or all(isinstance(leaf, abjad.Skip) for leaf in shard)
            ):
                relevant_shards.append(shard)

        for shard in relevant_shards:
            shard_duration = abjad.get.duration(shard)
            if shard_duration == abjad.Duration((1, 8)):
                abjad.attach(fermata_measure_literal, shard[0])
            else:
                abjad.attach(reset, shard[0])
