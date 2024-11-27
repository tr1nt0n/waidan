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
                        a''16
                        :128
                        \fff
                        \stopTextSpanOne
                        \stopTextSpanTwo
                    }
                    r4
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
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
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
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
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
