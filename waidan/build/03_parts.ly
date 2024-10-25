    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 8/4
            s1 * 2
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 3/4
            s1 * 3/4
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
                    s1 * 2
                    s1 * 3/4
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
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
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
                    \clef "treble"
                    \afterGrace
                    b'1..
                    - \tweak Y-extent ##f
                    - \tweak Y-offset 0
                    - \tweak padding 2
                    \startBowSpan #'((0 . 0) (0.16666666666666666 . -5) (1.0 . -5))
                    - \tweak font-size -4- \tweak Y-offset -1
                    - \tweak padding #0
                    - \abjad-dashed-line-with-up-hook
                    - \tweak bound-details.left.text \markup \concat { \gridato-twist-bow \hspace #0.5 }
                    - \tweak bound-details.right.padding -0.5
                    \startTextSpanOne
                    - \tweak padding #5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { back of body } \hspace #0.5 }
                    - \tweak bound-details.right.padding -0.5
                    \startTextSpanTwo
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
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        \revert Staff.NoteHead.no-ledgers
                        \staff-line-count 5
                        \revert Staff.StaffSymbol.line-positions
                        \revert Staff.Clef.stencil
                        \revert Staff.Clef.X-extent
                    }
                    \staff-line-count 4
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \override Staff.Clef.stencil = #ly:text-interface::print
                    \override Staff.Clef.text = \markup \fontsize #-8 \raise #2.5 { \center-column { \line { I } \line { II } \line { III } \line { IV } } }
                    \set Staff.forceClef = ##t
                    \clef "treble"
                    \afterGrace
                    <a' c''>2
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak circled-tip ##t
                    \<
                    - \tweak padding #6
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #-1 { \center-column { \line { XFB } \line { legno molto pont. } \line { crine dietro pont. }  } } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpanOne
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
                        <a' c''>16
                        \mf
                        \stopTextSpanOne
                    }
                    \revert Staff.Clef.stencil
                    \set Staff.forceClef = ##f
                    \once \override Dots.transparent = ##t
                    \once \override Rest.transparent = ##t
                    r2
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                          %! +SCORE
                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                        \slapped
                        \override NoteHead.no-ledgers = ##t
                        e'''8
                        [
                        - \tweak padding #13.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { secco slap } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        b''8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 8/7
                        {
                            g''32
                            f''32
                            d''32
                            b'32
                            e'32
                            d'32
                            b32
                        }
                        \times 2/3
                        {
                            f8
                            a8
                            e8
                        }
                        g'8
                        d''8
                        \times 4/5
                        {
                            f16
                            a,16
                            b,16
                            e16
                            c16
                        }
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        e32
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        c32
                        f32
                        a,32
                        b,32
                        e32
                        c32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        e32
                        \times 8/11
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 3
                            a,32
                            e32
                            d32
                            a32
                            g32
                            d'32
                            c'32
                            b'32
                            f'32
                            e'32
                            b'32
                            \stopTextSpan
                            ]
                            \revert-noteheads
                            \revert NoteHead.no-ledgers
                        }
                    }
                    c'2
                    s1 * 3/4
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
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                    \clef "treble"
                    \afterGrace
                    b'\breve
                    - \tweak padding #3
                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                    - \tweak Y-extent ##f
                    - \tweak Y-offset 0
                    - \tweak padding 2
                    \startBowSpan #'((0 . 0) (0.16666666666666666 . -5) (1.0 . -5))
                    - \tweak font-size -4- \tweak Y-offset -1
                    - \tweak padding #0
                    - \abjad-dashed-line-with-up-hook
                    - \tweak bound-details.left.text \markup \concat { \gridato-twist-bow \hspace #0.5 }
                    - \tweak bound-details.right.padding -0.5
                    \startTextSpanOne
                    - \tweak padding #5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { back of body } \hspace #0.5 }
                    - \tweak bound-details.right.padding -0.5
                    \startTextSpanTwo
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
                        - \tweak padding #2
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                        \stopBowSpan
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        \revert Staff.NoteHead.no-ledgers
                        \staff-line-count 5
                        \revert Staff.StaffSymbol.line-positions
                        \revert Staff.Clef.stencil
                        \revert Staff.Clef.X-extent
                    }
                    s1 * 3/4
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
                    s1 * 2
                    s1 * 3/4
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
                        s1 * 2
                        s1 * 3/4
                    }
                }
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 2
                        s1 * 3/4
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
                        s1 * 2
                        s1 * 3/4
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 2
                        s1 * 3/4
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
