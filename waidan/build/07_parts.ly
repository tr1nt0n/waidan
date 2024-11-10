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
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)
            \time 1/4
            s1 * 1/4
            - \tweak padding #17.5
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { ALL SIT }
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
                    s1 * 5/4
                    s1 * 1/4
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
                    s1 * 2
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 3/4
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/9
                    {
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r1...
                        \staff-line-count 1
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \clef "percussion"
                        \tweak style #'cross
                        c'4.
                        \mp
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast Stones" } 
                    }
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \times 4/6
                    {
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r4
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'16
                    }
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \times 8/10
                    {
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                          %! +SCORE
                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                        \once \override NoteHead.transparent = ##t
                        b''2.
                        \f
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { ( trumpet embouchure ) } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        b''2
                        - \abjad-zero-padding-glissando
                        \glissando
                        \>
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        b''2
                        \mp
                        - \abjad-zero-padding-glissando
                        \glissando
                        \<
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        b''2
                        \f
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        b''8
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        \afterGrace
                        b''8
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            d''16
                            \!
                        }
                    }
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/20
                    {
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        b''8.
                        - \accent
                        \ff
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            f''16
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        g''8.
                        \mf
                        - \abjad-zero-padding-glissando
                        \glissando
                        \>
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            b'16
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        e''8.
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            e'16
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        g'8.
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            a16
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        c'8.
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            e16
                            \p
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r16
                    }
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/12
                    {
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        a4.
                        - \abjad-zero-padding-glissando
                        \glissando
                        \<
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        d4.
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        b2
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        e'''4
                        \mf
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            c'''16
                        }
                    }
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \times 4/5
                    {
                        \override Dots.staff-position = #2
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        g''16
                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffp"))
                        - \abjad-zero-padding-glissando
                        \glissando
                        \<
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override NoteHead.transparent = ##t
                        a''8.
                        - \abjad-zero-padding-glissando
                        \glissando
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.X-extent = #'(0 . 0)
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
                        c'16
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override NoteHead.X-extent = #'(0 . 0)
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            d'16
                            \mp
                            \stopTextSpan
                        }
                    }
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                    s1 * 2
                    s1 * 3/4
                    s1 * 5/4
                    s1 * 1/4
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
                    s1 * 5/4
                    s1 * 1/4
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
                        \times 4/5
                        {
                            \once \override Dots.transparent = ##t
                            \once \override Rest.transparent = ##t
                            \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                              %! +SCORE
                        %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                            r1..
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
                            - \tremolo-articulation
                            \p
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            - \tweak padding #4.5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { bellows } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
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
                            }
                            \once \override Dots.transparent = ##t
                            \once \override Rest.transparent = ##t
                            r2
                        }
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5
                        {
                            \once \override Dots.transparent = ##t
                            \once \override Rest.transparent = ##t
                            r2.
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
                            c'2
                            - \tremolo-articulation
                            \p
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
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
                                \mf
                            }
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r8
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
                        \pp
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #2
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                        - \tweak bound-details.right.text \tremolo-stretto
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpanTwo
                        - \tweak stencil #abjad-flared-hairpin
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
                            \mf
                            \stopTextSpanTwo
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r8
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
                        \pp
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #2
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \tremolo-largo \hspace #0.5 }
                        - \tweak bound-details.right.text \tremolo-stretto
                        - \tweak bound-details.right.padding 0.5
                        \startTextSpanTwo
                        - \tweak stencil #abjad-flared-hairpin
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
                            \mf
                            \stopTextSpanTwo
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r8
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
                        - \tremolo-articulation
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
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
                        \tweak style #'cross
                        c'16
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
                        }
                        \once \override Dots.transparent = ##t
                        \once \override Rest.transparent = ##t
                        r8.
                        s1 * 1/4
                    }
                }
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 2
                        s1 * 3/4
                        s1 * 5/4
                        s1 * 1/4
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
                        s1 * 5/4
                        s1 * 1/4
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 2
                        s1 * 3/4
                        s1 * 5/4
                        s1 * 1/4
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
