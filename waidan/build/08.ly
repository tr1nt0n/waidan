    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \bar ".|:"
            \once \override Score.TimeSignature.stencil = ##f
            \override Score.BarLine.X-extent = #'(2 . 2)
            \time 7/4
            s1 * 7/4
            ^ \markup \fontsize #4 { \override #'(font-name . "Bodoni72 Book Italic") \raise #12 \with-dimensions-from \null { "I've been waiting a long time for emergence" } }
            \bar ":..:"
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/4
            s1 * 7/4
            \bar ":..:"
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/4
            s1 * 7/4
            \bar ":..:"
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/4
            s1 * 7/4
            \bar ":|."
            \once \override Score.TimeSignature.stencil = ##f
            \time 8/4
            s1 * 2
            \override Score.BarLine.X-extent = #'(-0.5 . -0.5)
        }
        \context StaffGroup = "Staff Group"
        <<
            \context Staff = "violin staff"
            {
                \context Voice = "violin voice"
                {
                    \once \override Voice.BarLine.glyph-name = "|" 
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
                      %! +SCORE
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 2
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
                {
                    \staff-line-count 1
                    \tweak text "×37" \startMeasureSpanner
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
                    \clef "percussion"
                    \tweak style #'cross
                    c'4
                    - \accent
                    \mf
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast" } 
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Grave" } } 
                    \tweak style #'cross
                    c'4
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + shake" } } 
                    \tweak style #'cross
                    c'4
                    - \accent
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast" } 
                    \tweak style #'cross
                    c'1
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + crunch" } } 
                    \stopMeasureSpanner
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
                    c'1..
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                    \once \override Accidental.stencil = ##f
                    \once \override Dots.staff-position = #2
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
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    c'1..
                    ~
                    \once \override Accidental.stencil = ##f
                    \once \override Dots.staff-position = #2
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
                    c'1..
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
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
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 2
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
                    \once \override Voice.BarLine.glyph-name = "|" 
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                    s1 * 7/4
                    \staff-line-count 1
                    \tweak text "×37" \startMeasureSpanner
                    \clef "percussion"
                    \tweak style #'cross
                    c'4
                    - \accent
                    \mf
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #11 \with-dimensions-from \null { "( after 9× viola )" } } 
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-3.5 { "cast Stones" } } 
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Lento" } } 
                    \tweak style #'cross
                    c'4
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + shake" } } 
                    \tweak style #'cross
                    c'4
                    - \accent
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast" } 
                    \tweak style #'cross
                    c'1
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + crunch" } } 
                    \stopMeasureSpanner
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
                    c'1..
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                    \once \override Accidental.stencil = ##f
                    \once \override Dots.staff-position = #2
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
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    \afterGrace
                    c'1..
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
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
                    s1 * 2
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \once \override Voice.BarLine.glyph-name = "|" 
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                    s1 * 7/4
                    s1 * 7/4
                    \staff-line-count 1
                    \tweak text "×37" \startMeasureSpanner
                    \clef "percussion"
                    \tweak style #'cross
                    c'4
                    - \accent
                    \mf
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #11 \with-dimensions-from \null { "( after 9× saxophone )" } } 
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-3.5 { "cast Stones" } } 
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Largo" } } 
                    \tweak style #'cross
                    c'4
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + shake" } } 
                    \tweak style #'cross
                    c'4
                    - \accent
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast" } 
                    \tweak style #'cross
                    c'1
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + crunch" } } 
                    \stopMeasureSpanner
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
                    c'1..
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    ~
                    \once \override Accidental.stencil = ##f
                    \once \override Dots.staff-position = #2
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
                      %! abjad.glissando(1)
                    \hide NoteHead
                      %! abjad.glissando(1)
                    \override Accidental.stencil = ##f
                      %! abjad.glissando(1)
                    \override NoteColumn.glissando-skip = ##t
                      %! abjad.glissando(1)
                    \override NoteHead.no-ledgers = ##t
                    \afterGrace
                    c'\breve
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
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
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \once \override Voice.BarLine.glyph-name = "|" 
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 7/4
                    \staff-line-count 1
                    \tweak text "×37" \startMeasureSpanner
                    \clef "percussion"
                    \tweak style #'cross
                    c'4
                    - \accent
                    \mf
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #11 \with-dimensions-from \null { "( after 9× cello + accordion )" } } 
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-3.5 { "cast Stones" } } 
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Adagio" } } 
                    \tweak style #'cross
                    c'4
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + shake" } } 
                    \tweak style #'cross
                    c'4
                    - \accent
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast" } 
                    \tweak style #'cross
                    c'1
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + crunch" } } 
                    \stopMeasureSpanner
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
                    \afterGrace
                    c'\breve
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    {
                        \once \override Accidental.stencil = ##f
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
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
                }
            }
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "accordion 1 staff"
                {
                    \context Voice = "accordion 1 voice"
                    {
                        \once \override Voice.BarLine.glyph-name = "|" 
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                          %! +SCORE
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                        s1 * 7/4
                        s1 * 7/4
                        \staff-line-count 1
                        \tweak text "×37" \startMeasureSpanner
                        \clef "percussion"
                        \tweak style #'cross
                        c'4
                        - \accent
                        \mf
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #11 \with-dimensions-from \null { "( after 9× saxophone )" } } 
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-3.5 { "cast Stones" } } 
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Largo" } } 
                        \tweak style #'cross
                        c'4
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + shake" } } 
                        \tweak style #'cross
                        c'4
                        - \accent
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast" } 
                        \tweak style #'cross
                        c'1
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + crunch" } } 
                        \stopMeasureSpanner
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
                        c'1..
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
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
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        c'\breve
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
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
                    }
                }
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        \once \override Voice.BarLine.glyph-name = "|" 
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 2
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \once \override Voice.BarLine.glyph-name = "|" 
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Piano }
                          %! +SCORE
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ pno }
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 7/4
                        \staff-line-count 1
                        \tweak text "×37" \startMeasureSpanner
                        \clef "percussion"
                        \tweak style #'cross
                        c'4
                        - \accent
                        \mf
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #11 \with-dimensions-from \null { "( after 9× cello + accordion )" } } 
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-3.5 { "cast Stones" } } 
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #3 { \raise #6 \with-dimensions-from \null { "Adagio" } } 
                        \tweak style #'cross
                        c'4
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + shake" } } 
                        \tweak style #'cross
                        c'4
                        - \accent
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast" } 
                        \tweak style #'cross
                        c'1
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-6.5 { "gather + crunch" } } 
                        \stopMeasureSpanner
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
                        \afterGrace
                        c'\breve
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
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
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \once \override Voice.BarLine.glyph-name = "|" 
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 2
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
