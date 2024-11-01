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
              %! +SCORE
            - \tweak padding #5
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { it is fucking ridiculous that i have to do this }
              %! +SCORE
            \noBreak
            \time 9/16
            s1 * 9/16
              %! +SCORE
            \noBreak
            \time 2/4
            s1 * 1/2
                ^ \markup {
                  \hspace #-9
                  \raise #16 \with-dimensions-from \null
                  \override #'(font-size . 5.5)
                  \concat {
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #4 #5 #2 #0 #'(1 . 1)]
                      \hspace #1
                      \abjad-metronome-mark-mixed-number-markup #2 #0 #2 #" 105 " #" 15 " #" 32 " 
                  }
                }
            \time 13/16
            s1 * 13/16
            \time 3/4
            s1 * 3/4
                ^ \markup {
                \hspace #0.5
                  \raise #11 \with-dimensions-from \null
                  \override #'(font-size . 5.5)
                  \concat {
                      \abjad-metronome-mark-markup #3 #0 #2 #" 72 " 
                  }
                }
            \once \override Score.TimeSignature.stencil = ##f
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 3/4
            s1 * 3/4
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            R1 * 1/8
            - \tweak font-size #'12
            - \tweak padding -10
            _ \very-long-fermata
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 5/4
            s1 * 5/4
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
                    s1 * 9/16
                    s1 * 1/2
                    s1 * 13/16
                    s1 * 3/4
                    s1 * 3/4
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
                    s1 * 5/4
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
                    \clef "alto"
                    r2.
                    r4
                    \once \override Dots.staff-position = #2
                    f'4
                    \mp
                    ^ \markup \center-align { \center-column { "-11" } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #6.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { senza vib., poco tast. } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpan
                    - \tweak stencil #constante-hairpin
                    \<
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    f'2
                    \once \override Dots.staff-position = #2
                    \afterGrace
                    f'4
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override Flag.stroke-style = #"grace"
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \once \override NoteHead.X-extent = #'(0 . 0)
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        f'16
                        \!
                    }
                    r8
                    r4.
                    r8.
                    \once \override Dots.staff-position = #2
                    f'8.
                    \mp
                    ^ \markup \center-align { \center-column { "-11" } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak stencil #constante-hairpin
                    \<
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    \afterGrace
                    f'8.
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override Flag.stroke-style = #"grace"
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \once \override NoteHead.X-extent = #'(0 . 0)
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        f'16
                        \!
                    }
                    r16
                    r2
                      %! applying invisibility
                    \once \override Rest.transparent = ##t
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.Clef.stencil = ##f
                    r1 * 5/8
                    \once \override Dots.staff-position = #2
                    f'4.
                    ^ \markup \center-align { \center-column { "-11" } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak circled-tip ##t
                    \<
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    \afterGrace
                    f'8.
                    \mf
                    - \tweak circled-tip ##t
                    \>
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override Flag.stroke-style = #"grace"
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \once \override NoteHead.X-extent = #'(0 . 0)
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        f'16
                        \!
                        \stopTextSpan
                    }
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.Clef.stencil = ##f
                    s1 * 1/2
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.Clef.stencil = ##f
                    s1 * 13/16
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.Clef.stencil = ##f
                    s1 * 3/4
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.Clef.stencil = ##f
                    s1 * 3/4
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.Clef.stencil = ##f
                    \once \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.Clef.stencil = ##f
                    s1 * 5/4
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
                    s1 * 9/16
                    s1 * 1/2
                    s1 * 13/16
                    s1 * 3/4
                    s1 * 3/4
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
                    s1 * 5/4
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                    r2.
                    r4
                    \once \override Dots.staff-position = #2
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                    g'!4
                    \mp
                    ^ \markup \center-align { \concat { -33 } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #8.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { senza vib., poco tast. } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpan
                    - \tweak stencil #constante-hairpin
                    \<
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                    g'2
                    \once \override Dots.staff-position = #2
                    \afterGrace
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                    g'8
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override Flag.stroke-style = #"grace"
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \once \override NoteHead.X-extent = #'(0 . 0)
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        g'16
                        \!
                    }
                    r4
                    r4.
                    \once \override Dots.staff-position = #2
                    \afterGrace
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                    g'!4.
                    \mp
                    - \tweak padding #7
                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                    ^ \markup \center-align { \concat { -33 } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak stencil #constante-hairpin
                    \<
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override Flag.stroke-style = #"grace"
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.X-extent = #'(0 . 0)
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        g'16
                        \!
                        \stopTextSpan
                    }
                    r4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        r16.
                        \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                        \override Staff.StaffSymbol.line-positions = #'(7  -7)
                        \override Staff.Clef.stencil = ##f
                        \clef "treble"
                        b'8
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 0
                        - \tweak padding 2
                        \startBowSpan #'((0 . 0) (0.9259259259259259 . -5) (0.9259259259259259 . 0) (1.0 . 0))
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
                    }
                    r8.
                    \stopBowSpan
                    b'16
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
                    b'4
                    - \tweak Y-extent ##f
                    - \tweak Y-offset 0
                    - \tweak padding 2
                    \startBowSpan #'((0 . 0) (0.09090909090909091 . -5) (0.2727272727272727 . -2) (1.0 . 0))
                    - \tweak padding #6.5
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                    - \tweak bound-details.right.text \tremolo-stretto
                    - \tweak bound-details.right.padding 0.5
                    \startTextSpanThree
                    \once \override Dots.staff-position = #-2
                    \afterGrace
                    b'4.
                    \stopBowSpan
                    \stopTextSpanThree
                    - \tweak Y-extent ##f
                    - \tweak Y-offset 0
                    - \tweak padding 2
                    \startBowSpan #'((0 . 0) (0.09090909090909091 . -5) (0.2727272727272727 . -2) (1.0 . 0))
                    {
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.transparent = ##t
                        c'16
                        \stopBowSpan
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        \revert Staff.NoteHead.no-ledgers
                        \staff-line-count 5
                        \revert Staff.StaffSymbol.line-positions
                        \revert Staff.Clef.stencil
                        \revert Staff.Clef.X-extent
                    }
                    s1 * 9/16
                    s1 * 1/2
                    s1 * 13/16
                    s1 * 3/4
                    s1 * 3/4
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
                    s1 * 5/4
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
                    \revert-noteheads
                    \revert NoteHead.no-ledgers
                    s1 * 9/16
                    s1 * 1/2
                    s1 * 13/16
                    s1 * 3/4
                    s1 * 3/4
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
                    s1 * 5/4
                }
            }
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "accordion 1 staff"
                {
                    \context Voice = "accordion 1 voice"
                    {
                        \staff-line-count 1
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                          %! +SCORE
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                        \clef "percussion"
                        \tweak style #'cross
                        c'4
                        \mp
                        - \tweak circled-tip ##t
                        \>
                        - \tweak padding #2
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \tremolo-moderato \hspace #0.5 }
                        - \tweak bound-details.right.text \tremolo-largo
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpanTwo
                        - \tweak padding #4.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { bellows } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanOne
                        \tweak style #'cross
                        c'4
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        r4
                        \!
                        r4
                        \staff-line-count 5
                        \once \override Dots.staff-position = #2
                        \clef "treble"
                        <e' g'>4
                        \p
                        _ \markup {
                                            \override #'(font-name . "Bodoni72 Book Italic")
                                            \column {
                                                \line {
                                                    "trilling between notated pitch and random adjacent diads"
                                                }
                                            }
                                        }
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak stencil #constante-hairpin
                        \<
                        - \tweak details.squiggle-Y-scale 1.5
                        - \tweak details.squiggle-initial-width 10
                        - \tweak details.squiggle-speed-factor 0.1
                        - \tweak thickness 0.005
                        \slow-fast-trill
                        \once \override Dots.staff-position = #2
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        <e' g'>2
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        <e' g'>4
                        \stopTrillSpan
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override Flag.stroke-style = #"grace"
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            \once \override NoteHead.X-extent = #'(0 . 0)
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            <e' g'>16
                            \!
                        }
                        r8
                        r4.
                        r8.
                        \once \override Dots.staff-position = #2
                        <e' g'>8.
                        \p
                        _ \markup {
                                            \override #'(font-name . "Bodoni72 Book Italic")
                                            \column {
                                                \line {
                                                    "( sim. )"
                                                }
                                            }
                                        }
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak stencil #constante-hairpin
                        \<
                        - \tweak details.squiggle-Y-scale 1.5
                        - \tweak details.squiggle-initial-width 0.4
                        - \tweak details.squiggle-speed-factor -1
                        - \tweak thickness 0.005
                        \slow-fast-trill
                        \once \override Dots.staff-position = #2
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        <e' g'>8.
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override Flag.stroke-style = #"grace"
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            \once \override NoteHead.X-extent = #'(0 . 0)
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            <e' g'>16
                            \!
                            \stopTrillSpan
                        }
                        r16
                        r2
                        s1 * 5/8
                        s1 * 9/16
                        s1 * 1/2
                        s1 * 13/16
                        s1 * 3/4
                        s1 * 3/4
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                        \stopStaff \startStaff
                        s1 * 5/4
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
                        s1 * 9/16
                        s1 * 1/2
                        s1 * 13/16
                        s1 * 3/4
                        s1 * 3/4
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                        \stopStaff \startStaff
                        s1 * 5/4
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
                        s1 * 9/16
                        s1 * 1/2
                        s1 * 13/16
                        s1 * 3/4
                        s1 * 3/4
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                        \stopStaff \startStaff
                        s1 * 5/4
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
                        s1 * 9/16
                        s1 * 1/2
                        s1 * 13/16
                        s1 * 3/4
                        s1 * 3/4
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                        \stopStaff \startStaff
                        s1 * 5/4
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
