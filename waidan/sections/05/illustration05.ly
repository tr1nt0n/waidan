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
            \time 7/4
            s1 * 7/4
                ^ \markup {
                  \hspace #-9
                  \raise #16 \with-dimensions-from \null
                  \override #'(font-size . 5.5)
                  \concat {
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #2 #3 #2 #0 #'(1 . 1)]
                      \hspace #1
                      \abjad-metronome-mark-markup #2 #0 #2 #" 54 " 
                  }
                }
            - \tweak padding #23
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { ALL SIT }
              %! +SCORE
            \noPageBreak
              %! +SCORE
            \once \override TimeSignature.X-offset = -6.5
            \time 9/8
            s1 * 9/8
              %! +SCORE
            \noBreak
            \time 3/4
            s1 * 3/4
                ^ \markup {
                  \hspace #-9
                  \raise #16 \with-dimensions-from \null
                  \override #'(font-size . 5.5)
                  \concat {
                  [\abjad-metric-modulation-tuplet-lhs #3 #0 #4 #5 #3 #0 #'(1 . 1)]
                      \hspace #1
                      \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #" 67 " #" 1 " #" 2 " 
                  }
                }
              %! +SCORE
            \break
              %! +SCORE
            \once \override TimeSignature.X-offset = -6.5
            \time 5/8
            s1 * 5/8
                ^ \markup {
                  \hspace #-9
                  \raise #17.5 \with-dimensions-from \null
                  \override #'(font-size . 5.5)
                  \concat {
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #4 #5 #2 #0 #'(1 . 1)]
                      \hspace #1
                      \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #" 84 " #" 3 " #" 8 " 
                  }
                }
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
                    s1 * 7/4
                    s1 * 9/8
                    s1 * 3/4
                    s1 * 5/8
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
                    s1 * 7/4
                    s1 * 9/8
                    s1 * 3/4
                    s1 * 5/8
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                    r16
                    \slapped
                    \override NoteHead.no-ledgers = ##t
                    g''16
                    \pp
                    - \tweak padding #8
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { secco slap } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpan
                    r4.
                    f''16
                    [
                    r8
                    e'''16
                    \mp
                    ]
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        r8.
                        f'16
                        r8.
                    }
                    r4..
                    d'16
                    \p
                    r32
                    [
                    g''32
                    \pp
                    \<
                    r8.
                    f''32
                    r16
                    a''32
                    \mp
                    ]
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        r8.
                        d'16
                        \p
                        r8.
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/4
                    {
                        r4..
                        - \tweak padding #3
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                        b16
                        \mp
                    }
                    \times 2/3
                    {
                        r32
                        [
                        a''32
                        \f
                        r8.
                        e''32
                        r16
                        a''32
                        \stopTextSpan
                        ]
                        \revert-noteheads
                        \revert NoteHead.no-ledgers
                    }
                    r4
                    r4
                    r4
                    \repeat tremolo 6 {
                        \once \override NoteHead.X-extent = #'(-1.5 . 2)
                        \override NoteHead.no-ledgers = ##t
                        \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup \override #'(size . .7) { \woodwind-diagram #'baritone-saxophone #'((cc . (one two three four five)) (lh . ()) (rh . (low-c))) }\once \override NoteHead.X-offset = 0.5
                        \override Dots.stencil = ##f
                        d32
                        - \tweak padding #3
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                        \once \override NoteHead.X-extent = #'(-1.5 . -1.5)
                        \once \override NoteHead.text = \markup \override #'(size . .7) { \woodwind-diagram #'baritone-saxophone #'((cc . (one two three four five)) (lh . ()) (rh . ())) }
                        d32
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 6.5
                        - \bendAfter #'0
                        \revert Dots.stencil
                        \revert NoteHead.stencil
                        \revert NoteHead.no-ledgers
                    }
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                    s1 * 7/4
                    s1 * 9/8
                    s1 * 3/4
                    s1 * 5/8
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \times 4/5
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
                        r2
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                        \override Staff.StaffSymbol.line-positions = #'(7  -7)
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.X-extent = #'(9 . 9)
                        \override Staff.Clef.text = \markup \fontsize #-1 { \override #'(font-name . "Bodoni72 Book") \raise #4.1 \center-column { \line { "upper frame" } \line { \fontsize #27 \with-color #white "." } \line { "lower frame" } } }
                        \slapped
                        \override NoteHead.no-ledgers = ##t
                        \clef "treble"
                        d'16
                        \pp
                        r16
                    }
                    r8
                    g''16
                    [
                    d''16
                    \mp
                    ]
                    r4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        r2
                        f'8
                        \p
                        [
                        \<
                        a'8
                        c''8
                        \mp
                        ]
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        r4
                        d'32
                        \mf
                        r32
                    }
                    r16.
                    [
                    g''32.
                    c''32.
                    \p
                    r8.
                    ]
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        r4
                        - \tweak padding #3
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                        d'16
                        \mf
                        [
                        \>
                        a'16
                        g''16
                        \p
                        ]
                        \revert-noteheads
                        \revert NoteHead.no-ledgers
                    }
                    \times 4/5
                    {
                        r4
                        \slapped
                        \override NoteHead.no-ledgers = ##t
                        d'16
                        - \bendAfter #'7
                        \p
                        - \tweak padding #4.75
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                        - \tweak bound-details.right.text \tremolo-stretto
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpanTwo
                        \<
                    }
                    r32
                    \f
                    \stopTextSpanTwo
                    g''8
                    - \bendAfter #'-7
                    - \tweak padding #4.75
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                    - \tweak bound-details.right.text \tremolo-stretto
                    - \tweak bound-details.right.padding 0.5
                    \startTextSpanTwo
                    \>
                    r16.
                    \p
                    \stopTextSpanTwo
                    r8
                    r32
                    f'16.
                    :128
                    \<
                    \glissando
                    g''4
                    \fp
                    - \tweak padding #4.75
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \tremolo-stretto \hspace #0.5 }
                    - \tweak bound-details.right.text \tremolo-largo
                    - \tweak bound-details.right.padding 0.5
                    \startTextSpanTwo
                    \glissando
                    d'4.
                    \fp
                    \stopTextSpanTwo
                    \glissando
                    \revert-noteheads
                    \revert NoteHead.no-ledgers
                }
            }
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "accordion 1 staff"
                {
                    \context Voice = "accordion 1 voice"
                    {
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                          %! +SCORE
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                        s1 * 7/4
                        s1 * 9/8
                        s1 * 3/4
                        s1 * 5/8
                    }
                }
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 7/4
                        s1 * 9/8
                        s1 * 3/4
                        s1 * 5/8
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \times 2/3
                        {
                            \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Piano }
                              %! +SCORE
                            \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ pno }
                            r4
                            \staff-line-count 5
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            \clef "bass"
                            <
                                \tweak style #'la
                                c,,
                                \tweak style #'la
                                d,,
                                \tweak style #'la
                                e,,
                            >16
                            \pp
                            r4..
                        }
                        r2
                        r8.
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >16
                        \p
                        \>
                        \times 4/5
                        {
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            <
                                \tweak style #'la
                                c,,
                                \tweak style #'la
                                d,,
                                \tweak style #'la
                                e,,
                            >16
                            [
                            r8
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            <
                                \tweak style #'la
                                c,,
                                \tweak style #'la
                                d,,
                                \tweak style #'la
                                e,,
                            >16
                            \ppp
                            ]
                            r4.
                        }
                        r8
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >32
                        \p
                        r8..
                        r4
                        r16.
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >32
                        \<
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            <
                                \tweak style #'la
                                c,,
                                \tweak style #'la
                                d,,
                                \tweak style #'la
                                e,,
                            >32
                            - \tweak padding #3
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                            [
                            r16
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            <
                                \tweak style #'la
                                c,,
                                \tweak style #'la
                                d,,
                                \tweak style #'la
                                e,,
                            >32
                            \mf
                            ]
                            r8.
                        }
                        \times 2/3
                        {
                            r8
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            <
                                \tweak style #'la
                                c,,
                                \tweak style #'la
                                d,,
                                \tweak style #'la
                                e,,
                            >32
                            \f
                            r8..
                        }
                        \times 2/3
                        {
                            r4
                            r16.
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            <
                                \tweak style #'la
                                c,,
                                \tweak style #'la
                                d,,
                                \tweak style #'la
                                e,,
                            >32
                            \>
                        }
                        \times 4/5
                        {
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            <
                                \tweak style #'la
                                c,,
                                \tweak style #'la
                                d,,
                                \tweak style #'la
                                e,,
                            >32
                            [
                            r16
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            <
                                \tweak style #'la
                                c,,
                                \tweak style #'la
                                d,,
                                \tweak style #'la
                                e,,
                            >32
                            \p
                            ]
                            r8.
                        }
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >16
                        \mp
                        r8.
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >8
                        \mf
                        r4
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 7/4
                        s1 * 9/8
                        s1 * 3/4
                        \staff-line-count 1
                        \right-arrow
                        \clef "percussion"
                        c'8
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "f"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Rub stones" } 
                        [
                        \left-down-arrow
                        c'8
                        \right-up-arrow
                        c'8
                        \right-down-arrow
                        c'8
                        \left-up-arrow
                        c'8
                        ]
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
