    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 2/4
            s1 * 1/2
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
            - \tweak padding #19
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { ALL STAND }
              %! +SCORE
            \pageBreak
            #(ly:expect-warning "strange time signature found")
            \time 4/10
            s1 * 2/5
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            - \tweak padding #12
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { ALL SIT }
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
              %! +SCORE
            \pageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            - \tweak padding #5
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { ALL STAND }
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \time 3/16
            s1 * 3/16
              %! +SCORE
            \pageBreak
        }
        \context StaffGroup = "Staff Group"
        <<
            \context Staff = "violin staff"
            {
                \context Voice = "violin voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 2/5
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 3/16
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
                {
                    \once \revert Staff.StaffSymbol.line-positions
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
                    s1 * 1/2
                    \override NoteHead.X-extent = #'(0 . 0)
                    \override NoteHead.transparent = ##t
                    \override NoteHead.no-ledgers = ##t
                    \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                    \override Staff.Clef.stencil = #ly:text-interface::print
                    \override Staff.Clef.text = \string-clef
                    \set Staff.forceClef = ##t
                    \override Staff.StaffSymbol.line-positions = #'(7 4 6 0 -7)
                    \clef "treble"
                    d''4
                    - \accent
                    \f
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak padding #6
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright { "135°" } \hspace #0.5 }
                    \startTextSpanTwo
                      %! +SCORE
                    - \tweak padding #8.5
                      %! +SCORE
                    - \abjad-dashed-line-with-hook
                      %! +SCORE
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 3/4 spazzolato } \hspace #0.5 }
                      %! +SCORE
                    - \tweak bound-details.right.padding -16
                      %! +SCORE
                    \startTextSpanOne
                      %! +PARTS
                %%% - \tweak padding #8.5
                      %! +PARTS
                %%% - \abjad-dashed-line-with-hook
                      %! +PARTS
                %%% - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 3/4 spazzolato } \hspace #0.5 }
                      %! +PARTS
                %%% - \tweak bound-details.right.padding -6
                      %! +PARTS
                %%% \startTextSpanOne
                    \times 4/5
                    {
                        a''4
                        - \accent
                        \mp
                        \stopTextSpanTwo
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "45°" } \hspace #0.5 }
                        \startTextSpanTwo
                        \once \override Accidental.stencil = ##f
                        e''16
                        - \accent
                        - \bendAfter #'2
                        \mf
                          %! +SCORE
                        \stopTextSpanOne
                          %! +PARTS
                    %%% \stopTextSpanOne
                        \stopTextSpanTwo
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "135°" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1.5
                        \startTextSpanTwo
                    }
                    r4
                    \stopTextSpanTwo
                    \revert NoteHead.X-extent
                    \revert NoteHead.transparent
                    \revert NoteHead.no-ledgers
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \revert Staff.NoteHead.no-ledgers
                        \staff-line-count 5
                        \revert Staff.StaffSymbol.line-positions
                        \revert Staff.Clef.stencil
                        \set Staff.forceClef = ##t
                        \clef "alto"
                        r4
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        \pitchedTrill
                        \tweak style #'harmonic
                        f''8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fmp"))
                        ^ \markup \center-align { \center-column { "-11" } }
                        [
                        (
                        - \tweak circled-tip ##t
                        \>
                        \startTrillSpan f''
                        \revert Staff.Stem.stemlet-length
                        \pitchedTrill
                        \tweak style #'harmonic
                        f''8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fmp"))
                        ^ \markup \center-align { \center-column { "-11" } }
                        )
                        ]
                        - \tweak circled-tip ##t
                        \>
                        \startTrillSpan f''
                    }
                    r4..
                    \!
                    \stopTrillSpan
                    \once \override Dots.staff-position = #2
                    \pitchedTrill
                    \tweak style #'harmonic
                    f''16
                    \pp
                    ^ \markup \center-align { \center-column { "-11" } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \<
                    \startTrillSpan f''
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    f''4
                    \mp
                    - \tweak circled-tip ##t
                    \>
                    \times 2/3
                    {
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        f''8
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
                            f''16
                            \!
                            \stopTrillSpan
                        }
                        r16
                    }
                    r8
                    r8.
                    \once \override Dots.staff-position = #2
                    \pitchedTrill
                    \tweak style #'harmonic
                    f''16
                    \pp
                    ^ \markup \center-align { \center-column { "-11" } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \<
                    \startTrillSpan f''
                    \once \override Dots.staff-position = #2
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    f''4
                    \mp
                    - \tweak circled-tip ##t
                    \>
                    \times 2/3
                    {
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        f''8
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
                            f''16
                            \!
                            \stopTrillSpan
                        }
                        r16
                    }
                    r4.
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 1/2
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 1/2
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 1/2
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 1/2
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 1/2
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 3/16
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
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
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                        r8
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Stones" } 
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
                        \staff-line-count 1
                        \once \override Beam.grow-direction = #right
                        \clef "percussion"
                        \tweak style #'cross
                        c'32 * 117/32
                        \pp
                        [
                        - \tweak padding #3
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { strike } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { rub }
                        - \tweak bound-details.right.padding 1
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
                        \stopTextSpan
                        ]
                    }
                    \revert TupletNumber.text
                    \times 4/5
                    {
                        \down-arrow
                        c'64
                        \mf
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "strike + scrape" } 
                        [
                        - \tweak circled-tip ##t
                        \>
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \right-arrow
                        c'64
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \left-arrow
                        c'64
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \up-arrow
                        c'64
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \down-arrow
                        c'64
                        ]
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                    }
                    r8.
                    \!
                    \times 4/5
                    {
                        \times 4/5
                        {
                            \right-arrow
                            c'64
                            \mf
                            [
                            - \tweak circled-tip ##t
                            \>
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \left-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \up-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \down-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \right-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                        }
                        r8.
                        \!
                        \times 4/5
                        {
                            \left-arrow
                            c'64
                            \mf
                            - \tweak circled-tip ##t
                            \>
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \up-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \down-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \right-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \left-arrow
                            c'64
                            ]
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                        }
                    }
                    r4
                    \!
                    \afterGrace
                    s1 * 2/5
                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Env ON }
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Soprano" } 
                    {
                        \override Dots.staff-position = #2
                        \staff-line-count 5
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \revert Staff.BarLine.bar-extent
                        \once \override NoteHead.transparent = ##t
                        \clef "treble"
                        \once \override Flag.stroke-style = #"grace"
                        e'''16
                        \mf
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #11
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { trumpet embouchure } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        \>
                    }
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    g'8
                    \p
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    \<
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    a'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    \afterGrace
                    d''8
                    \mp
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak circled-tip ##t
                    \>
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                        f'16
                        \!
                    }
                    r8
                    r4
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    \afterGrace
                    b'8
                    \p
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak circled-tip ##t
                    \>
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                        c''16
                        \!
                    }
                    r8
                    \times 2/3
                    {
                        r16
                        [
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \afterGrace
                        d''16
                        \mp
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            \once \override Flag.stroke-style = #"grace"
                            b'16
                        }
                        r16
                        ]
                    }
                    \times 4/5
                    {
                        r16
                        [
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        a16.
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        \<
                    }
                    \times 4/5
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        b'32
                        \mf
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        f'''8
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                    }
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    \afterGrace
                    c'''32
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                        g'''16
                        \!
                    }
                    r32
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    b''16
                    \mf
                    ]
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \<
                    \times 2/3
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        \afterGrace
                        b''8
                        [
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            \once \override Flag.stroke-style = #"grace"
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            b''16
                            \f
                        }
                        r16
                        ]
                    }
                    r16
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    b''16
                    \mp
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \<
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
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
                    b''8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \afterGrace
                        b''32.
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            \once \override Flag.stroke-style = #"grace"
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            b''16
                            \f
                        }
                        r16
                    }
                    \times 2/3
                    {
                        r8
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        b''16
                        \mp
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak stencil #constante-hairpin
                        \<
                    }
                    \times 2/3
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        \afterGrace
                        b''16
                        [
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            \once \override Flag.stroke-style = #"grace"
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            b''16
                        }
                        r16
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \afterGrace
                        b''16
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            \once \override Flag.stroke-style = #"grace"
                            b''16
                            \!
                        }
                    }
                    r32
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    b''16.
                    \p
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \<
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
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
                    \afterGrace
                    b''16
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        b''16
                        \f
                    }
                    r16
                    r16
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    \afterGrace
                    b''4..
                    \p
                    - \abjad-zero-padding-glissando
                    \glissando
                    \<
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                        b''16
                        \f
                    }
                    r8
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    b''4.
                    \p
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \<
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
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
                    \afterGrace
                    b''8
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        b''16
                        \f
                    }
                    r8
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    b''4
                    \p
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    \<
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
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
                    b''2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.X-extent = #'(0 . 0)
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    \afterGrace
                    b''16
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        \once \override Flag.stroke-style = #"grace"
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        b''16
                        \f
                        \stopTextSpan
                    }
                    r8
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
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
                        \staff-line-count 1
                        \revert Staff.Clef.stencil
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                        \once \override Beam.grow-direction = #left
                        \clef "percussion"
                        \tweak style #'cross
                        c'32 * 5/4
                        \pp
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Stones" } 
                        [
                        - \tweak padding #4.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { strike } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { rub }
                        - \tweak bound-details.right.padding 1
                        \startTextSpan
                        \<
                        \tweak style #'cross
                        c'32 * 43/32
                        \tweak style #'cross
                        c'32 * 51/32
                        \tweak style #'cross
                        c'32 * 65/32
                        \tweak style #'cross
                        c'32 * 85/32
                        \tweak style #'cross
                        c'32 * 25/8
                        \mp
                        \stopTextSpan
                        ]
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
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r8
                    }
                    \revert TupletNumber.text
                    \times 4/5
                    {
                        \down-arrow
                        c'64
                        \mf
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "strike + scrape" } 
                        [
                        - \tweak circled-tip ##t
                        \>
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \right-arrow
                        c'64
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \left-arrow
                        c'64
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \up-arrow
                        c'64
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \down-arrow
                        c'64
                        ]
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                    }
                    r8.
                    \!
                    \times 4/5
                    {
                        \times 4/5
                        {
                            \right-arrow
                            c'64
                            \mf
                            [
                            - \tweak circled-tip ##t
                            \>
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \left-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \up-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \down-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \right-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                        }
                        r8.
                        \!
                        \times 4/5
                        {
                            \left-arrow
                            c'64
                            \mf
                            - \tweak circled-tip ##t
                            \>
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \up-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \down-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \right-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \left-arrow
                            c'64
                            ]
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                        }
                    }
                    r4
                    \!
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \staff-line-count 5
                        \clef "treble"
                        r8
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Cello" } 
                        \override Staff.Stem.stemlet-length = 0.75
                        \pitchedTrill
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        \tweak style #'harmonic
                        g''!8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fmp"))
                        ^ \markup \center-align { \concat { -33 } }
                        [
                        (
                        - \tweak circled-tip ##t
                        \>
                        \startTrillSpan g''
                        \pitchedTrill
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        \tweak style #'harmonic
                        g''!8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fmp"))
                        ^ \markup \center-align { \concat { -33 } }
                        - \tweak circled-tip ##t
                        \>
                        \startTrillSpan g''
                        \revert Staff.Stem.stemlet-length
                        \pitchedTrill
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        \tweak style #'harmonic
                        g''!8
                            _ #(make-dynamic-script (markup #:whiteout #:italic "fmp"))
                        ^ \markup \center-align { \concat { -33 } }
                        )
                        ]
                        - \tweak circled-tip ##t
                        \>
                        \startTrillSpan g''
                    }
                    s1 * 1/2
                    \!
                    \stopTrillSpan
                    \once \override Dots.staff-position = #2
                    \pitchedTrill
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                    \tweak style #'harmonic
                    g''!4
                    \mp
                    ^ \markup \center-align { \concat { -33 } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak circled-tip ##t
                    \>
                    \startTrillSpan g''
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
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                    \tweak style #'harmonic
                    g''16
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
                        g''16
                        \!
                        \stopTrillSpan
                    }
                    r8.
                    r4
                    \once \override Dots.staff-position = #2
                    \pitchedTrill
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                    \tweak style #'harmonic
                    g''!4
                    \mp
                    ^ \markup \center-align { \concat { -33 } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak circled-tip ##t
                    \>
                    \startTrillSpan g''
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
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                    \tweak style #'harmonic
                    g''16
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
                        g''16
                        \!
                        \stopTrillSpan
                    }
                    r4..
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
                    c'2
                    ^ \markup {
                                            \override #'(font-name . "Bodoni72 Book Italic")
                                            \center-column {
                                                \line {
                                                    "sempre"
                                                }
                                                \line {
                                                    "hold position until next instruction"
                                                }
                                            }
                                        }
                    ^ \somatic-position-one
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 3/16
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
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                          %! +SCORE
                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
                        r8
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Stones" } 
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
                        \staff-line-count 1
                        \once \override Beam.grow-direction = #right
                        \clef "percussion"
                        \tweak style #'cross
                        c'32 * 117/32
                        \pp
                        [
                        - \tweak padding #3
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { rub } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { strike }
                        - \tweak bound-details.right.padding 1
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
                        \stopTextSpan
                        ]
                    }
                    \revert TupletNumber.text
                    \times 4/5
                    {
                        \down-arrow
                        c'64
                        \mf
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "strike + scrape" } 
                        [
                        - \tweak circled-tip ##t
                        \>
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \right-arrow
                        c'64
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \left-arrow
                        c'64
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \up-arrow
                        c'64
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \down-arrow
                        c'64
                        ]
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                    }
                    r8.
                    \!
                    \times 4/5
                    {
                        \times 4/5
                        {
                            \right-arrow
                            c'64
                            \mf
                            [
                            - \tweak circled-tip ##t
                            \>
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \left-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \up-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \down-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \right-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                        }
                        r8.
                        \!
                        \times 4/5
                        {
                            \left-arrow
                            c'64
                            \mf
                            - \tweak circled-tip ##t
                            \>
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \up-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \down-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \right-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \left-arrow
                            c'64
                            ]
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                        }
                    }
                    r4
                    \!
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        r8
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Harp" } 
                        \staff-line-count 5
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        \clef "bass"
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        \override Staff.Stem.stemlet-length = 0.75
                        <bs,,! c,!>8
                        - \salzedo-thunder
                        \f
                        [
                        \<
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        <bs,,! c,!>8
                        - \salzedo-thunder
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        \revert Staff.Stem.stemlet-length
                        <bs,,! c,!>8
                        - \salzedo-thunder
                        \fff
                        ]
                    }
                    s1 * 1/2
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    <bs,,! c,!>8
                    - \salzedo-thunder
                    \ff
                    \laissezVibrer
                    r4.
                    r4
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    <bs,,! c,!>8
                    - \salzedo-thunder
                    \ff
                    \laissezVibrer
                    r8
                    s1 * 1/2
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
                    c'2
                    ^ \markup {
                                            \override #'(font-name . "Bodoni72 Book Italic")
                                            \center-column {
                                                \line {
                                                    "sempre"
                                                }
                                                \line {
                                                    "hold position until next instruction"
                                                }
                                            }
                                        }
                    ^ \somatic-position-three
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 3/16
                }
            }
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "accordion 1 staff"
                {
                    \context Voice = "accordion 1 voice"
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
                            \staff-line-count 1
                            \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                              %! +SCORE
                            \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                            \once \override Beam.grow-direction = #left
                            \clef "percussion"
                            \tweak style #'cross
                            c'32 * 5/4
                            \pp
                            ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Stones" } 
                            [
                            - \tweak padding #4.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { rub } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { strike }
                            - \tweak bound-details.right.padding 1
                            \startTextSpan
                            \<
                            \tweak style #'cross
                            c'32 * 43/32
                            \tweak style #'cross
                            c'32 * 51/32
                            \tweak style #'cross
                            c'32 * 65/32
                            \tweak style #'cross
                            c'32 * 85/32
                            \tweak style #'cross
                            c'32 * 25/8
                            \mp
                            \stopTextSpan
                            ]
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
                            \once \override Dots.transparent = ##t
                            \once \override Rest.transparent = ##t
                            r8
                        }
                        \revert TupletNumber.text
                        \times 4/5
                        {
                            \down-arrow
                            c'64
                            \mf
                            ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "strike + scrape" } 
                            [
                            - \tweak circled-tip ##t
                            \>
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \right-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \left-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \up-arrow
                            c'64
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \down-arrow
                            c'64
                            ]
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                        }
                        r8.
                        \!
                        \times 4/5
                        {
                            \times 4/5
                            {
                                \right-arrow
                                c'64
                                \mf
                                [
                                - \tweak circled-tip ##t
                                \>
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                                \left-arrow
                                c'64
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                                \up-arrow
                                c'64
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                                \down-arrow
                                c'64
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                                \right-arrow
                                c'64
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                            }
                            r8.
                            \!
                            \times 4/5
                            {
                                \left-arrow
                                c'64
                                \mf
                                - \tweak circled-tip ##t
                                \>
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                                \up-arrow
                                c'64
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                                \down-arrow
                                c'64
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                                \right-arrow
                                c'64
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                                \left-arrow
                                c'64
                                ]
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                            }
                        }
                        r4
                        \!
                        \tweak edge-height #'(0.7 . 0)
                        \times 4/5
                        {
                            \staff-line-count 5
                            \clef "treble"
                            r4
                            ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Accordion" } 
                            \ottava 1
                            \override Staff.Stem.stemlet-length = 0.75
                            <e''' fs''' b''' c'''' f''''>8
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fmp"))
                            _ \markup {
                                                \override #'(font-name . "Bodoni72 Book Italic")
                                                \column {
                                                    \line {
                                                        "trilling between"
                                                    }
                                                    \line {
                                                        "notated pitches"
                                                    }
                                                    \line {
                                                        "and random"
                                                    }
                                                    \line {
                                                        "adjacent notes"
                                                    }
                                                }
                                            }
                            [
                            - \tweak circled-tip ##t
                            \>
                            \startTrillSpan
                            \revert Staff.Stem.stemlet-length
                            <e''' fs''' b''' c'''' f''''>8
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fmp"))
                            ]
                            - \tweak circled-tip ##t
                            \>
                            \startTrillSpan
                            \ottava 0
                        }
                        r4
                        \!
                        \stopTrillSpan
                        \once \override Dots.staff-position = #2
                        \ottava 1
                        <e''' fs''' b''' c'''' f''''>4
                        _ \markup {
                                            \override #'(font-name . "Bodoni72 Book Italic")
                                            { "( sim. )" }
                                        }
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        \<
                        \startTrillSpan
                        \once \override Accidental.stencil = ##f
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
                        <e''' fs''' b''' c'''' f''''>4
                        \mp
                        - \tweak circled-tip ##t
                        \>
                        {
                            \once \override Accidental.stencil = ##f
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
                            <e''' fs''' b''' c'''' f''''>16
                            \!
                            \stopTrillSpan
                        }
                        r8.
                        \once \override Dots.staff-position = #2
                        <e''' fs''' b''' c'''' f''''>16
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        \<
                        \startTrillSpan
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        <e''' fs''' b''' c'''' f''''>4
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        <e''' fs''' b''' c'''' f''''>4
                        \mp
                        - \tweak circled-tip ##t
                        \>
                        {
                            \once \override Accidental.stencil = ##f
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
                            <e''' fs''' b''' c'''' f''''>16
                            \!
                            \stopTrillSpan
                            \ottava 0
                        }
                        s1 * 1/2
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
                        c'2
                        ^ \markup {
                                                \override #'(font-name . "Bodoni72 Book Italic")
                                                \center-column {
                                                    \line {
                                                        "sempre"
                                                    }
                                                    \line {
                                                        "hold position until next instruction"
                                                    }
                                                }
                                            }
                        ^ \somatic-position-one
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/16
                    }
                }
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 1/2
                        s1 * 3/4
                        s1 * 2/5
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/16
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
                        \afterGrace
                        s1 * 1/2
                        {
                            \staff-line-count 1
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override Stem.direction = #DOWN
                            \clef "percussion"
                            \once \override Flag.stroke-style = #"grace"
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            f''16
                            \ppp
                            - \tweak padding #9
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { Chains } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                        }
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        g,8
                        \mf
                        \sustainOn
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        f''8
                        \ppp
                        \sustainOff
                        - \tweak Beam.positions #'(0 . 0)
                        [
                        \times 4/5
                        {
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            g,8
                            \p
                            ]
                            \sustainOn
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            f''8
                            \ppp
                            \sustainOff
                            - \tweak Beam.positions #'(0 . 0)
                            [
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            g,16
                            \mp
                            ]
                            \sustainOn
                        }
                        \afterGrace
                        r4
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \once \override TupletBracket.stencil =
                                                 #(lambda (grob)
                                                    (let* ((pos (ly:grob-property grob 'positions))
                                                           (dir (ly:grob-property grob 'direction))
                                                           (new-pos (if (= dir 1)
                                                                        (max (car pos)(cdr pos))
                                                                        (min (car pos)(cdr pos)))))
                                                      (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
                                                      (ly:tuplet-bracket::print grob)))
                        \once \override TupletBracket.padding = #-1
                        \tweak edge-height #'(0.7 . 0)
                        \times 4/5
                        {
                            r4
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            f''8
                            \fff
                            - \tweak Beam.positions #'(0 . 0)
                            [
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            g,8
                            ]
                        }
                        \afterGrace
                        r2
                        {
                            \staff-line-count 1
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override Stem.direction = #DOWN
                            \clef "percussion"
                            \once \override Flag.stroke-style = #"grace"
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            f''16
                        }
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        g,8
                        - \accent
                        \laissezVibrer
                        r4.
                        \afterGrace
                        r4
                        {
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override Stem.direction = #DOWN
                            \once \override Flag.stroke-style = #"grace"
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            f''16
                        }
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        g,8
                        - \accent
                        \laissezVibrer
                        \stopTextSpan
                        r8
                        s1 * 1/2
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
                        c'2
                        ^ \markup {
                                                \override #'(font-name . "Bodoni72 Book Italic")
                                                \center-column {
                                                    \line {
                                                        "sempre"
                                                    }
                                                    \line {
                                                        "hold position until next instruction"
                                                    }
                                                }
                                            }
                        ^ \somatic-position-three
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/16
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 1/2
                        r4
                        \times 4/5
                        {
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
                                \tweak style #'la
                                f,,
                                \tweak style #'la
                                g,,
                                \tweak style #'la
                                a,,
                            >16
                            :128
                            - \tweak circled-tip ##t
                            \<
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { mallets on low strings } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1.5
                            \startTextSpan
                            ~
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
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >4
                        :32
                        \tweak edge-height #'(0.7 . 0)
                        \times 4/5
                        {
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            \override Staff.Stem.stemlet-length = 0.75
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
                            >8
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fffp"))
                            :64
                            [
                            - \tweak circled-tip ##t
                            \>
                            \sustainOn
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
                                \tweak style #'la
                                f,,
                                \tweak style #'la
                                g,,
                                \tweak style #'la
                                a,,
                            >8
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fffp"))
                            :64
                            - \tweak circled-tip ##t
                            \>
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
                                \tweak style #'la
                                f,,
                                \tweak style #'la
                                g,,
                                \tweak style #'la
                                a,,
                            >8
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fffp"))
                            :64
                            - \tweak circled-tip ##t
                            \>
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            \revert Staff.Stem.stemlet-length
                            \afterGrace
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
                            >8
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fffp"))
                            :64
                            \sustainOff
                            ]
                            - \tweak circled-tip ##t
                            \>
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                c'16
                                \!
                            }
                        }
                        r4
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
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >4
                        :32
                        - \tweak circled-tip ##t
                        ^ \<
                        \sustainOn
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
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >8
                        - \accent
                        \laissezVibrer
                        ^ \ff
                        r4
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
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >16
                        :128
                        - \tweak circled-tip ##t
                        ^ \<
                        ~
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
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >4
                        :32
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
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >8
                        - \accent
                        \laissezVibrer
                        ^ \ff
                        \stopTextSpan
                        r8
                        s1 * 1/2
                        \sustainOff
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 3/16
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
