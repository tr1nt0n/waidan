    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/4
            s1 * 7/4
            ^ \markup \fontsize #6 { \override #'(font-name . "Bodoni72 Book Italic") \raise #18 \with-dimensions-from \null { "I've been waiting a long time for emergence" } }
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/4
            s1 * 7/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/4
            s1 * 7/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/4
            s1 * 7/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 8/4
            s1 * 2
        }
        \context StaffGroup = "Staff Group"
        <<
            \context Staff = "violin staff"
            {
                \context Voice = "violin voice"
                {
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
                    - \tweak padding #8
                    ^ \markup \staffBox #128 #17 %% #width #height
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
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "Viola" } 
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
                    - \tweak padding #11
                    ^ \markup \staffBox #35 #22 %% #width #height
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak padding #6.5
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright { "135°" } \hspace #0.5 }
                    \startTextSpanTwo
                    - \tweak padding #9
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { 3/4 spazzolato } \hspace #0.5 }
                    - \tweak bound-details.right.padding -5.5
                    \startTextSpanOne
                    \times 4/5
                    {
                        a''4
                        - \accent
                        \mp
                        \stopTextSpanTwo
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #6.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "45°" } \hspace #0.5 }
                        \startTextSpanTwo
                        e''16
                        - \accent
                        - \bendAfter #'2
                        \mf
                        \stopTextSpanOne
                        \stopTextSpanTwo
                        - \tweak padding #6.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "135°" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -0.5
                        \startTextSpanTwo
                        \revert NoteHead.X-extent
                        \revert NoteHead.transparent
                        \revert NoteHead.no-ledgers
                    }
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
                    b'1.
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \hspace #2 { \raise #0.75 \with-dimensions-from \null { "when finished casting Stones, repeat and vary idea until other musicians finish" } } } 
                    \stopTextSpanTwo
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
                        b'16
                    }
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
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
                    - \tweak padding #8
                    ^ \markup \staffBox #128 #17 %% #width #height
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #9.5 \with-dimensions-from \null { "( after 9× viola )" } } 
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast Stones" } 
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
                    c'1..
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
                    c'2
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
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-9 { "Baritone" } } 
                    }
                    \repeat tremolo 4 {
                        \staff-line-count 5
                        \once \override NoteHead.X-extent = #'(-1.5 . 2)
                        \override NoteHead.no-ledgers = ##t
                        \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup \override #'(size . .7) { \woodwind-diagram #'baritone-saxophone #'((cc . (one two three four five)) (lh . ()) (rh . (low-c))) }\once \override NoteHead.X-offset = 0.5
                        \override Dots.stencil = ##f
                        \once \override Staff.Clef.X-extent = ##f
                        \once \override Staff.Clef.extra-offset = #'(-4 . 0)
                        \clef "treble"
                        d32
                        - \tweak padding #6
                        ^ \markup \staffBox #20.5 #16 %% #width #height
                        - \tweak circled-tip ##t
                        \<
                        \once \override NoteHead.X-extent = #'(-1.5 . -1.5)
                        \once \override NoteHead.text = \markup \override #'(size . .7) { \woodwind-diagram #'baritone-saxophone #'((cc . (one two three four five)) (lh . ()) (rh . ())) }
                        d32
                        - \tweak Y-extent ##f
                        - \tweak Y-offset 6.5
                        - \bendAfter #'0
                        - \tweak circled-tip ##t
                        \>
                        \revert Dots.stencil
                        \revert NoteHead.stencil
                        \revert NoteHead.no-ledgers
                    }
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
                    b'1
                    \!
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \hspace #2 { \raise #0.75 \with-dimensions-from \null { "when finished casting Stones, repeat and vary idea until other musicians finish" } } } 
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
                    b'4
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
                        b'16
                    }
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
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
                    - \tweak padding #8
                    ^ \markup \staffBox #128 #17 %% #width #height
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #9.5 \with-dimensions-from \null { "( after 9× saxophone )" } } 
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast Stones" } 
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
                    \afterGrace
                    c'2.
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
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-5 { "Cello" } } 
                    }
                    \staff-line-count 5
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Staff.Clef.X-extent = ##f
                    \once \override Staff.Clef.extra-offset = #'(-4.5 . 0)
                    \clef "treble"
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        e'!
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        g'!
                    >8
                    - \tweak padding #7
                    ^ \markup \staffBox #37.5 #15 %% #width #height
                    ^ \markup \center-align { \center-column { \line { \concat { -33 }  }\line { \concat { +0 }  } } }
                    (
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak circled-tip ##t
                    - \tweak stencil #abjad-flared-hairpin
                    \<
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.25 1 0)
                          (1 0 1.5 -0.25 2 0)
                          (2 0 2.5 0.5 3 0)
                          (3 0 3.5 -0.5 4 0)
                          (4 0 4.5 1 5 0)
                          (5 0 5.5 -1 6 0)
                          (6 0 6.5 2 7 0)
                          (7 0 7.5 -2 8 0)
                          (8 0 8.5 2.5 9 0)
                          (9 0 9.5 -2.5 10 0)
                          (10 0 10.5 3 11 0)
                          (11 0 11.5 -3 12 0)
                          (12 0 12.5 2.5 13 0)
                          (13 0 13.5 -2.5 14 0)
                          (14 0 14.5 2 15 0)
                          (15 0 15.5 -2 16 0)
                          (16 0 16.5 1 17 0)
                          (17 0 17.5 -1 18 0)
                          (18 0 18.5 0.5 19 0)
                          (19 0 19.5 -0.5 20 0)
                          (20 0 20.5 0.25 21 0)
                          (21 0 21.5 -0.25 22 0)
                     )
                     #0.5
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    <e' g'>4
                    - \abjad-zero-padding-glissando
                    \glissando
                    \once \override Dots.staff-position = #2
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \afterGrace
                    <e' g'>8
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
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
                        <e' g'>16
                        \!
                        )
                    }
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
                    <b'>2.
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \hspace #1.5 { \raise #0.75 \with-dimensions-from \null { "when finished casting Stones, repeat and vary idea until other musicians finish" } } } 
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
                        <b'>16
                    }
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
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
                    - \tweak padding #8
                    ^ \markup \staffBox #115 #17 %% #width #height
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #9.5 \with-dimensions-from \null { "( after 9× cello + accordion )" } } 
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast Stones" } 
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
                        - \tweak padding #8
                        ^ \markup \staffBox #128 #17 %% #width #height
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #9.5 \with-dimensions-from \null { "( after 9× saxophone )" } } 
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast Stones" } 
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
                        \afterGrace
                        c'2.
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
                            ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { \hspace #-7 { "Accordion" } } 
                        }
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
                                        c'2
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
                            \once \override Beam.grow-direction = #right
                            \once \override Staff.Clef.X-extent = ##f
                            \once \override Staff.Clef.extra-offset = #'(-4.5 . 0)
                            \once \override Beam.grow-direction = #right
                            \tweak style #'cross
                            c'32 * 63/16
                            - \tweak padding #5.5
                            ^ \markup \staffBox #81.5 #15 %% #width #height
                            ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #7 \with-dimensions-from \null { "when finished casting Stones, repeat and vary idea until other musicians finish" } } 
                              %! rmakers.beam()
                            [
                            - \tweak circled-tip ##t
                            \<
                            - \tweak padding #4
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { bellows } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            \tweak style #'cross
                            c'32 * 115/32
                            \tweak style #'cross
                            c'32 * 91/32
                            \tweak style #'cross
                            c'32 * 35/16
                            \tweak style #'cross
                            c'32 * 29/16
                            \tweak style #'cross
                            c'32 * 13/8
                              %! rmakers.beam()
                            ]
                        }
                        \revert TupletNumber.text
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \tweak style #'cross
                        c'8
                        - \tremolo-articulation
                        - \tweak stencil #constante-hairpin
                        \<
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
                                        c'2
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
                            \once \override Beam.grow-direction = #left
                            \once \override Beam.grow-direction = #left
                            \tweak style #'cross
                            c'32 * 3/2
                              %! rmakers.beam()
                            [
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            \tweak style #'cross
                            c'32 * 25/16
                            \tweak style #'cross
                            c'32 * 7/4
                            \tweak style #'cross
                            c'32 * 65/32
                            \tweak style #'cross
                            c'32 * 79/32
                            \tweak style #'cross
                            c'32 * 49/16
                            \tweak style #'cross
                            c'32 * 29/8
                            \!
                            \stopTextSpan
                              %! rmakers.beam()
                            ]
                        }
                        \revert TupletNumber.text
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
                        c'8
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
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
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
                        - \tweak padding #8
                        ^ \markup \staffBox #115 #17 %% #width #height
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #0 { \raise #9.5 \with-dimensions-from \null { "( after 9× cello + accordion )" } } 
                        ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { "cast Stones" } 
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
