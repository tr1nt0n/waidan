    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.TimeSignature.stencil = ##f
            \time 31/32
            s1 * 31/32
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 5/48
            s1 * 5/48
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/32
            s1 * 7/32
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 9/40
            s1 * 9/40
            \once \override Score.TimeSignature.stencil = ##f
            \time 23/32
            s1 * 23/32
            - \tweak padding #6
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") \fontsize #3 { "Rit." } \hspace #0.5 }
            - \tweak bound-details.right.text \markup {
              \raise #0 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
              [\abjad-metric-modulation-tuplet-lhs #3 #0 #2 #3 #4 #0 #'(1 . 1)]
                  \hspace #1
                  \abjad-metronome-mark-markup #4 #0 #2 #" 90 " 
              }
            }
            \startTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            \time 31/16
            s1 * 31/16
            \stopTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 5/24
            s1 * 5/24
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/16
            s1 * 7/16
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 9/20
            s1 * 9/20
            \once \override Score.TimeSignature.stencil = ##f
            \time 23/16
            s1 * 23/16
        }
        \context StaffGroup = "Staff Group"
        <<
            \context Staff = "violin staff"
            {
                \context Voice = "violin voice"
                {
                    \staff-line-count 1
                    \once \override Dots.staff-position = #2
                    \override Staff.Clef.stencil = ##f
                    \override Staff.DynamicText.staff-padding = #10.5
                    \override Staff.DynamicLineSpanner.staff-padding = #10.5
                    \override TupletBracket.direction = #DOWN
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
                    \clef "percussion"
                    c'16
                    \fff
                    [
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    c'8
                    \ppp
                    \<
                    \once \override Dots.staff-position = #2
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 1
                    c'32
                    \times 2/3
                    {
                        \once \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        c'32
                        \mp
                        \once \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        c'16
                        \pp
                        ]
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        c'4
                        \fp
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
                            c'16
                            \!
                        }
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        c'8.
                            _ #(make-dynamic-script (markup #:whiteout #:italic "mfp"))
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        \>
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
                            c'16
                            \!
                        }
                    }
                    \once \override Dots.staff-position = #2
                    c'8
                    \ppp
                    [
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak stencil #abjad-flared-hairpin
                    \<
                    \once \override Dots.staff-position = #2
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 1
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    c'32
                    \once \override Dots.staff-position = #2
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 3
                    c'32
                    \mf
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \once \override Dots.staff-position = #2
                        c'8
                        \p
                        - \tweak circled-tip ##t
                        \>
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        c'32
                        ]
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
                            c'16
                            \!
                        }
                    }
                    \once \override Dots.staff-position = #2
                    c'8..
                    \mp
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak stencil #abjad-flared-hairpin
                    \>
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \once \override Dots.staff-position = #2
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        c'4
                        \pp
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        c'32
                        \!
                        [
                    }
                    \times 8/11
                    {
                        \once \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        c'16
                        \f
                        ]
                        \once \override Dots.staff-position = #2
                        c'4
                        - \tweak circled-tip ##t
                        \<
                        \once \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        c'32
                        [
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        \once \override Dots.staff-position = #2
                        c'8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "mfppp"))
                        \<
                        \once \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        c'32
                        \once \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        c'16
                        \p
                        \<
                    }
                    \once \override Dots.staff-position = #2
                    c'8..
                    \mp
                    \<
                    \once \override Dots.staff-position = #2
                    \afterGrace
                    c'8
                    \f
                    ]
                    \<
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
                        c'16
                        \ff
                    }
                    \once \override Dots.staff-position = #2
                    c'4
                        _ #(make-dynamic-script (markup #:whiteout #:italic "sfffz"))
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \once \override Dots.staff-position = #2
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 1
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    c'16
                    [
                    \times 2/3
                    {
                        \once \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        c'16
                            _ #(make-dynamic-script (markup #:whiteout #:italic "sfffz"))
                        \once \override Dots.staff-position = #2
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        c'8
                        \f
                        ]
                        \<
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        \once \override Dots.staff-position = #2
                        c'2
                        \fff
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override Dots.staff-position = #2
                        c'4.
                        \ff
                        - \tweak stencil #constante-hairpin
                        \<
                    }
                    \once \override Dots.staff-position = #2
                    c'4
                    \f
                    - \tweak stencil #constante-hairpin
                    \<
                    \once \override Dots.staff-position = #2
                    \afterGrace
                    c'16
                    \<
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
                        c'16
                        - \tweak X-offset -1.10
                        \fff
                    }
                    \once \override Dots.staff-position = #2
                    c'16
                    \mf
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \>
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \once \override Dots.staff-position = #2
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        c'4
                        \p
                        \<
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        c'16
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
                            c'16
                            \f
                        }
                    }
                    \once \override Dots.staff-position = #2
                    c'4..
                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffpp"))
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak stencil #abjad-flared-hairpin
                    \<
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \once \override Dots.staff-position = #2
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        c'2
                        \fff
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
                        \>
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        c'16
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
                            c'16
                            \mf
                        }
                    }
                    \times 8/11
                    {
                        \once \override Dots.staff-position = #2
                        c'8
                        \fff
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        \>
                        \once \override Dots.staff-position = #2
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        c'2
                        \p
                        ^ \markup {
                                            \hspace #-2 {
                                                ( \note {2} #2 )
                                            }
                                        }
                        \<
                        \once \override Dots.staff-position = #2
                        c'16
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        \once \override Dots.staff-position = #2
                        c'4
                        \mf
                        \<
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        c'16
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
                            c'16
                            \fff
                        }
                        \once \override Dots.staff-position = #2
                        c'8
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        \<
                    }
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
                    c'4..
                    \mp
                    \<
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
                        c'16
                        \ffff
                    }
                    \revert TupletBracket.direction
                    \revert Staff.DynamicText.staff-padding
                    \revert Staff.DynamicLineSpanner.staff-padding
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
                {
                    \once \revert Staff.StaffSymbol.line-positions
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
                    s1 * 31/32
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 5/48
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 7/32
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 9/40
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 23/32
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 31/16
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 5/24
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 7/16
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 9/20
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 23/16
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                    s1 * 31/32
                    s1 * 5/48
                    s1 * 7/32
                    s1 * 9/40
                    s1 * 23/32
                    s1 * 31/16
                    s1 * 5/24
                    s1 * 7/16
                    s1 * 9/20
                    s1 * 23/16
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                    s1 * 31/32
                    s1 * 5/48
                    s1 * 7/32
                    s1 * 9/40
                    s1 * 23/32
                    s1 * 31/16
                    s1 * 5/24
                    s1 * 7/16
                    s1 * 9/20
                    s1 * 23/16
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
                    s1 * 31/32
                    s1 * 5/48
                    s1 * 7/32
                    s1 * 9/40
                    s1 * 23/32
                    s1 * 31/16
                    s1 * 5/24
                    s1 * 7/16
                    s1 * 9/20
                    s1 * 23/16
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
                    %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                        s1 * 31/32
                        s1 * 5/48
                        s1 * 7/32
                        s1 * 9/40
                        s1 * 23/32
                        s1 * 31/16
                        s1 * 5/24
                        s1 * 7/16
                        s1 * 9/20
                        s1 * 23/16
                    }
                }
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 31/32
                        s1 * 5/48
                        s1 * 7/32
                        s1 * 9/40
                        s1 * 23/32
                        s1 * 31/16
                        s1 * 5/24
                        s1 * 7/16
                        s1 * 9/20
                        s1 * 23/16
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
                    %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ pno }
                        s1 * 31/32
                        s1 * 5/48
                        s1 * 7/32
                        s1 * 9/40
                        s1 * 23/32
                        s1 * 31/16
                        s1 * 5/24
                        s1 * 7/16
                        s1 * 9/20
                        s1 * 23/16
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 31/32
                        s1 * 5/48
                        s1 * 7/32
                        s1 * 9/40
                        s1 * 23/32
                        s1 * 31/16
                        s1 * 5/24
                        s1 * 7/16
                        s1 * 9/20
                        s1 * 23/16
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
