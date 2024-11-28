    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/4
            s1 * 3/4
                ^ \markup {
                \hspace #0.25
                  \raise #11.5 \with-dimensions-from \null
                  \override #'(font-size . 5.5)
                  \concat {
                      \abjad-metronome-mark-markup #3 #0 #2 #" 72 " 
                  }
                }
              %! +SCORE
            \noBreak
            \time 5/8
            s1 * 5/8
                ^ \markup {
                  \hspace #-9
                  \raise #16 \with-dimensions-from \null
                  \override #'(font-size . 5.5)
                  \concat {
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #2 #3 #3 #0 #'(1 . 1)]
                      \hspace #1
                      \abjad-metronome-mark-markup #3 #0 #2 #" 54 " 
                  }
                }
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            - \tweak padding #12
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Tape IV ON }
            ^ \markup \fontsize #6 { \override #'(font-name . "Bodoni72 Book Italic") \raise #17.5 \with-dimensions-from \null { " \"it's never just a shape alone\" " } }
            \time 4/8
            s1 * 1/2
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 4/4
            s1 * 1
            - \tweak padding #17.5
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { ALL STAND }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            R1 * 1/8
            - \tweak font-size #'12
            - \tweak padding -10
            _ \extremely-long-fermata
            - \tweak padding #10
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { ALL SIT }
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            R1 * 1/8
            - \tweak font-size #'12
            - \tweak padding -10
            _ \extremely-long-fermata
            \bar "|."
            \once \override Score.BarLine.transparent = ##f
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
                    s1 * 3/4
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1
                    s1 * 1/8
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
                {
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \override NoteHead.X-extent = #'(0 . 0)
                    \override NoteHead.transparent = ##t
                    \override NoteHead.no-ledgers = ##t
                    \override Stem.X-offset = 1.6
                    \override NoteHead.X-offset = 1.6
                    \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                    \override Staff.Clef.stencil = #ly:text-interface::print
                    \override Staff.Clef.text = \string-clef
                    \set Staff.forceClef = ##t
                    \override Staff.StaffSymbol.line-positions = #'(7 4 6 0 -7)
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
                    \once \override NoteHead.transparent = ##t
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
                    - \tweak padding #8.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 3/4 spazzolato } \hspace #0.5 }
                    \startTextSpanOne
                    \times 4/5
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
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
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        e''16
                        - \accent
                        \mf
                        \stopTextSpanTwo
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "135°" } \hspace #0.5 }
                        \startTextSpanTwo
                        \>
                        ~
                    }
                    \once \override Accidental.stencil = ##f
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
                    e''4
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
                    a''8
                    \p
                    \stopTextSpanOne
                    \stopTextSpanTwo
                    [
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #6
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                    \startTextSpanTwo
                    - \tweak padding #8.5
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { { "" } \hspace #0.5 }
                    \startTextSpanOne
                    ~
                    \times 2/3
                    {
                        \once \override Accidental.stencil = ##f
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
                        a''16
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
                        b'16
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \<
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \once \override NoteHead.transparent = ##t
                        c''16
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \once \override NoteHead.transparent = ##t
                        e'16.
                        \stopTextSpanOne
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #8.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 2/3 spz. } \hspace #0.5 }
                        \startTextSpanOne
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        g'32
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        d'16.
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                    }
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    e'8
                    - \accent
                    \f
                    \stopTextSpanOne
                    \stopTextSpanTwo
                    ]
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #6
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright { "115°" } \hspace #0.5 }
                    \startTextSpanTwo
                    - \tweak padding #8.5
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 1/4 spz. } \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { spazzolato }
                    \startTextSpanOne
                    \>
                    ~
                    \once \override Accidental.stencil = ##f
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
                    e'2
                    \times 2/3
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \override Staff.Stem.stemlet-length = 0.75
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        a''16
                        \pp
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "90°" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1.5
                        \startTextSpanTwo
                        \times 2/3
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c''16
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            d''16
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            \revert Staff.Stem.stemlet-length
                            b'16
                            \stopTextSpanTwo
                            ]
                        }
                    }
                    \times 2/3
                    {
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        d'16
                        - \accent
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        \<
                        - \tweak padding #6
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "45°" } \hspace #0.5 }
                        \startTextSpanTwo
                        - \tweak padding #8.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { { "" } \hspace #0.5 }
                        \startTextSpanOne
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        f'16
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \once \override NoteHead.transparent = ##t
                        e'16
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                    }
                    \times 2/3
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \once \override NoteHead.transparent = ##t
                        c'16
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \times 2/3
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            g'16
                            - \accent
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            f'16
                            - \accent
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            \once \override NoteHead.transparent = ##t
                            a'16
                            - \accent
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                    }
                    \times 4/5
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        \once \override NoteHead.transparent = ##t
                        g'32
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        b'32
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        a'32
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        c''32
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        \once \override NoteHead.transparent = ##t
                        b'32
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                    }
                    \times 4/5
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        \once \override NoteHead.transparent = ##t
                        d''32
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \times 4/5
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            c''32
                            - \accent
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            e''32
                            - \accent
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            d''32
                            - \accent
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            f''32
                            - \accent
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            \once \override NoteHead.transparent = ##t
                            e''32
                            - \accent
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 4
                        \once \override NoteHead.transparent = ##t
                        g''64
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        f''64
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        a''64
                        - \accent
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        g''64
                        \f
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "75°" } \hspace #0.5 }
                        \startTextSpanTwo
                        - \tweak padding #8.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 1/3 spz. } \hspace #0.5 }
                        \startTextSpanOne
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        a''64
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        e''64
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 4
                        \set stemRightBeamCount = 1
                        \once \override NoteHead.transparent = ##t
                        g''64
                        - \abjad-zero-padding-glissando
                        \glissando
                    }
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 4
                    \once \override NoteHead.transparent = ##t
                    f''64
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    a''64
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    g''64
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    a''64
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    e''64
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    g''64
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    f''64
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \set stemLeftBeamCount = 4
                    \set stemRightBeamCount = 1
                    \once \override NoteHead.transparent = ##t
                    a''64
                    - \abjad-zero-padding-glissando
                    \glissando
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        \times 4/5
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 4
                            \once \override NoteHead.transparent = ##t
                            g''64
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            a''64
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            e''64
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            g''64
                            - \abjad-zero-padding-glissando
                            \glissando
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
                            f''64
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \once \override Glissando.style = #'zigzag
                        a''32.
                        :256
                        \stopTextSpanOne
                        \stopTextSpanTwo
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "90°" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1.5
                        \startTextSpanTwo
                        - \tweak padding #8.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 5/6 spz. } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1.5
                        \startTextSpanOne
                        \<
                        ~
                    }
                    \once \override Accidental.stencil = ##f
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
                    a''8
                    :64
                    ]
                    ~
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    \afterGrace
                    a''4
                    :32
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        a''16
                        \fff
                        \stopTextSpanOne
                        \stopTextSpanTwo
                    }
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    g''32.
                    - \bendAfter #'-6
                    - \tweak Beam.positions #'(-8 . -8)
                    [
                    - \tweak padding #6
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \upright { "135°" }
                    - \tweak bound-details.right.padding 1
                    \startTextSpanTwo
                    - \tweak padding #8.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { spz. } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpanOne
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    e''32.
                    - \bendAfter #'-6
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    d''32.
                    - \bendAfter #'-6
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    g''32.
                    - \bendAfter #'-6
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    e''32.
                    - \bendAfter #'-6
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \set stemLeftBeamCount = 4
                    \set stemRightBeamCount = 1
                    \once \override NoteHead.transparent = ##t
                    d''64
                    ~
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 3
                    \once \override NoteHead.transparent = ##t
                    d''32
                    - \bendAfter #'-6
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    g''32.
                    - \bendAfter #'-6
                    \>
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    e''32.
                    - \bendAfter #'-6
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    d''32.
                    - \bendAfter #'-6
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    g''32.
                    - \bendAfter #'-6
                    \stopTextSpanOne
                    \stopTextSpanTwo
                    ]
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    \once \override Glissando.style = #'zigzag
                    e''32
                    :256
                    \mf
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #6
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright { "45°" } \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \upright { "100°" }
                    - \tweak bound-details.right.padding 3
                    \startTextSpanTwo
                    - \tweak padding #8.5
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 1/2 spz. } \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { spz. }
                    - \tweak bound-details.right.padding 2.5
                    \startTextSpanOne
                    \<
                    ~
                    \once \override Accidental.stencil = ##f
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
                    e''16.
                    :128
                    ~
                    \times 2/3
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \afterGrace
                        e''16
                        :128
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            e''16
                            \stopTextSpanOne
                            \stopTextSpanTwo
                        }
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        f''16
                        - \bendAfter #'1.5
                        \ff
                        [
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "135°" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpanTwo
                        - \tweak padding #8.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 3/4 spz. } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpanOne
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \once \override NoteHead.transparent = ##t
                        f''16
                        - \bendAfter #'1.5
                    }
                    \times 2/3
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \once \override NoteHead.transparent = ##t
                        f''16
                        - \bendAfter #'1.5
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        f''16
                        - \bendAfter #'1.5
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \once \override NoteHead.transparent = ##t
                        f''16
                        - \bendAfter #'1.5
                    }
                    \times 2/3
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \once \override NoteHead.transparent = ##t
                        f''16
                        - \bendAfter #'1.5
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        f''16
                        - \bendAfter #'1.5
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        f''16
                        - \bendAfter #'1.5
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        ]
                    }
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    b'32
                    \mf
                    [
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #6
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                    - \tweak bound-details.right.padding 0.5
                    \startTextSpanTwo
                    - \tweak padding #8.5
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { { "" } \hspace #0.5 }
                    - \tweak bound-details.right.padding 1
                    \startTextSpanOne
                    \<
                    ~
                    \once \override Accidental.stencil = ##f
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
                    b'32
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 1
                    \once \override NoteHead.transparent = ##t
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    d''16.
                    \f
                    \stopTextSpanTwo
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak circled-tip ##t
                    \>
                    - \tweak padding #6
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright { "45°" } \hspace #0.5 }
                    - \tweak bound-details.right.padding 0.5
                    \startTextSpanTwo
                    ~
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 3
                    \once \override NoteHead.transparent = ##t
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    d''32
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
                    a'32
                    \fff
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    \once \override Glissando.style = #'zigzag
                    \afterGrace
                    e''16
                    :128
                    \stopTextSpanOne
                    \stopTextSpanTwo
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak padding #6
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright { "90°" } \hspace #0.5 }
                    \startTextSpanTwo
                    - \tweak padding #8.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { spz. } \hspace #0.5 }
                    \startTextSpanOne
                    {
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        e''16
                        \stopTextSpanOne
                        \stopTextSpanTwo
                    }
                    \revert NoteHead.X-extent
                    \revert NoteHead.transparent
                    \revert NoteHead.no-ledgers
                    \revert Stem.X-offset
                    \revert NoteHead.X-offset
                    \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 4
                    \override Staff.Clef.stencil = #ly:text-interface::print
                    \override Staff.Clef.text = \stringing-clef
                    \set Staff.forceClef = ##t
                    \revert Staff.StaffSymbol.line-positions
                    \clef "treble"
                    a'16
                    \mp
                    [
                    - \tweak padding #7.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { scratch, on the wrapping } \hspace #0.5 }
                    - \tweak bound-details.right.padding -1.5
                    \startTextSpan
                    \<
                    a'16
                    a'16
                    f'8
                    - \tenuto
                    \mf
                    ]
                    a'16
                    \mp
                    [
                    \<
                    a'16
                    a'16
                    f'8
                    - \tenuto
                    \mf
                    \stopTextSpan
                    ]
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \override NoteHead.X-extent = #'(0 . 0)
                    \override NoteHead.transparent = ##t
                    \override NoteHead.no-ledgers = ##t
                    \override Stem.X-offset = 1.6
                    \override NoteHead.X-offset = 1.6
                    \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 5
                    \override Staff.Clef.stencil = #ly:text-interface::print
                    \override Staff.Clef.text = \string-clef
                    \set Staff.forceClef = ##t
                    \override Staff.StaffSymbol.line-positions = #'(7 4 6 0 -7)
                    \once \override NoteHead.transparent = ##t
                    \clef "treble"
                    \afterGrace
                    g''8.
                    \f
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak padding #6
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright { "45°" } \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \upright { "90°" }
                    - \tweak bound-details.right.padding 2
                    \startTextSpanTwo
                    - \tweak padding #8.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 3/4 spazzolato } \hspace #0.5 }
                    \startTextSpanOne
                    \>
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        f''16
                        \mp
                        \stopTextSpanTwo
                    }
                    \override Dots.staff-position = #2
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    g''8.
                    \ff
                    ]
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #6
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright { "45°" } \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \upright { "90°" }
                    - \tweak bound-details.right.padding 2
                    \startTextSpanTwo
                    \>
                    ~
                    \once \override Accidental.stencil = ##f
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
                    g''16
                    {
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        f''16
                        \mp
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        - \abjad-zero-padding-glissando
                        \glissando
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/7
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        c'64
                        \fff
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        - \tweak padding #11.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "170°" } \hspace #0.5 }
                        \startTextSpanTwo
                        - \tweak padding #14
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { spz. } \hspace #0.5 }
                        - \tweak bound-details.right.padding 1
                        \startTextSpanOne
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        d'64
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        g'64
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        e'32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        \once \override NoteHead.transparent = ##t
                        g'32
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #11.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "115°" } \hspace #0.5 }
                        \startTextSpanTwo
                        - \tweak padding #14
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 2/3 spz. } \hspace #0.5 }
                        - \tweak bound-details.right.padding 1
                        \startTextSpanOne
                    }
                    \times 4/5
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 4
                        \once \override NoteHead.transparent = ##t
                        c'64
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        d'64
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        g'32.
                        \stopTextSpanTwo
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #11.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "170°" } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \upright { "75°" }
                        \startTextSpanTwo
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        e'64
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        g'64
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        f'64
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        a'64
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \set stemLeftBeamCount = 4
                        \set stemRightBeamCount = 1
                        \once \override NoteHead.transparent = ##t
                        g'64
                        - \abjad-zero-padding-glissando
                        \glissando
                    }
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 4
                    \once \override NoteHead.transparent = ##t
                    b'32
                    \stopTextSpanOne
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak padding #14
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { spz. } \hspace #0.5 }
                    - \tweak bound-details.right.padding 1
                    \startTextSpanOne
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    a'32
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.transparent = ##t
                    d''32
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
                    \override Dots.staff-position = #2
                    \once \override NoteHead.transparent = ##t
                    \afterGrace
                    e''16.
                    \stopTextSpanOne
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak padding #14
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 1/3 spz. } \hspace #0.5 }
                    - \tweak bound-details.right.padding -3
                    \startTextSpanOne
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        c''16
                        \!
                        \stopTextSpanOne
                        \stopTextSpanTwo
                    }
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 1
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)
                    s1 * 1/8
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                    s1 * 3/4
                    s1 * 5/8
                    s1 * 5/8
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1/2
                    s1 * 1
                    s1 * 1/8
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                    s1 * 3/4
                    s1 * 5/8
                    \override Dots.staff-position = #2
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \revert Staff.NoteHead.no-ledgers
                    \staff-line-count 5
                    \revert Staff.StaffSymbol.line-positions
                    \revert Staff.Clef.stencil
                    \set Staff.forceClef = ##t
                    \clef "bass"
                    e,,2
                    \p
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #4
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { tuning peg glissando } \hspace #0.5 }
                    - \tweak bound-details.right.padding -1.5
                    \startTextSpan
                    \>
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
                    e,,16..
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \revert Dots.staff-position
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    ef,,64
                    \ppp
                    \stopTextSpan
                    \once \override Dots.staff-position = #2
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    ef,,2
                    \p
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #4
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { molto tast., flaut. } \hspace #0.5 }
                    - \tweak bound-details.right.padding 1
                    \startTextSpan
                    ~
                    \once \override Dots.staff-position = #2
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
                    ef,,2
                    ~
                    \once \override Dots.staff-position = #2
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override NoteHead.transparent = ##t
                    ef,,2
                    \stopTextSpan
                    - \tweak padding #4
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { molto pont., slow bow } \hspace #0.5 }
                    - \tweak bound-details.right.padding 1
                    \startTextSpan
                    ~
                    \once \override Dots.staff-position = #2
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override NoteHead.transparent = ##t
                    ef,,2
                    \stopTextSpan
                    - \tweak padding #4
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { tast., norm. } \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { ord., slow bow }
                    - \tweak bound-details.right.padding 1
                    \startTextSpan
                    ~
                    \once \override Dots.staff-position = #2
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
                    ef,,2
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
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
                        ef,,16
                        \stopTextSpan
                    }
                    <<
                        \context Voice = "cello voice temp"
                        {
                            \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 4
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \stringing-clef
                            \set Staff.forceClef = ##t
                            \revert Staff.StaffSymbol.line-positions
                            \clef "treble"
                            \voiceTwo
                            e''16
                            \mp
                            [
                            - \tweak padding #10
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { scratch } \hspace #0.5 }
                            - \tweak bound-details.right.padding -9
                            \startTextSpanTwo
                            - \tweak padding #7
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { molto pont. } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1.5
                            \startTextSpanOne
                            \<
                            e''16
                            e''16
                            \stopTextSpanOne
                            e''8
                            \mf
                            ^ \tenuto
                            ]
                            - \tweak padding #4
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { tast. } \hspace #0.5 }
                            - \tweak bound-details.right.padding 3
                            \startTextSpanOne
                            e''16
                            \mp
                            \stopTextSpanOne
                            [
                            - \tweak padding #4
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { molto pont. } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1.5
                            \startTextSpanOne
                            \<
                            e''16
                            e''16
                            \stopTextSpanOne
                            e''8
                            \mf
                            ^ \tenuto
                            \stopTextSpanTwo
                            ]
                            - \tweak padding #4
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { tast. } \hspace #0.5 }
                            - \tweak bound-details.right.padding 3
                            \startTextSpanOne
                            \once \override Dots.staff-position = #2
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \revert Staff.NoteHead.no-ledgers
                            \staff-line-count 5
                            \revert Staff.StaffSymbol.line-positions
                            \revert Staff.Clef.stencil
                            \set Staff.forceClef = ##t
                            \clef "bass"
                            ef,,4.
                            \p
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                            \stopTextSpanOne
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            - \tweak padding #10
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { III + IV } \hspace #0.5 }
                            - \tweak bound-details.right.padding -4
                            \startTextSpanTwo
                            ~
                            \once \override Dots.staff-position = #2
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
                            ef,,2
                            - \tweak circled-tip ##t
                            \>
                            {
                                \once \override Accidental.stencil = ##f
                                \once \override Dots.staff-position = #2
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
                                ef,,16
                                \!
                                \stopTextSpanTwo
                            }
                        }
                        \context Voice = "cello seagull voice"
                        {
                              %! applying indicators
                            \once \override Dots.transparent = ##t
                              %! applying invisibility
                            \once \override Rest.transparent = ##t
                              %! applying indicators
                            \once \override Rest.transparent = ##t
                              %! applying indicators
                            \voiceOne
                            r1 * 1/2
                            \once \override Dots.transparent = ##t
                            \once \override Rest.transparent = ##t
                            r8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \override Voice.NoteHead.no-ledgers = ##t
                            \afterGrace
                            <
                                d'
                                \tweak style #'harmonic
                                g'
                            >8
                            - \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-8 { "( perfect fourth, do not correct interval )" } } 
                            - \abjad-zero-padding-glissando
                            \glissando
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
                                <g c'>16
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
                            \afterGrace
                            <
                                f'
                                \tweak style #'harmonic
                                b'
                            >16
                            - \abjad-zero-padding-glissando
                            \glissando
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
                                <b e'>16
                            }
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \afterGrace
                            <
                                c'
                                \tweak style #'harmonic
                                f'
                            >16
                            - \abjad-zero-padding-glissando
                            \glissando
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
                                <f b>16
                            }
                            \once \override Dots.transparent = ##t
                            \once \override Rest.transparent = ##t
                            r8.
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \afterGrace
                            <
                                d'
                                \tweak style #'harmonic
                                g'
                            >16
                            - \abjad-zero-padding-glissando
                            \glissando
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
                                <g c'>16
                            }
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \afterGrace
                            <
                                f'
                                \tweak style #'harmonic
                                b'
                            >16
                            - \abjad-zero-padding-glissando
                            \glissando
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
                                <b e'>16
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                                \override Voice.NoteHead.no-ledgers = ##f
                            }
                        }
                    >>
                    \oneVoice
                    s1 * 1
                    s1 * 1/8
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
                    s1 * 3/4
                    s1 * 5/8
                    ^ \markup { \harp-pedal "-v^|^--^" }
                    \clef "treble"
                    ef4.
                    - \tweak circled-tip ##t
                    \<
                    - \tweak padding #3.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { bow } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpan
                    ~
                    \afterGrace
                    ef4
                    {
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.transparent = ##t
                        ef16
                        \!
                        \stopTextSpan
                    }
                    <<
                        \context Voice = "harp voice temp"
                        {
                            \once \override Rest.staff-position = #0
                            \voiceTwo
                            r4
                            \once \override Rest.staff-position = #0
                            r16
                            \once \override Staff.Accidental.stencil = ##f
                            d''64
                            _ \natural-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Staff.Accidental.stencil = ##f
                            ef'''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            af''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            ef''64
                            _ \flat-articulation
                            \once \override Rest.staff-position = #-5
                            r64
                            \once \override Staff.Accidental.stencil = ##f
                            bf'64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            d'64
                            _ \natural-articulation
                            ]
                            \once \override Rest.staff-position = #-5
                            r64
                            \once \override Rest.staff-position = #-5
                            r16
                            \once \override Rest.staff-position = #0
                            r4..
                            \once \override Staff.Accidental.stencil = ##f
                            bf'64
                            _ \flat-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Rest.staff-position = #-5
                            r32.
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            af''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            g''64
                            _ \natural-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            cs''64
                            _ \sharp-articulation
                            ]
                            \once \override Rest.staff-position = #-5
                            r8
                            \once \override Staff.Accidental.stencil = ##f
                            bf'64
                            _ \flat-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Staff.Accidental.stencil = ##f
                            f''64
                            _ \natural-articulation
                            \once \override Rest.staff-position = #-5
                            r32
                            \once \override Staff.Accidental.stencil = ##f
                            g''64
                            _ \natural-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            cs''64
                            _ \sharp-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            af''64
                            _ \flat-articulation
                            ]
                            \once \override Rest.staff-position = #-5
                            r64
                            \once \override Rest.staff-position = #-5
                            r8.
                            \once \override Rest.staff-position = #0
                            r8
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Staff.Accidental.stencil = ##f
                            d'''64
                            _ \natural-articulation
                            \once \override Rest.staff-position = #-5
                            r64
                            \once \override Staff.Accidental.stencil = ##f
                            bf''64
                            _ \flat-articulation
                            \once \override Rest.staff-position = #-5
                            r64
                            \once \override Staff.Accidental.stencil = ##f
                            af''64
                            _ \flat-articulation
                            ]
                            \once \override Rest.staff-position = #-5
                            r32
                            \once \override Rest.staff-position = #-5
                            r4
                            \once \override Staff.Accidental.stencil = ##f
                            f''64
                            _ \natural-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Staff.Accidental.stencil = ##f
                            af'64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            cs''64
                            _ \sharp-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            bf'64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            f''64
                            _ \natural-articulation
                            ]
                            \once \override Rest.staff-position = #-5
                            r32.
                            \once \override Rest.staff-position = #-5
                            r8.
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Staff.Accidental.stencil = ##f
                            g''64
                            _ \natural-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            cs''64
                            _ \sharp-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            bf'64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            ef''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            af''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            ef''64
                            _ \flat-articulation
                            ]
                            \once \override Rest.staff-position = #-5
                            r64
                            \once \override Rest.staff-position = #-5
                            r16
                              %! applying indicators
                            \once \override Rest.staff-position = #-5
                              %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2
                            \once \override Rest.staff-position = #0
                            r8
                            \once \override Staff.Accidental.stencil = ##f
                            cs''64
                            _ \sharp-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Rest.staff-position = #-5
                            r64
                            \once \override Staff.Accidental.stencil = ##f
                            bf''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            d'''64
                            _ \natural-articulation
                            \once \override Rest.staff-position = #-5
                            r64
                            \once \override Staff.Accidental.stencil = ##f
                            g''64
                            _ \natural-articulation
                            ]
                            \once \override Rest.staff-position = #-5
                            r32
                            \once \override Rest.staff-position = #-5
                            r16
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Staff.Accidental.stencil = ##f
                            d'''64
                            _ \natural-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            bf''64
                            _ \flat-articulation
                            \once \override Rest.staff-position = #-5
                            r64
                            \once \override Staff.Accidental.stencil = ##f
                            bf''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            g''64
                            _ \natural-articulation
                            \once \override Rest.staff-position = #-5
                            r64
                            \once \override Staff.Accidental.stencil = ##f
                            bf'64
                            _ \flat-articulation
                            ]
                            \once \override Rest.staff-position = #-5
                            r16
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Staff.Accidental.stencil = ##f
                            af''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            g''64
                            _ \natural-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            ]
                            \once \override Rest.staff-position = #-5
                            r16
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Rest.staff-position = #-5
                            r16
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            ef'''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            d'''64
                            _ \natural-articulation
                            ]
                            \once \override Rest.staff-position = #-5
                            r16
                            \once \override Staff.Accidental.stencil = ##f
                            bf''64
                            _ \flat-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Rest.staff-position = #-5
                            r32.
                            \once \override Staff.Accidental.stencil = ##f
                            f'''64
                            _ \natural-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            af'''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            bf''64
                            _ \flat-articulation
                            ]
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            - \tweak Beam.positions #'(-12 . -12)
                            [
                            \once \override Staff.Accidental.stencil = ##f
                            f'''64
                            _ \natural-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            cs'''64
                            _ \sharp-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            bf''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            ef'''64
                            _ \flat-articulation
                            \once \override Staff.Accidental.stencil = ##f
                            g''64
                            _ \natural-articulation
                            ]
                            \once \override Dots.transparent = ##t
                            \once \override Rest.staff-position = #-5
                            \once \override Rest.transparent = ##t
                            r32
                            \once \override Dots.transparent = ##t
                            \once \override Rest.staff-position = #-5
                            \once \override Rest.transparent = ##t
                            r2...
                        }
                        \context Voice = "harp polyrhythm voice"
                        {
                            <<
                                \context Voice = "harp polyrhythm voice temp"
                                {
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    \voiceOne
                                    \voiceOne
                                    r4
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r16
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        d''32
                                        ^ \natural-articulation
                                        ^ \ppp
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak padding #22.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { normale } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1.5
                                        \startTextSpan
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Rest.staff-position = #13
                                        r32
                                        \once \override Staff.Accidental.stencil = ##f
                                        f''32
                                        ^ \natural-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        d''32
                                        ^ \natural-articulation
                                        ]
                                        \once \override Rest.staff-position = #13
                                        r32
                                        ^ \mp
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r2
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        bf'32
                                        ^ \flat-articulation
                                        ^ \ppp
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Staff.Accidental.stencil = ##f
                                        g''32
                                        ^ \natural-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        bf''32
                                        ^ \flat-articulation
                                        ]
                                        \once \override Rest.staff-position = #13
                                        r16
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r8
                                    ^ \mp
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        bf'32
                                        ^ \flat-articulation
                                        ^ \ppp
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Staff.Accidental.stencil = ##f
                                        af'32
                                        ^ \flat-articulation
                                        \once \override Rest.staff-position = #13
                                        r16
                                        \once \override Staff.Accidental.stencil = ##f
                                        f''32
                                        ^ \natural-articulation
                                        ]
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r4
                                    ^ \mp
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r16
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs'''32
                                        ^ \ppp
                                        ^ \sharp-articulation
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Rest.staff-position = #13
                                        r16
                                        \once \override Staff.Accidental.stencil = ##f
                                        d''32
                                        ^ \natural-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        ef'''32
                                        ^ \flat-articulation
                                        ]
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r4
                                    ^ \mp
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        f''32
                                        ^ \natural-articulation
                                        ^ \ppp
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Rest.staff-position = #13
                                        r16
                                        \once \override Staff.Accidental.stencil = ##f
                                        bf''32
                                        ^ \flat-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        ef''32
                                        ^ \flat-articulation
                                        ]
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r8.
                                    ^ \mp
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs'''32
                                        ^ \ppp
                                        ^ \sharp-articulation
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Rest.staff-position = #13
                                        r16.
                                        \once \override Staff.Accidental.stencil = ##f
                                        g''32
                                        ^ \natural-articulation
                                        ]
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r2
                                    ^ \mp
                                      %! applying indicators
                                    \once \override Dots.transparent = ##t
                                      %! applying indicators
                                    \once \override Rest.staff-position = #13
                                      %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                      %! applying indicators
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/16
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs''32
                                        ^ \ppp
                                        ^ \sharp-articulation
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs'''32
                                        ^ \sharp-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        af''32
                                        ^ \flat-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        ef'''32
                                        ^ \flat-articulation
                                        ]
                                        \once \override Rest.staff-position = #13
                                        r32
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r16
                                    ^ \mp
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs'''32
                                        ^ \ppp
                                        ^ \sharp-articulation
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Rest.staff-position = #13
                                        r32
                                        \once \override Staff.Accidental.stencil = ##f
                                        d''32
                                        ^ \natural-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        f''32
                                        ^ \natural-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        f''32
                                        ^ \natural-articulation
                                        ]
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r16
                                    ^ \mp
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs'''32
                                        ^ \ppp
                                        ^ \sharp-articulation
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Rest.staff-position = #13
                                        r32
                                        \once \override Staff.Accidental.stencil = ##f
                                        bf''32
                                        ^ \flat-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        f''32
                                        ^ \natural-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        d'''32
                                        ^ \mp
                                        ^ \natural-articulation
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs'''32
                                        ^ \ppp
                                        ^ \sharp-articulation
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Staff.Accidental.stencil = ##f
                                        af''32
                                        ^ \flat-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        ef''32
                                        ^ \flat-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        f''32
                                        ^ \natural-articulation
                                        ]
                                        \once \override Rest.staff-position = #13
                                        r32
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r16
                                    ^ \mp
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        bf''32
                                        ^ \flat-articulation
                                        ^ \ppp
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Staff.Accidental.stencil = ##f
                                        af''32
                                        ^ \flat-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        ef'''32
                                        ^ \flat-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        d'''32
                                        ^ \natural-articulation
                                        ]
                                        \once \override Rest.staff-position = #13
                                        r32
                                        ^ \mp
                                    }
                                    \times 4/5
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        cs'''32
                                        ^ \ppp
                                        ^ \sharp-articulation
                                        - \tweak Beam.positions #'(12 . 12)
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        ^ \<
                                        \once \override Rest.staff-position = #13
                                        r16
                                        \once \override Staff.Accidental.stencil = ##f
                                        af''32
                                        ^ \flat-articulation
                                        \once \override Staff.Accidental.stencil = ##f
                                        ef''32
                                        ^ \flat-articulation
                                        \stopTextSpan
                                        ]
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.staff-position = #13
                                    \once \override Rest.transparent = ##t
                                    r2...
                                    ^ \mp
                                }
                                \context Voice = "harp bowing voice"
                                {
                                    \textSpannerDown
                                    \voiceTwo
                                    ef2
                                    \mf
                                    - \tweak padding #14
                                    - \abjad-dashed-line-with-up-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { bow } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpan
                                    ~
                                    ef2
                                    ~
                                    ef2
                                    ~
                                    ef2
                                    ~
                                    ef2
                                    ~
                                    ef2
                                    ~
                                    ef2
                                    ~
                                    ef2
                                    ~
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Stem.stencil = ##f
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    ef2
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Stem.stencil = ##f
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    ef2
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        ef16
                                        \!
                                        \stopTextSpan
                                        \textSpannerUp
                                    }
                                }
                            >>
                            \oneVoice
                        }
                    >>
                    \oneVoice
                    s1 * 1/8
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
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
                        s1 * 3/4
                        s1 * 5/8
                        s1 * 5/8
                        r4
                        r16
                        \pitchedTrill
                        af''8.
                        \mp
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \startTrillSpan e'''
                        af''16
                        r16
                        \mf
                        \stopTrillSpan
                        r4
                        r16
                        \pitchedTrill
                        a''16
                        \mp
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \startTrillSpan b''
                        a''8
                        r16
                        \mf
                        \stopTrillSpan
                        \override Staff.Stem.stemlet-length = 0.75
                        \pitchedTrill
                        a''16
                        \mp
                        [
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \startTrillSpan ef'''
                        \revert Staff.Stem.stemlet-length
                        a''8.
                        ]
                        r16
                        \mf
                        \stopTrillSpan
                        r8
                        \pitchedTrill
                        c'''4
                        \mp
                        - \tweak circled-tip ##t
                        \>
                        \startTrillSpan d'''
                        r8
                        \mf
                        \stopTrillSpan
                        \pitchedTrill
                        b''4
                        \mp
                        - \tweak circled-tip ##t
                        \>
                        \startTrillSpan cs'''
                        r16
                        \mf
                        \stopTrillSpan
                        \pitchedTrill
                        fs'''8.
                        \mp
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \startTrillSpan a'''
                        fs'''16
                        r4..
                        \mf
                        \stopTrillSpan
                        r8
                        \stopTrillSpan
                        \override Staff.Stem.stemlet-length = 0.75
                        \pitchedTrill
                        g''8.
                        \mp
                        [
                        - \tweak circled-tip ##t
                        \>
                        \startTrillSpan c'''
                        \revert Staff.Stem.stemlet-length
                        \pitchedTrill
                        d'''8.
                        \mp
                        ]
                        - \tweak circled-tip ##t
                        \>
                        \startTrillSpan ef'''
                        \override Staff.Stem.stemlet-length = 0.75
                        \pitchedTrill
                        f'''8
                        \!
                        [
                        \startTrillSpan ef'''
                        \pitchedTrill
                        ef'''8.
                        \startTrillSpan d'''
                        \revert Staff.Stem.stemlet-length
                        \pitchedTrill
                        e'''8.
                        ]
                        \startTrillSpan f'''
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r8.
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                        \stopTrillSpan
                        \staff-line-count 1
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \clef "percussion"
                        \afterGrace
                        \tweak style #'cross
                        c'16
                        \p
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \tweak padding #2
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                        - \tweak bound-details.right.text \tremolo-stretto
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpanTwo
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { bellows } \hspace #0.5 }
                        - \tweak bound-details.right.padding -0.5
                        \startTextSpanOne
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
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
                            \!
                            \stopTextSpanTwo
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        \tweak style #'cross
                        c'8
                        \mp
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \tweak padding #2
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                        - \tweak bound-details.right.text \tremolo-stretto
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpanTwo
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
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
                            \!
                            \stopTextSpanTwo
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \afterGrace
                        \tweak style #'cross
                        c'8.
                        \mf
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \tweak padding #2
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                        - \tweak bound-details.right.text \tremolo-stretto
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpanTwo
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
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
                            \!
                            \stopTextSpanTwo
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'4
                        \f
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \tweak padding #2
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpanTwo
                        ~
                        \once \override Dots.staff-position = #2
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
                        c'8
                        - \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-2 { \center-column { \line { "fluttering" } \line { "quasi-cadenza" } } } } 
                        - \tweak padding #6
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                        \stopTextSpanTwo
                        - \tweak padding #2
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \tremolo-stretto \hspace #0.5 }
                        - \tweak bound-details.right.padding -1.5
                        \startTextSpanTwo
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
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
                            \!
                            \stopTextSpanOne
                            \stopTextSpanTwo
                        }
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                    }
                }
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 3/4
                        s1 * 5/8
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \clef "bass"
                        <ef, ef>4
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
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
                        <ef, ef>16
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        <ef, dqs>4
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
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
                        <ef, dqs>32.
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        <ef, ef>64
                        \mf
                        \once \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        <ef,, ef,>2
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                        \once \override Dots.staff-position = #2
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
                        <ef,, ef,>2
                        ~
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        <ef,, ef,>2
                        ~
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        <ef,, ef,>2
                        ~
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        <ef,, ef,>2
                        ~
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        <ef,, ef,>2
                        ~
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        <ef,, ef,>2
                        ~
                        \once \override Dots.staff-position = #2
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
                        <ef,, ef,>2
                        ^ \mf
                        - \tweak circled-tip ##t
                        ^ \>
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
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
                            <ef,, ef,>16
                            \!
                        }
                        s1 * 1
                        s1 * 1/8
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \staff-line-count 1
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Piano }
                          %! +SCORE
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ pno }
                        \clef "percussion"
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        g,8
                        \mf
                        - \tweak padding #9
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { Chains } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
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
                            \stopTextSpan
                            ]
                            \sustainOn
                        }
                        r4
                        \afterGrace
                        s1 * 5/8
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        s1 * 5/8
                        <<
                            \context Voice = "piano 1 voice temp"
                            {
                                \once \override Rest.staff-position = #-5
                                \voiceTwo
                                r4
                                \once \override Rest.staff-position = #-5
                                r16
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \staff-line-count 5
                                    \once \override Staff.Accidental.stencil = ##f
                                    \ottava 1
                                    \clef "treble"
                                    d'''64
                                    _ \natural-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    e''''64
                                    _ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    a'''64
                                    _ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef''''64
                                    _ \flat-articulation
                                    ]
                                    \once \override Rest.staff-position = #-5
                                    r32.
                                }
                                \once \override Rest.staff-position = #-5
                                r16
                                \once \override Rest.staff-position = #-5
                                r4..
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''64
                                    _ \natural-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Rest.staff-position = #-5
                                    r64
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''64
                                    _ \natural-articulation
                                    \once \override Rest.staff-position = #-5
                                    r64
                                    \once \override Staff.Accidental.stencil = ##f
                                    b''64
                                    _ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''''64
                                    _ \sharp-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'''64
                                    _ \flat-articulation
                                    ]
                                }
                                \once \override Rest.staff-position = #-5
                                r8
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''64
                                    _ \natural-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf''64
                                    _ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'''64
                                    _ \flat-articulation
                                    \once \override Rest.staff-position = #-5
                                    r32.
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''64
                                    _ \natural-articulation
                                    ]
                                }
                                \once \override Rest.staff-position = #-5
                                r8.
                                \once \override Rest.staff-position = #-5
                                r8
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''64
                                    _ \sharp-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Rest.staff-position = #-5
                                    r16
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''64
                                    _ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf''64
                                    _ \flat-articulation
                                    ]
                                }
                                \once \override Rest.staff-position = #-5
                                r4
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''64
                                    _ \natural-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'''64
                                    _ \flat-articulation
                                    \once \override Rest.staff-position = #-5
                                    r32
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'''64
                                    _ \flat-articulation
                                    ]
                                    \once \override Rest.staff-position = #-5
                                    r32
                                }
                                \once \override Rest.staff-position = #-5
                                r8.
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    b'''64
                                    _ \natural-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Rest.staff-position = #-5
                                    r16
                                    \once \override Rest.staff-position = #-5
                                    r64
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'''64
                                    _ \natural-articulation
                                    ]
                                }
                                \once \override Rest.staff-position = #-5
                                r16
                                  %! applying indicators
                                \once \override Rest.staff-position = #-5
                                  %! applying invisibility
                                \once \override Rest.transparent = ##t
                                r1 * 1/2
                                \once \override Rest.staff-position = #-5
                                r8
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''64
                                    _ \sharp-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Rest.staff-position = #-5
                                    r64
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''''64
                                    _ \sharp-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'''64
                                    _ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'''64
                                    _ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    a'''64
                                    _ \natural-articulation
                                    ]
                                    \once \override Rest.staff-position = #-5
                                    r64
                                }
                                \once \override Rest.staff-position = #-5
                                r16
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    e'''64
                                    _ \natural-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''''64
                                    _ \sharp-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    f''''64
                                    _ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''''64
                                    _ \natural-articulation
                                    \once \override Rest.staff-position = #-5
                                    r32
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef''''64
                                    _ \flat-articulation
                                    ]
                                }
                                \once \override Rest.staff-position = #-5
                                r16
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''64
                                    _ \natural-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'''64
                                    _ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    d''''64
                                    _ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''64
                                    _ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    d''''64
                                    _ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    b'''64
                                    _ \natural-articulation
                                    ]
                                    \once \override Rest.staff-position = #-5
                                    r64
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''64
                                    _ \natural-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Rest.staff-position = #-5
                                    r32.
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef''''64
                                    _ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'''64
                                    _ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''''64
                                    _ \sharp-articulation
                                    ]
                                }
                                \once \override Rest.staff-position = #-5
                                r16
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''64
                                    _ \flat-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    fs'''64
                                    _ \sharp-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''64
                                    _ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'''64
                                    _ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    e'''64
                                    _ \natural-articulation
                                    \once \override Rest.staff-position = #-5
                                    r64
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''64
                                    _ \natural-articulation
                                    ]
                                }
                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''64
                                    _ \sharp-articulation
                                    - \tweak Beam.positions #'(-12 . -12)
                                    [
                                    \once \override Rest.staff-position = #-5
                                    r32.
                                    \once \override Staff.Accidental.stencil = ##f
                                    a'''64
                                    _ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'''64
                                    _ \flat-articulation
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''64
                                    _ \natural-articulation
                                    ]
                                    \ottava 0
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #-5
                                \once \override Rest.transparent = ##t
                                r2...
                            }
                            \context Voice = "piano polyrhythm voice"
                            {
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                \voiceOne
                                r4
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r16
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''32
                                    \ppp
                                    ^ \natural-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Rest.staff-position = #13
                                    r16
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    d''''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''32
                                    ^ \flat-articulation
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r2
                                \mp
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''32
                                    \ppp
                                    ^ \natural-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Staff.Accidental.stencil = ##f
                                    f''32
                                    ^ \natural-articulation
                                    \once \override Rest.staff-position = #13
                                    r16
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'''32
                                    ^ \natural-articulation
                                    ]
                                    \once \override Rest.staff-position = #13
                                    r32
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r8
                                \mp
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''32
                                    \ppp
                                    ^ \natural-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Rest.staff-position = #13
                                    r32
                                    \once \override Staff.Accidental.stencil = ##f
                                    fs'''32
                                    ^ \sharp-articulation
                                    \once \override Rest.staff-position = #13
                                    r32
                                    \once \override Staff.Accidental.stencil = ##f
                                    a'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'''32
                                    ^ \flat-articulation
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r4
                                \mp
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r16
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''32
                                    \ppp
                                    ^ \sharp-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''32
                                    ^ \sharp-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'''32
                                    ^ \flat-articulation
                                    ]
                                    \once \override Rest.staff-position = #13
                                    r16
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r4
                                \mp
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''32
                                    \ppp
                                    ^ \natural-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''32
                                    ^ \natural-articulation
                                    \once \override Rest.staff-position = #13
                                    r32
                                    \once \override Staff.Accidental.stencil = ##f
                                    d''''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'''32
                                    ^ \natural-articulation
                                    ]
                                    \once \override Rest.staff-position = #13
                                    r32
                                    \mp
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r8.
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    b'''32
                                    \ppp
                                    ^ \natural-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    b''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''32
                                    ^ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'''32
                                    ^ \flat-articulation
                                    ]
                                    \once \override Rest.staff-position = #13
                                    r32
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r2
                                \mp
                                  %! applying indicators
                                \once \override Dots.transparent = ##t
                                  %! applying indicators
                                \once \override Rest.staff-position = #13
                                  %! applying invisibility
                                \once \override Rest.transparent = ##t
                                  %! applying indicators
                                \once \override Rest.transparent = ##t
                                r1 * 3/16
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''32
                                    \ppp
                                    ^ \sharp-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''32
                                    ^ \flat-articulation
                                    \once \override Rest.staff-position = #13
                                    r16
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef''''32
                                    ^ \flat-articulation
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r16
                                \mp
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    e'''32
                                    \ppp
                                    ^ \natural-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Rest.staff-position = #13
                                    r16
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''32
                                    ^ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    d''''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    a'''32
                                    ^ \natural-articulation
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r16
                                \mp
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''32
                                    \ppp
                                    ^ \natural-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Rest.staff-position = #13
                                    r8
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''32
                                    \mp
                                    ^ \natural-articulation
                                    ]
                                }
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''32
                                    \ppp
                                    ^ \natural-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Staff.Accidental.stencil = ##f
                                    b'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''''32
                                    ^ \natural-articulation
                                    \once \override Rest.staff-position = #13
                                    r16
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''32
                                    ^ \natural-articulation
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r16
                                \mp
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''32
                                    \ppp
                                    ^ \flat-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Rest.staff-position = #13
                                    r16.
                                    \once \override Staff.Accidental.stencil = ##f
                                    a'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'''32
                                    \mp
                                    ^ \flat-articulation
                                    ]
                                }
                                \times 4/6
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''32
                                    \ppp
                                    ^ \sharp-articulation
                                    - \tweak Beam.positions #'(12 . 12)
                                    [
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''32
                                    ^ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    d''''32
                                    ^ \natural-articulation
                                    ]
                                    \once \override Rest.staff-position = #13
                                    r16
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.staff-position = #13
                                \once \override Rest.transparent = ##t
                                r2...
                                \mp
                            }
                        >>
                        \oneVoice
                        s1 * 1/8
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 3/4
                        s1 * 5/8
                        s1 * 5/8
                        r4
                        r16
                        \override Staff.PianoPedalBracket.shorten-pair = #'(0 . 0)
                        \clef "bass"
                        <ef a bf c' d' f'>8.
                        - \tenuto
                        \laissezVibrer
                        \mf
                        \sustainOn
                        \afterGrace
                        r4..
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        <ef af bf df' g'>16
                        - \tenuto
                        \laissezVibrer
                        \mf
                        \sustainOn
                        \afterGrace
                        r8.
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        <ef a bf c' d' f'>8.
                        - \tenuto
                        \laissezVibrer
                        \mf
                        \sustainOn
                        r8
                        \afterGrace
                        r8
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        <ef af bf df' g'>8
                        - \tenuto
                        \laissezVibrer
                        \mf
                        \sustainOn
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
                        <ef a bf c' d' f'>8
                        - \tenuto
                        \laissezVibrer
                        \mf
                        \sustainOn
                        \afterGrace
                        r8.
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \afterGrace
                        <ef af bf df' g'>8.
                        - \tenuto
                        \laissezVibrer
                        \mf
                        \sustainOn
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >16
                        \mp
                        [
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >16
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >16
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \afterGrace
                        <
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >8
                        - \tenuto
                        \mf
                        ]
                        \sustainOn
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >16
                        \mp
                        [
                        \<
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >16
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        <
                            \tweak style #'la
                            f,,
                            \tweak style #'la
                            g,,
                            \tweak style #'la
                            a,,
                        >16
                        \once \override NoteHead.X-offset = 0
                        \once \override Staff.Accidental.stencil = ##f
                        \once \override Staff.Glissando.thickness = #8.25
                        \afterGrace
                        <
                            \tweak style #'la
                            c,,
                            \tweak style #'la
                            d,,
                            \tweak style #'la
                            e,,
                        >8
                        - \tenuto
                        \mf
                        ]
                        \sustainOn
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \afterGrace
                        <ef a bf c' d' f'>8.
                        - \tenuto
                        \laissezVibrer
                        \mf
                        [
                        \sustainOn
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \afterGrace
                        <ef af bf df' g'>8.
                        - \tenuto
                        \laissezVibrer
                        \mf
                        ]
                        \sustainOn
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \afterGrace
                        <ef a bf c' d' f'>8
                        - \tenuto
                        \laissezVibrer
                        \mf
                        [
                        \sustainOn
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \afterGrace
                        <ef af bf df' g'>8.
                        - \tenuto
                        \laissezVibrer
                        \mf
                        ]
                        \sustainOn
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \afterGrace
                        <ef a bf c' d' f'>8
                        - \tenuto
                        \laissezVibrer
                        \mf
                        [
                        \sustainOn
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        \afterGrace
                        <ef af bf df' g'>16
                        - \tenuto
                        \laissezVibrer
                        \mf
                        ]
                        \sustainOn
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \sustainOff
                        }
                        s1 * 1
                        s1 * 1/8
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
