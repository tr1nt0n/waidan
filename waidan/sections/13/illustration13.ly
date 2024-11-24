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
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            - \tweak padding #12
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Tape IV ON }
            ^ \markup \fontsize #6 { \override #'(font-name . "Bodoni72 Book Italic") \raise #17.5 \with-dimensions-from \null { " \"it's never just a shape alone\" " } }
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
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
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
                    s1 * 3/4
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 5/8
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 5/8
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
                    s1 * 1/2
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 1/2
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 1/2
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 1
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \once \revert Staff.StaffSymbol.line-positions
                    \once \override Staff.BarLine.bar-extent = #'(-3.5 . 3.5)
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
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
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
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
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
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
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Rest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    s1 * 1/8
                    \stopStaff \startStaff
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
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                        \stopStaff \startStaff
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
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                        \stopStaff \startStaff
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
                                \voiceTwo
                                r4
                                r16
                                \staff-line-count 5
                                \once \override Staff.Accidental.stencil = ##f
                                \clef "treble"
                                d'''64
                                _ \natural-articulation
                                [
                                \once \override Staff.Accidental.stencil = ##f
                                e'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                a'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                ef'''64
                                _ \flat-articulation
                                r64
                                \once \override Staff.Accidental.stencil = ##f
                                bf'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d'''64
                                _ \natural-articulation
                                ]
                                r64
                                r16
                                r4..
                                \once \override Staff.Accidental.stencil = ##f
                                b'''64
                                _ \natural-articulation
                                [
                                r32.
                                \once \override Staff.Accidental.stencil = ##f
                                c''''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                cs'''64
                                _ \sharp-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                af'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                g'''64
                                _ \natural-articulation
                                ]
                                r8
                                \once \override Staff.Accidental.stencil = ##f
                                cs'''64
                                _ \sharp-articulation
                                [
                                \once \override Staff.Accidental.stencil = ##f
                                ef'''64
                                _ \flat-articulation
                                r32
                                \once \override Staff.Accidental.stencil = ##f
                                a'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                af'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                g'''64
                                _ \natural-articulation
                                ]
                                r64
                                r8.
                                r8
                                \once \override Staff.Accidental.stencil = ##f
                                af'''64
                                _ \flat-articulation
                                [
                                \once \override Staff.Accidental.stencil = ##f
                                cs'''64
                                _ \sharp-articulation
                                r64
                                \once \override Staff.Accidental.stencil = ##f
                                ef'''64
                                _ \flat-articulation
                                r64
                                \once \override Staff.Accidental.stencil = ##f
                                bf'''64
                                _ \flat-articulation
                                ]
                                r32
                                r4
                                \once \override Staff.Accidental.stencil = ##f
                                a'''64
                                _ \natural-articulation
                                [
                                \once \override Staff.Accidental.stencil = ##f
                                f'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                af'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                c'''64
                                _ \natural-articulation
                                ]
                                r32.
                                r8.
                                \once \override Staff.Accidental.stencil = ##f
                                f'''64
                                _ \natural-articulation
                                [
                                \once \override Staff.Accidental.stencil = ##f
                                bf'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                ef'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                c''''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                cs'''64
                                _ \sharp-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                bf'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                g'''64
                                _ \natural-articulation
                                ]
                                r64
                                r16
                                  %! applying invisibility
                                \once \override Rest.transparent = ##t
                                r1 * 1/2
                                r8
                                \once \override Staff.Accidental.stencil = ##f
                                bf'''64
                                _ \flat-articulation
                                [
                                r64
                                \once \override Staff.Accidental.stencil = ##f
                                a'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                ef'''64
                                _ \flat-articulation
                                r64
                                \once \override Staff.Accidental.stencil = ##f
                                cs'''64
                                _ \sharp-articulation
                                ]
                                r32
                                r16
                                \once \override Staff.Accidental.stencil = ##f
                                f'''64
                                _ \natural-articulation
                                [
                                \once \override Staff.Accidental.stencil = ##f
                                bf'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d'''64
                                _ \natural-articulation
                                r64
                                \once \override Staff.Accidental.stencil = ##f
                                ef'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                c'''64
                                _ \natural-articulation
                                r64
                                \once \override Staff.Accidental.stencil = ##f
                                d'''64
                                _ \natural-articulation
                                ]
                                r16
                                \once \override Staff.Accidental.stencil = ##f
                                bf'''64
                                _ \flat-articulation
                                [
                                \once \override Staff.Accidental.stencil = ##f
                                b'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                f'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                g'''64
                                _ \natural-articulation
                                ]
                                r16
                                \once \override Staff.Accidental.stencil = ##f
                                ef'''64
                                _ \flat-articulation
                                [
                                r16
                                \once \override Staff.Accidental.stencil = ##f
                                f'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                fs'''64
                                _ \sharp-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d'''64
                                _ \natural-articulation
                                ]
                                r16
                                \once \override Staff.Accidental.stencil = ##f
                                c''''64
                                _ \natural-articulation
                                [
                                r32.
                                \once \override Staff.Accidental.stencil = ##f
                                f'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                ef'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                bf'''64
                                _ \flat-articulation
                                ]
                                \once \override Staff.Accidental.stencil = ##f
                                d'''64
                                _ \natural-articulation
                                [
                                \once \override Staff.Accidental.stencil = ##f
                                ef'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                f'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                d'''64
                                _ \natural-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                af'''64
                                _ \flat-articulation
                                \once \override Staff.Accidental.stencil = ##f
                                b'''64
                                _ \natural-articulation
                                ]
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r32
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r2...
                            }
                            \context Voice = "piano polyrhythm voice"
                            {
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                \voiceOne
                                r4
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r16
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    \ottava 2
                                    d'''32
                                    ^ \natural-articulation
                                    [
                                    r32
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''32
                                    ^ \natural-articulation
                                    ]
                                    r32
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r2
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    b'''32
                                    ^ \natural-articulation
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    b''32
                                    ^ \natural-articulation
                                    ]
                                    r16
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r8
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''32
                                    ^ \sharp-articulation
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    fs'''32
                                    ^ \sharp-articulation
                                    r16
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''32
                                    ^ \sharp-articulation
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r4
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r16
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'''32
                                    ^ \flat-articulation
                                    [
                                    r16
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''32
                                    ^ \natural-articulation
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r4
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    a'''32
                                    ^ \natural-articulation
                                    [
                                    r16
                                    \once \override Staff.Accidental.stencil = ##f
                                    b'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''32
                                    ^ \flat-articulation
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r8.
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''32
                                    ^ \natural-articulation
                                    [
                                    r16.
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''32
                                    ^ \sharp-articulation
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r2
                                  %! applying indicators
                                \once \override Dots.transparent = ##t
                                  %! applying invisibility
                                \once \override Rest.transparent = ##t
                                  %! applying indicators
                                \once \override Rest.transparent = ##t
                                r1 * 3/16
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''32
                                    ^ \flat-articulation
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'''32
                                    ^ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    e'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''32
                                    ^ \natural-articulation
                                    ]
                                    r32
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r16
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''32
                                    ^ \natural-articulation
                                    [
                                    r32
                                    \once \override Staff.Accidental.stencil = ##f
                                    a'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    af'''32
                                    ^ \flat-articulation
                                    ]
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r16
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''32
                                    ^ \flat-articulation
                                    [
                                    r32
                                    \once \override Staff.Accidental.stencil = ##f
                                    f'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    b''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''''32
                                    ^ \natural-articulation
                                    ]
                                }
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'''32
                                    ^ \flat-articulation
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    g'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''32
                                    ^ \sharp-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf'''32
                                    ^ \flat-articulation
                                    ]
                                    r32
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r16
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''''32
                                    ^ \natural-articulation
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    a'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    ef'''32
                                    ^ \flat-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''32
                                    ^ \sharp-articulation
                                    ]
                                    r32
                                }
                                \times 4/5
                                {
                                    \once \override Staff.Accidental.stencil = ##f
                                    d'''32
                                    ^ \natural-articulation
                                    [
                                    r16
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'''32
                                    ^ \natural-articulation
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'''32
                                    ^ \sharp-articulation
                                    ]
                                    \ottava 0
                                }
                                \once \override Dots.transparent = ##t
                                \once \override Rest.transparent = ##t
                                r2...
                            }
                        >>
                        \oneVoice
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                        \stopStaff \startStaff
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
                        [
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
                        [
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
                        \once \override MultiMeasureRest.transparent = ##t
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        s1 * 1/8
                        \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
