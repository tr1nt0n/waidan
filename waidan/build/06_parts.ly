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
            #(ly:expect-warning "strange time signature found")
            \time 4/10
            s1 * 2/5
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
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/8
            s1 * 1/2
        }
        \context StaffGroup = "Staff Group"
        <<
            \context Staff = "violin staff"
            {
                \context Voice = "violin voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
                      %! +SCORE
                %%% \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
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
                    s1 * 1/2
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
                    s1 * 2/5
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
                    s1 * 1/2
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 1/2
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
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
                    s1 * 1/2
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
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
                    s1 * 1/2
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
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
                    s1 * 1/2
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
                        s1 * 1/2
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
                        s1 * 1/2
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
                        r4
                        \sustainOff
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
                            \stopTextSpan
                            ]
                        }
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 1/2
                        s1 * 3/4
                        \tweak edge-height #'(0.7 . 0)
                        \times 4/5
                        {
                            \staff-line-count 5
                            \once \override NoteHead.X-offset = 0
                            \once \override Staff.Accidental.stencil = ##f
                            \once \override Staff.Glissando.thickness = #8.25
                            \clef "bass"
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
                            - \tweak padding #7.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { mallets on low strings } \hspace #0.5 }
                            - \tweak bound-details.right.padding -1
                            \startTextSpan
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
                                \stopTextSpan
                            }
                        }
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                        s1 * 1/2
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
