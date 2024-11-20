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
            \noBreak
              %! +SCORE
            \once \override TimeSignature.Y-offset = 15
            \time 9/16
            s1 * 9/16
            - \tweak padding #19
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { ALL STAND }
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
              %! +SCORE
            \pageBreak
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
            - \tweak padding #17
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { ALL SIT }
              %! +SCORE
            \pageBreak
            \once \override Score.TimeSignature.stencil = ##f
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/8
            R1 * 1/8
            - \tweak font-size #'12
            - \tweak padding -10
            _ \very-long-fermata
              %! +SCORE
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 5/4
            s1 * 5/4
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
                    r16
                    r2
                    \once \revert Staff.StaffSymbol.line-positions
                    \afterGrace
                    s1 * 5/8
                    {
                        \override Dots.staff-position = #2
                        \ottava 1
                        \once \override Flag.stroke-style = #"grace"
                        ef''16
                        \mp
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #11.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { IV } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanOne
                        - \tweak padding #9
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { poco pont. } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanTwo
                        \<
                        ^ (
                    }
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1 1 0)
                          (1 0 1.5 -1 2 0)
                          (2 0 2.5 1 3 0)
                          (3 0 3.5 -1 4 0)
                          (4 0 4.5 1 5 0)
                          (5 0 5.5 -1 6 0)
                          (6 0 6.5 1 7 0)
                          (7 0 7.5 -1 8 0)
                          (8 0 8.5 1 9 0)
                          (9 0 9.5 -1 10 0)
                          (10 0 10.5 1 11 0)
                          (11 0 11.5 -1 12 0)
                          (12 0 12.5 1 13 0)
                          (13 0 13.5 -1 14 0)
                          (14 0 14.5 1 15 0)
                          (15 0 15.5 -1 16 0)
                          (16 0 16.5 1 17 0)
                          (17 0 17.5 -1 18 0)
                          (18 0 18.5 1 19 0)
                          (19 0 19.5 -1 20 0)
                          (20 0 20.5 1 21 0)
                          (21 0 21.5 -1 22 0)
                          (22 0 22.5 1 23 0)
                          (23 0 23.5 -1 24 0)
                          (24 0 24.5 1 25 0)
                          (25 0 25.5 -1 26 0)
                          (26 0 26.5 1 27 0)
                          (27 0 27.5 -1 28 0)
                          (28 0 28.5 1 29 0)
                          (29 0 29.5 -1 30 0)
                          (30 0 30.5 1 31 0)
                          (31 0 31.5 -1 32 0)
                          (32 0 32.5 1 33 0)
                          (33 0 33.5 -1 34 0)
                          (34 0 34.5 1 35 0)
                          (35 0 35.5 -1 36 0)
                          (36 0 36.5 1 37 0)
                          (37 0 37.5 -1 38 0)
                     )
                     #0.5
                    bqf''4.
                    \ff
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    \afterGrace
                    bqf''8.
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
                        bqf''16
                        )
                        \stopTextSpanTwo
                        \ottava 0
                    }
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        c
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        ef
                    >8
                    - \downbow
                    - \marcato
                    - \tweak padding #6.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { + III } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpanTwo
                    r8
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        c
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        ef
                    >4
                        _ #(make-dynamic-script (markup #:whiteout #:italic "ff mf"))
                    - \downbow
                    - \tenuto
                    \stopTextSpanTwo
                    \<
                    \override Dots.staff-position = #2
                    \ottava 1
                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    \fp
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak padding #8
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { poco pont. } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpanTwo
                    \<
                    ^ (
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1 1 0)
                          (1 0 1.5 -1 2 0)
                          (2 0 2.5 1 3 0)
                          (3 0 3.5 -1 4 0)
                          (4 0 4.5 1 5 0)
                          (5 0 5.5 -1 6 0)
                          (6 0 6.5 1 7 0)
                          (7 0 7.5 -1 8 0)
                          (8 0 8.5 1 9 0)
                          (9 0 9.5 -1 10 0)
                          (10 0 10.5 1 11 0)
                          (11 0 11.5 -1 12 0)
                          (12 0 12.5 1 13 0)
                          (13 0 13.5 -1 14 0)
                          (14 0 14.5 1 15 0)
                          (15 0 15.5 -1 16 0)
                          (16 0 16.5 1 17 0)
                          (17 0 17.5 -1 18 0)
                          (18 0 18.5 1 19 0)
                          (19 0 19.5 -1 20 0)
                          (20 0 20.5 1 21 0)
                          (21 0 21.5 -1 22 0)
                          (22 0 22.5 1 23 0)
                          (23 0 23.5 -1 24 0)
                          (24 0 24.5 1 25 0)
                          (25 0 25.5 -1 26 0)
                          (26 0 26.5 1 27 0)
                          (27 0 27.5 -1 28 0)
                          (28 0 28.5 1 29 0)
                          (29 0 29.5 -1 30 0)
                          (30 0 30.5 1 31 0)
                          (31 0 31.5 -1 32 0)
                          (32 0 32.5 1 33 0)
                          (33 0 33.5 -1 34 0)
                          (34 0 34.5 1 35 0)
                          (35 0 35.5 -1 36 0)
                          (36 0 36.5 1 37 0)
                          (37 0 37.5 -1 38 0)
                     )
                     #0.5
                    \revert Staff.Stem.stemlet-length
                    bqf''16
                    \ff
                    ]
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    bqf''4
                    ~
                    bqf''16
                    ~
                    \afterGrace
                    bqf''4.
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
                        bqf''16
                        )
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        \ottava 0
                    }
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
                    - \tweak padding #8.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 3/4 spazzolato } \hspace #0.5 }
                    - \tweak bound-details.right.padding -6
                    \startTextSpanOne
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
                        \stopTextSpanOne
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
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 3/4
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
                    \once \override Staff.Clef.X-extent = ##f
                    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \revert Staff.NoteHead.no-ledgers
                    \staff-line-count 5
                    \revert Staff.StaffSymbol.line-positions
                    \revert Staff.Clef.stencil
                    \set Staff.forceClef = ##t
                    \clef "alto"
                    r2
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r16
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
                    c'4
                    ^ \tremolo-articulation
                    _ #(make-dynamic-script
                        (markup
                            #:whiteout
                            #:line (
                                #:general-align Y -2 #:normal-text #:larger "“"
                                #:hspace -0.1
                                #:dynamic "p"
                                #:hspace -0.25
                                #:general-align Y -2 #:normal-text #:larger "”"
                                )
                            )
                        )
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-13 { \center-column { \line { "Hold all seven Stones loosely in your hands," } \line { "and cup your hands around the microphone." } \line { "Rotate the hands gently," } \line { "allowing the Stones to roll." } } } } 
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
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
                    }
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r4..
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
                        - \tweak circled-tip ##t
                        \<
                        \once \override NoteHead.X-extent = #'(-1.5 . -1.5)
                        \once \override NoteHead.text = \markup \override #'(size . .7) { \woodwind-diagram #'baritone-saxophone #'((cc . (one two three four five)) (lh . ()) (rh . ())) }
                        d32
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 6.5
                        - \bendAfter #'0
                        \mf
                        - \tweak circled-tip ##t
                        \>
                        \revert Dots.stencil
                        \revert NoteHead.stencil
                        \revert NoteHead.no-ledgers
                    }
                    g'4.
                    \f
                    ~
                    g'8.
                    cqs''8
                    - \accent
                    r16
                    cqs''16
                    - \accent
                    ~
                    cqs''16
                    r8.
                    g'4.
                    ~
                    g'16
                    ~
                    g'4.
                    \override NoteHead.X-extent = #'(0 . 0)
                    \override NoteHead.transparent = ##t
                    \override NoteHead.no-ledgers = ##t
                    r4
                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Env ON }
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Soprano" } 
                    \times 4/5
                    {
                        r8
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        \afterGrace
                        g'8
                        \mf
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #8
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { trumpet embouchure } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            g'16
                        }
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.transparent = ##t
                        d''16
                        \p
                        ]
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
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
                    d''4
                    ~
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
                    d''8
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
                    b'''8
                    \f
                    - \abjad-zero-padding-glissando
                    \glissando
                    \>
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
                    c'''16
                    \pp
                    - \abjad-zero-padding-glissando
                    \glissando
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
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        d'''16
                    }
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r16
                    \p
                    \override Dots.staff-position = #2
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
                    f'8.
                    \mf
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak stencil #constante-hairpin
                    \<
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
                    d''8
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak circled-tip ##t
                    \>
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
                    f'16
                    - \abjad-zero-padding-glissando
                    \glissando
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
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        a'16
                        \!
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Env OFF }
                        \stopTextSpan
                    }
                    \revert NoteHead.X-extent
                    \revert NoteHead.transparent
                    \revert NoteHead.no-ledgers
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r2
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Baritone" } 
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r16
                    \repeat tremolo 4 {
                        \once \override NoteHead.X-extent = #'(-1.5 . 2)
                        \override NoteHead.no-ledgers = ##t
                        \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup \override #'(size . .7) { \woodwind-diagram #'baritone-saxophone #'((cc . (one two three four five)) (lh . ()) (rh . (low-c))) }\once \override NoteHead.X-offset = 0.5
                        \override Dots.stencil = ##f
                        d32
                        \pp
                        - \tweak stencil #constante-hairpin
                        \<
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
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r4..
                    \!
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
                    - \tweak padding #6.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \tremolo-stretto \hspace #0.5 }
                    - \tweak bound-details.right.padding -1.5
                    \startTextSpanThree
                    {
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.transparent = ##t
                        c'16
                        \stopBowSpan
                        \stopTextSpanOne
                        \stopTextSpanThree
                        \stopTextSpanTwo
                    }
                    <<
                        \context Voice = "cello voice temp"
                        {
                            \override Voice.Dots.staff-position = #-2
                            \voiceTwo
                            b'8.
                            [
                            - \tweak Y-extent ##f
                            - \tweak Y-offset 0
                            - \tweak padding 2
                            \startBowSpan #'((0 . 0) (1.0 . -2))
                            - \tweak font-size -4- \tweak Y-offset -2
                            - \tweak padding #0
                            - \abjad-dashed-line-with-up-hook
                            - \tweak bound-details.left.text \markup \concat { \gridato-twist-bow \hspace #0.5 }
                            - \tweak bound-details.right.padding -4
                            \startTextSpanOne
                            - \tweak padding #5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { back of body } \hspace #0.5 }
                            - \tweak bound-details.right.padding -4
                            \startTextSpanTwo
                            b'8.
                            \stopBowSpan
                            - \tweak Y-extent ##f
                            - \tweak Y-offset 0
                            - \tweak padding 2
                            \startBowSpan #'((0 . 0) (1.0 . -3.5))
                            \afterGrace
                            b'8.
                            \stopBowSpan
                            ]
                            - \tweak Y-extent ##f
                            - \tweak Y-offset 0
                            - \tweak padding 2
                            \startBowSpan #'((0 . 0) (1.0 . -5))
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                b'16
                                \stopBowSpan
                            }
                            \afterGrace
                            b'2
                            - \tweak Y-extent ##f
                            - \tweak Y-offset 0
                            - \tweak padding 2
                            \startBowSpan #'((0 . 0) (0.1149425287356322 . -1.5) (0.13793103448275865 . -0.5) (0.14942528735632188 . -1.5) (0.17241379310344832 . -0.5) (0.18390804597701155 . -1.5) (0.20689655172413798 . -0.7) (0.3793103448275863 . -4) (0.40229885057471276 . -1) (0.41379310344827597 . -2) (0.43678160919540243 . -0.5) (0.44827586206896564 . -2) (0.4712643678160921 . -1) (0.4827586206896553 . -1.5) (0.5057471264367818 . -0.5) (0.6206896551724139 . -3) (0.6436781609195403 . -1) (0.6551724137931035 . -2) (0.67816091954023 . -1) (0.6896551724137931 . -2) (0.7126436781609196 . -0.2) (0.8850574712643678 . -5) (1.0 . 0))
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                b'16
                                \stopBowSpan
                            }
                            b'4.
                            - \tweak Y-extent ##f
                            - \tweak Y-offset 0
                            - \tweak padding -4
                            \startBowSpan #'((0 . 0) (0.07552870090634443 . -5) (0.08308157099697888 . -1) (0.09063444108761333 . -0.1) (0.09818731117824778 . -1) (0.10574018126888222 . -0.1) (0.11329305135951667 . -1) (0.12084592145015112 . -0.1) (0.19637462235649555 . -1) (0.27190332326284 . -0.1) (0.27945619335347444 . -1) (0.28700906344410887 . -0.1) (0.2945619335347433 . -1) (0.30211480362537774 . -0.1) (0.33987915407854996 . -1) (0.4154078549848944 . -0.1) (0.42296072507552884 . -1) (0.4380664652567977 . -0.1) (0.44561933534743214 . -4) (0.44939577039274936 . -0.1) (0.4569486404833838 . -1) (0.46450151057401823 . -0.1) (0.48716012084592153 . -4) (0.49093655589123875 . -0.1) (0.513595166163142 . -4) (0.5173716012084593 . -0.1) (0.5400302114803626 . -4.5) (0.5438066465256798 . -1) (0.5891238670694865 . -3) (0.5936555891238672 . -2) (0.6540785498489428 . -4) (0.6601208459214503 . -3) (0.7356495468277947 . -5) (0.7432024169184291 . -1) (0.7507552870090636 . -1.5) (0.758308157099698 . -0.5) (0.7658610271903324 . -1) (0.7734138972809669 . -0.1) (1.0000000000000002 . -5))
                            ~
                            b'16
                            ~
                            \afterGrace
                            b'4.
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \once \override NoteHead.transparent = ##t
                                b'16
                                \stopBowSpan
                                \stopTextSpanOne
                                \stopTextSpanTwo
                                \revert Voice.Dots.staff-position
                            }
                        }
                        \context Voice = "finger percussion voice"
                        {
                            \voiceOne
                            e''''8
                            ^ #(make-dynamic-script
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
                            ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 \raise #4 { \hspace #-19 "finger percussion on String IV:" } 
                            [
                            ^ \<
                            e''''8.
                            e''''8
                            e''''8
                            ]
                            e''''8
                            ^ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "ff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \once \override Rest.staff-position = 18
                            r8
                            e''''8
                            \once \override Rest.staff-position = 18
                            r8
                            \once \override Rest.staff-position = 18
                            r8
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                            [
                            e''''8
                            e''''8
                            ]
                            \once \override Rest.staff-position = 18
                            r16
                            \once \override Rest.staff-position = 18
                            r8
                            [
                            e''''8
                            e''''8
                            ]
                            \revert Staff.NoteHead.no-ledgers
                            \staff-line-count 5
                            \revert Staff.StaffSymbol.line-positions
                            \revert Staff.Clef.stencil
                            \revert Staff.Clef.X-extent
                        }
                    >>
                    \oneVoice
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
                    c'2.
                    - \tweak Y-extent ##f
                    - \tweak Y-offset 6.5
                    - \tweak padding #0
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \somatic-position-four \hspace #0.5 }
                    \startTextSpan
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
                    c'2.
                    \stopTextSpan
                    - \tweak Y-extent ##f
                    - \tweak Y-offset 6.5
                    - \tweak padding #0
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \somatic-position-five \hspace #0.5 }
                    - \tweak bound-details.right.padding -9
                    \startTextSpan
                    \once \override Accidental.stencil = ##f
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override NoteHead.transparent = ##t
                    c'8
                    \stopTextSpan
                    \stopStaff \startStaff
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r2
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
                    \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 4
                    \override Staff.Clef.stencil = #ly:text-interface::print
                    \override Staff.Clef.text = \stringing-clef
                    \set Staff.forceClef = ##t
                    \clef "treble"
                    \afterGrace
                    <a' c''>4
                    - \downbow
                    _ #(make-dynamic-script
                        (markup
                            #:whiteout
                            #:line (
                                #:general-align Y -2 #:normal-text #:larger "“"
                                #:hspace -0.1
                                #:dynamic "ppp"
                                #:hspace -0.25
                                #:general-align Y -2 #:normal-text #:larger "”"
                                )
                            )
                        )
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak padding #8
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #-1 { \center-column { \line { XFB } \line { legno molto pont. } \line { crine dietro pont. }  } } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpan
                    - \tweak stencil #constante-hairpin
                    \<
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
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        <a' c''>16
                        \!
                        \stopTextSpan
                    }
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r4..
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
                        \set Staff.forceClef = ##t
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
                    \slapped
                    \override NoteHead.no-ledgers = ##t
                    d''8
                    :64
                    \fp
                    [
                    \glissando
                    g'8
                    :64
                    \fp
                    \glissando
                    d''8.
                    :64
                    \fp
                    \glissando
                    g'8
                    :64
                    \fp
                    ]
                    \revert-noteheads
                    \revert NoteHead.no-ledgers
                    <<
                        \context Voice = "harp voice temp"
                        {
                            \once \override Accidental.stencil = ##f
                            \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                            \override Staff.StaffSymbol.line-positions = #'(7  -7)
                            \override Staff.Clef.stencil = ##f
                            \slapped
                            \override NoteHead.no-ledgers = ##t
                            \clef "treble"
                            \voiceTwo
                            b'2
                            :32
                            \fp
                            \<
                            \revert Staff.NoteHead.no-ledgers
                            \staff-line-count 5
                            \revert Staff.StaffSymbol.line-positions
                            \revert Staff.Clef.stencil
                            \revert Staff.Clef.X-extent
                            \revert-noteheads
                            \revert NoteHead.no-ledgers
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/5
                            {
                                \clef "bass"
                                <bf,, bf,>8
                                - \tweak Y-offset -12
                                \ff
                                \laissezVibrer
                                [
                                \once \override Accidental.stencil = ##f
                                \override Staff.NoteHead.no-ledgers = ##t\staff-line-count 2
                                \override Staff.StaffSymbol.line-positions = #'(7  -7)
                                \override Staff.Clef.stencil = #ly:text-interface::print
                                \override Staff.Clef.X-extent = #'(9 . 9)
                                \override Staff.Clef.text = \markup \fontsize #-1 { \override #'(font-name . "Bodoni72 Book") \raise #4.1 \center-column { \line { "upper frame" } \line { \fontsize #27 \with-color #white "." } \line { "lower frame" } } }
                                \set Staff.forceClef = ##t
                                \slapped
                                \override NoteHead.no-ledgers = ##t
                                \clef "treble"
                                b'8
                                - \tweak Y-offset 3
                                - \tweak padding #0
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { pince } \hspace #0.5 }
                                - \tweak bound-details.right.padding -2
                                \startTextSpanOne
                                \once \override Accidental.stencil = ##f
                                b'16
                                ]
                            }
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/5
                            {
                                r8
                                [
                                \once \override Accidental.stencil = ##f
                                b'8
                                \once \override Accidental.stencil = ##f
                                b'16
                                \stopTextSpanOne
                                ]
                                \revert Staff.NoteHead.no-ledgers
                                \staff-line-count 5
                                \revert Staff.StaffSymbol.line-positions
                                \revert Staff.Clef.stencil
                                \revert Staff.Clef.X-extent
                                \revert-noteheads
                                \revert NoteHead.no-ledgers
                            }
                        }
                        \context Voice = "harp stone voice"
                        {
                            \once \override Rest.staff-position = 18
                            \voiceOne
                            r16
                            ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 \raise #7 { \hspace #-11 "strike and scrape Stones:" } 
                            \right-down-arrow
                            e''''8
                            ^ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "ff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            [
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \left-arrow
                            e''''8
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \right-up-arrow
                            e''''8
                            ]
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \once \override Rest.staff-position = 18
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/5
                            {
                                \once \override Rest.staff-position = 18
                                r8
                                - \tweak padding #15
                                ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                                [
                                \right-down-arrow
                                e''''8
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                                \left-arrow
                                e''''16
                                ]
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                            }
                            \once \override Rest.staff-position = 18
                            r16
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/5
                            {
                                \once \override Rest.staff-position = 18
                                r8
                                [
                                \right-up-arrow
                                e''''8
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                                \right-down-arrow
                                e''''16
                                ]
                                \revert NoteHead.stencil
                                \revert NoteHead.stem-attachment
                            }
                        }
                    >>
                    \oneVoice
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
                    c'2.
                    - \tweak Y-extent ##f
                    - \tweak Y-offset 5
                    - \tweak padding #0
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \somatic-position-one \hspace #0.5 }
                    \startTextSpan
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
                    c'2.
                    \stopTextSpan
                    - \tweak Y-extent ##f
                    - \tweak Y-offset 5
                    - \tweak padding #0
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \somatic-position-two \hspace #0.5 }
                    \startTextSpan
                    \once \override Accidental.stencil = ##f
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override NoteHead.transparent = ##t
                    c'8
                    \stopTextSpan
                    - \tweak Y-extent ##f
                    - \tweak Y-offset 5
                    - \tweak padding #0
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \somatic-position-three \hspace #0.5 }
                    - \tweak bound-details.right.padding -1.5
                    \startTextSpan
                    \stopStaff \startStaff
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
                    c'1
                    ~
                    \once \override Accidental.stencil = ##f
                    \once \override NoteHead.no-ledgers = ##t
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
                        c'16
                        \stopTextSpan
                    }
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
                                                    "trilling between notated pitches and random adjacent diads"
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
                        \clef "bass"
                        bf,4.
                        \f
                        (
                        \>
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        bf,8.
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        aqs,16
                        \mf
                        )
                        r4..
                        <bf,, a,>4.
                        \f
                        ~
                        <bf,, a,>16
                        ~
                        <bf,, a,>4.
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
                        c'2.
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 5
                        - \tweak padding #0
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \somatic-position-two \hspace #0.5 }
                        \startTextSpan
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
                        c'2.
                        \stopTextSpan
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 5
                        - \tweak padding #0
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \somatic-position-three \hspace #0.5 }
                        \startTextSpan
                        \once \override Accidental.stencil = ##f
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override NoteHead.transparent = ##t
                        c'8
                        \stopTextSpan
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 5
                        - \tweak padding #0
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \somatic-position-one \hspace #0.5 }
                        \startTextSpan
                        \stopStaff \startStaff
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
                        ~
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        c'8
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
                        \stopTextSpan
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 5
                        - \tweak padding #0
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \somatic-position-four \hspace #0.5 }
                        \startTextSpan
                        ~
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
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
                        c'8
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
                        s1 * 7/4
                        s1 * 9/8
                        s1 * 3/4
                        s1 * 5/8
                        s1 * 9/16
                        r4
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "strike and scrape Stones" } 
                        \staff-line-count 1
                          %! +SCORE
                        \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                        \clef "percussion"
                        \tweak style #'cross
                        c'4
                        :32
                        - \accent
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "fp"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        \<
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            r8.
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "ff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            [
                            \left-down-arrow
                            c'8
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \right-arrow
                            c'8
                            ]
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                        }
                        r16
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            r8.
                            [
                            \left-up-arrow
                            c'8
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                            \left-down-arrow
                            c'8
                            ]
                            \revert NoteHead.stencil
                            \revert NoteHead.stem-attachment
                        }
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
                            - \tweak padding #6.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { mallets on low strings } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1.5
                            \startTextSpan
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
                        \times 2/3
                        {
                            r8
                            [
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
                            \p
                            \<
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
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6
                        {
                            r8
                            [
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
                            ]
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
                        \f
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
                        \stopTextSpan
                        r8.
                        r4
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                        \staff-line-count 1
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        \clef "percussion"
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        f''8
                        \pppp
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { "lift" } 
                        - \tweak Beam.positions #'(0 . 0)
                        [
                        - \tweak padding #9
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { Chains } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        g,16
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ffff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-1 "drop" } 
                        ]
                        r8
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        f''8
                        \pppp
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #-1 { \hspace #-1 "( etc. )" } 
                        - \tweak Beam.positions #'(0 . 0)
                        [
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        \afterGrace
                        g,8
                        \mp
                        ]
                        {
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override Stem.direction = #DOWN
                            \once \override Flag.stroke-style = #"grace"
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            f''16
                            \pppp
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
                            \stopTextSpan
                            ]
                            \sustainOn
                        }
                        r4
                        s1 * 3/4
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                        \sustainOff
                        \stopStaff \startStaff
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r2
                        \staff-line-count 5
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \clef "treble"
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
                        <b fs' c'' e'' f''>4
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.1
                                    #:dynamic "p"
                                    #:hspace -0.25
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { Jewellery Wire, XFB } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
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
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            <b fs' c'' e'' f''>16
                            \!
                            \stopTextSpan
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4..
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
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \left-down-arrow
                        c'8
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \left-up-arrow
                        c'8
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \right-down-arrow
                        c'8
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \right-up-arrow
                        c'8
                        ]
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \once \override Dots.staff-position = #2
                        \tweak style #'cross
                        c'8.
                        [
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        \<
                        - \tweak padding #5.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpan
                        \once \override Dots.staff-position = #2
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        c'8.
                        \mf
                        \stopTextSpan
                        - \tweak circled-tip ##t
                        \>
                        - \tweak padding #5.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \tremolo-stretto \hspace #0.5 }
                        - \tweak bound-details.right.text \tremolo-largo
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpan
                        \once \override Dots.staff-position = #2
                        \afterGrace
                        c'8.
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
                            \stopTextSpan
                        }
                        r16
                        _ #(make-dynamic-script
                            (markup
                                #:whiteout
                                #:line (
                                    #:general-align Y -2 #:normal-text #:larger "“"
                                    #:hspace -0.4
                                    #:dynamic "ff"
                                    #:hspace -0.2
                                    #:general-align Y -2 #:normal-text #:larger "”"
                                    )
                                )
                            )
                        [
                        \right-arrow
                        c'8
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \left-down-arrow
                        c'8
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \left-up-arrow
                        c'8
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        r16
                        ]
                        r8
                        [
                        \right-down-arrow
                        c'8
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \right-up-arrow
                        c'8
                        ]
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        r16
                        r8
                        [
                        \right-arrow
                        c'8
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
                        \left-down-arrow
                        c'8
                        ]
                        \revert NoteHead.stencil
                        \revert NoteHead.stem-attachment
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
