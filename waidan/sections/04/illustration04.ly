  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/waidan/waidan/build/section-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 3/8
            s1 * 3/8
              %! +SCORE
            \noPageBreak
              %! +SCORE
            \once \override TimeSignature.X-offset = -6.5
            \time 2/4
            s1 * 1/2
                ^ \markup {
                \hspace #-3
                  \raise #11 \with-dimensions-from \null
                  \override #'(font-size . 5.5)
                  \concat {
                      \abjad-metronome-mark-markup #2 #0 #2 #" 54 " 
                  }
                }
            - \tweak padding #18
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { ALL STAND }
            \time 4/8
            s1 * 1/2
                ^ \markup {
                  \hspace #-9
                  \raise #17.5 \with-dimensions-from \null
                  \override #'(font-size . 5.5)
                  \concat {
                  [\abjad-metric-modulation #4 #1 #3 #0 #'(1 . 1)]
                      \hspace #1
                      \abjad-metronome-mark-markup #3 #0 #2 #" 144 " 
                  }
                }
            \time 3/8
            s1 * 3/8
        }
        \context StaffGroup = "Staff Group"
        <<
            \context Staff = "violin staff"
            {
                \context Voice = "violin voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
                      %! +SCORE
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
                    s1 * 5/4
                    s1 * 3/8
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 3/8
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
                {
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/24
                    {
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \revert Staff.NoteHead.no-ledgers
                        \staff-line-count 5
                        \revert Staff.StaffSymbol.line-positions
                        \revert Staff.Clef.stencil
                        \set Staff.forceClef = ##t
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
                        \clef "alto"
                        r2.
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Stones" } 
                        \staff-line-count 1
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \clef "percussion"
                        \tweak style #'cross
                        c'4
                        \ppp
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "tap" } 
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'8.
                        \pp
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'16
                        \ppp
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'8.
                        \p
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'16
                        \pp
                    }
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \context Score = "Score"
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \context RhythmicStaff = "Rhythmic_Staff"
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = 5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = 4
                                    \override TupletBracket.padding = 1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = 0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c'4.
                                }
                            >>
                            \layout
                            {
                                indent = 0
                                ragged-right = ##t
                            }
                        }
                    \times 1/1
                    {
                        \once \override Beam.grow-direction = #right
                        \tweak style #'cross
                        c'32 * 117/32
                        [
                        - \tweak font-name "Bodoni72 Book Italic" 
                        - \tweak padding #2
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "( tap )" } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \upright { "rub" }
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpan
                        \<
                        \tweak style #'cross
                        c'32 * 99/32
                        \tweak style #'cross
                        c'32 * 69/32
                        \tweak style #'cross
                        c'32 * 13/8
                        \tweak style #'cross
                        c'32 * 47/32
                        ]
                    }
                    \revert TupletNumber.text
                    \tweak style #'cross
                    c'4
                    :32
                    \mp
                    \stopTextSpan
                    \tweak style #'cross
                    c'4
                    ^ \accent
                    _ #(make-dynamic-script
                        (markup
                            #:whiteout
                            #:line (
                                #:general-align Y -2 #:normal-text #:larger "“"
                                #:hspace -0.1
                                #:dynamic "mp"
                                #:hspace -0.25
                                #:general-align Y -2 #:normal-text #:larger "”"
                                )
                            )
                        )
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "cast" } 
                    \staff-line-count 5
                    \clef "alto"
                    dqs'8
                    \mp
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-7 "Viola" } 
                    [
                    - \tweak padding #4.5
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { tast. } \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { pont. }
                    - \tweak bound-details.right.padding 1
                    \startTextSpanTwo
                    - \tweak padding #8.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #-1 { \column { \line { II } \line { flaut. }  } } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpanOne
                    r16
                    \stopTextSpanTwo
                    dqs'8.
                    ]
                    - \tweak padding #4.5
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { tast. } \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { pont. }
                    - \tweak bound-details.right.padding 1
                    \startTextSpanTwo
                    r16.
                    \stopTextSpanTwo
                    d'32
                    \mf
                    [
                    - \tweak padding #4.5
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { pont. } \hspace #0.5 }
                    - \tweak bound-details.right.padding 1
                    \startTextSpanTwo
                    f'8
                    r16
                    \stopTextSpanTwo
                    - \tweak padding #4.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { tast. } \hspace #0.5 }
                    - \tweak bound-details.right.padding -1.5
                    \startTextSpanTwo
                    dqs'8.
                    \p
                    \stopTextSpanOne
                    \stopTextSpanTwo
                    ]
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/24
                    {
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                        r2.
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Baritone" } 
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \slapped
                        \override NoteHead.no-ledgers = ##t
                        e'''4
                        \ppp
                        - \tweak padding #7.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { secco slap } \hspace #0.5 }
                        - \tweak bound-details.right.padding -10
                        \startTextSpan
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        f''8.
                        \pp
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        g''16
                        \ppp
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        f'''8.
                        \p
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        a''16
                        \pp
                        \stopTextSpan
                        \revert-noteheads
                        \revert NoteHead.no-ledgers
                    }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \slapped
                    \override NoteHead.no-ledgers = ##t
                    g'16
                    \f
                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                    \revert-noteheads
                    \revert NoteHead.no-ledgers
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r4
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r16
                    r4
                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                    \repeat tremolo 8 {
                        \once \override NoteHead.X-extent = #'(-1.5 . 2)
                        \override NoteHead.no-ledgers = ##t
                        \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup \override #'(size . .7) { \woodwind-diagram #'baritone-saxophone #'((cc . (one two three four five)) (lh . ()) (rh . (low-c))) }\once \override NoteHead.X-offset = 0.5
                        d32
                        - \tweak circled-tip ##t
                        \<
                        \once \override NoteHead.X-extent = #'(-1.5 . -1.5)
                        \once \override NoteHead.text = \markup \override #'(size . .7) { \woodwind-diagram #'baritone-saxophone #'((cc . (one two three four five)) (lh . ()) (rh . ())) }
                        d32
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 6.5
                        - \bendAfter #'0
                        \f
                        - \tweak circled-tip ##t
                        \>
                        \revert NoteHead.stencil
                        \revert NoteHead.no-ledgers
                    }
                    r4
                    \!
                    s1 * 3/8
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                    \override Staff.StaffSymbol.line-positions = #'(7  -7)
                    \override Staff.Clef.stencil = ##f
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                    \clef "treble"
                    b'1
                    - \tweak padding #3
                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                    - \tweak Y-extent ##f
                    - \tweak Y-offset 0
                    - \tweak padding 2
                    \startBowSpan #'((0 . 0) (0.5 . -0.5) (1.0 . 0))
                    - \tweak font-size -4- \tweak Y-offset -1
                    - \tweak padding #0
                    - \abjad-dashed-line-with-up-hook
                    - \tweak bound-details.left.text \markup \concat { \gridato-twist-bow \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpanOne
                    - \tweak padding #5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { back of body } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpanTwo
                    ~
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override NoteHead.transparent = ##t
                    \afterGrace
                    b'4
                    {
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.transparent = ##t
                        b'16
                        \stopBowSpan
                    }
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r4
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    b'8
                    \p
                    \times 2/3
                    {
                        b'8
                        \p
                        - \tweak padding #2
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                        r4.
                        b'8
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        \revert Staff.NoteHead.no-ledgers
                        \staff-line-count 5
                        \revert Staff.StaffSymbol.line-positions
                        \revert Staff.Clef.stencil
                        \revert Staff.Clef.X-extent
                        r8
                    }
                    \override Dots.staff-position = #2
                    \set Staff.forceClef = ##t
                    \clef "treble"
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        e'!
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        g'!
                    >4
                    \p
                    ^ \markup \center-align { \center-column { \line { \concat { -33 }  }\line { \concat { +0 }  } } }
                    (
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak stencil #constante-hairpin
                    \<
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.25 1 0)
                          (1 0 1.5 -0.25 2 0)
                          (2 0 2.5 0.5 3 0)
                          (3 0 3.5 -0.5 4 0)
                          (4 0 4.5 1 5 0)
                          (5 0 5.5 -1 6 0)
                          (6 0 6.5 2 7 0)
                          (7 0 7.5 -2 8 0)
                          (8 0 8.5 2.5 9 0)
                          (9 0 9.5 -2.5 10 0)
                          (10 0 10.5 3 11 0)
                          (11 0 11.5 -3 12 0)
                     )
                     #0.5
                    \override NoteHead.X-extent = #'(0 . 0)
                    \override NoteHead.transparent = ##t
                    \override Staff.Stem.stemlet-length = 0.75
                    <e' g'>8.
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    \<
                    \fancy-gliss
                       #'(
                          (0 0 0.5 3 1 0)
                          (1 0 1.5 -3 2 0)
                          (2 0 2.5 2.5 3 0)
                          (3 0 3.5 -2.5 4 0)
                          (4 0 4.5 2 5 0)
                          (5 0 5.5 -2 6 0)
                          (6 0 6.5 1 7 0)
                          (7 0 7.5 -1 8 0)
                          (8 0 8.5 0.5 9 0)
                          (9 0 9.5 -0.5 10 0)
                          (10 0 10.5 0.25 11 0)
                          (11 0 11.5 -0.25 12 0)
                     )
                     #0.5
                    \revert Staff.Stem.stemlet-length
                    <e' g'>16
                    \mf
                    ]
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \>
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    <e' g'>8
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    \afterGrace
                    <e' g'>4
                    \p
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                        <e' g'>16
                        )
                        \set Staff.forceClef = ##f
                    }
                    \revert NoteHead.X-extent
                    \revert NoteHead.transparent
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \context Score = "Score"
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \context RhythmicStaff = "Rhythmic_Staff"
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = 5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = 4
                                    \override TupletBracket.padding = 1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = 0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c'1
                                }
                            >>
                            \layout
                            {
                                indent = 0
                                ragged-right = ##t
                            }
                        }
                    \times 1/1
                    {
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
                        r32 * 23/16
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 23/16
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 3/2
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 25/16
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 53/32
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 57/32
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 63/32
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 69/32
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 77/32
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 43/16
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 3
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 105/32
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 7/2
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r32 * 29/8
                    }
                    \revert TupletNumber.text
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \context Score = "Score"
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \context RhythmicStaff = "Rhythmic_Staff"
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = 5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = 4
                                    \override TupletBracket.padding = 1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = 0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c'2
                                    ~
                                    c'8
                                }
                            >>
                            \layout
                            {
                                indent = 0
                                ragged-right = ##t
                            }
                        }
                    \times 1/1
                    {
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                        \override Staff.StaffSymbol.line-positions = #'(7  -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.X-extent = #'(9 . 9)
                        \override Staff.Clef.text = \markup \fontsize #-1 { \override #'(font-name . "Bodoni72 Book") \raise #4.1 \center-column { \line { "upper frame" } \line { \fontsize #27 \with-color #white "." } \line { "lower frame" } } }
                        \slapped
                        \override NoteHead.no-ledgers = ##t
                        \once \override Beam.grow-direction = #left
                        \clef "treble"
                        a''32 * 45/32
                        \ppp
                        [
                        - \tweak padding #7.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { newspaper strings } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        d'32 * 23/16
                        g''32 * 25/16
                        e'32 * 55/32
                        f''32 * 2
                        f'32 * 75/32
                        e''32 * 89/32
                        \<
                        g'32 * 103/32
                        d''32 * 113/32
                        \pp
                        ]
                        \revert-noteheads
                        \revert NoteHead.no-ledgers
                    }
                    \revert TupletNumber.text
                    r4.
                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                    \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                    \override Staff.StaffSymbol.line-positions = #'(7  -7)
                    \override Staff.Clef.stencil = #ly:text-interface::print
                    \override Staff.Clef.X-extent = #'(9 . 9)
                    \override Staff.Clef.text = \markup \fontsize #-1 { \override #'(font-name . "Bodoni72 Book") \raise #4.1 \center-column { \line { "upper frame" } \line { \fontsize #27 \with-color #white "." } \line { "lower frame" } } }
                    \slapped
                    \override NoteHead.no-ledgers = ##t
                    \clef "treble"
                    \override Staff.Stem.stemlet-length = 0.75
                    d'16
                    \p
                    [
                    - \tweak padding #9.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { pince } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpanTwo
                    \revert Staff.Stem.stemlet-length
                    b'16
                    \mf
                    \stopTextSpan
                    \stopTextSpanTwo
                    ]
                    \revert Staff.NoteHead.no-ledgers
                    \staff-line-count 5
                    \revert Staff.StaffSymbol.line-positions
                    \revert Staff.Clef.stencil
                    \revert Staff.Clef.X-extent
                    \revert-noteheads
                    \revert NoteHead.no-ledgers
                    \set Staff.forceClef = ##t
                    <b' e'''>2
                    :32
                    \arpeggio
                    \pp
                    - \tweak stencil #constante-hairpin
                    \<
                      %! applying invisibility
                    \once \override Rest.transparent = ##t
                    r1 * 3/8
                      %! applying indicators
                    \!
                      %! applying indicators
                    \set Staff.forceClef = ##f
                }
            }
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "accordion 1 staff"
                {
                    \context Voice = "accordion 1 voice"
                    {
                        \staff-line-count 1
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                          %! +SCORE
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                        \clef "percussion"
                        \tweak style #'cross
                        c'1
                        \ppp
                        - \tweak padding #6
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #2
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \tremolo-stretto \hspace #0.5 }
                        - \tweak bound-details.right.padding -4
                        \startTextSpanTwo
                        - \tweak padding #4.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { bellows } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpanOne
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        c'4
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            c'16
                            \stopTextSpanTwo
                        }
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        \tweak style #'cross
                        c'4.
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #2
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { {""} \hspace #0.5 }
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpanTwo
                        \<
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            c'16
                        }
                        \times 4/5
                        {
                            \tweak style #'cross
                            c'4.
                            \p
                            - \tweak padding #6
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                            \stopTextSpanTwo
                            - \tweak padding #2
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                            - \tweak bound-details.right.padding 0.5
                            \startTextSpanTwo
                            \>
                            \afterGrace
                            \tweak style #'cross
                            c'4
                            \pp
                            \stopTextSpanTwo
                            - \tweak padding #2
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \tremolo-moderato \hspace #0.5 }
                            - \tweak bound-details.right.text \tremolo-largo
                            - \tweak bound-details.right.padding 0.5
                            \startTextSpanTwo
                            \<
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                c'16
                                \p
                                \stopTextSpanOne
                                \stopTextSpanTwo
                            }
                        }
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        \afterGrace
                        c'2..
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 1
                        - \tweak padding #0
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \somatic-position-one \hspace #0.5 }
                        - \tweak bound-details.right.text \somatic-position-two
                        - \tweak bound-details.right.padding 3
                        \startTextSpan
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \stopTextSpan
                        }
                    }
                }
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 5/4
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/8
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Piano }
                          %! +SCORE
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ pno }
                        s1 * 5/4
                        s1 * 3/8
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/8
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \clef "bass"
                        <
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >2.
                        - \tremolo-articulation
                        \pppp
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { mallets on low strings } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \sustainOn
                        ~
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        <c,, d,, e,, f,, g,, a,,>4.
                        - \tweak circled-tip ##t
                        \>
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            <c,, d,, e,, f,, g,, a,,>16
                            \!
                            \stopTextSpan
                            \sustainOff
                        }
                        s1 * 1/2
                        \ottava -1
                        <ds,, f,>2
                        :32
                        \arpeggio
                        \p
                        - \tweak stencil #constante-hairpin
                        \<
                        \sustainOn
                          %! applying invisibility
                        \once \override Rest.transparent = ##t
                        r1 * 3/8
                          %! applying indicators
                        \!
                          %! applying indicators
                        \sustainOff
                          %! applying indicators
                        \ottava 0
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
