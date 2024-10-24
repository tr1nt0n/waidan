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

# notation tools


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


def return_metronome_markup(note_value, tempo, padding, metric_modulation=None):
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
        mark = abjad.LilyPondLiteral(
            [
                r"^ \markup {",
                rf"  \raise #{padding} \with-dimensions-from \null",
                r"  \override #'(font-size . 5.5)",
                r"  \concat {",
                f"      {tempo_markup}",
                r"  }",
                r"}",
            ],
            site="after",
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
            site="after",
        )

    return mark
