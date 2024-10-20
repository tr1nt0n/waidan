    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/8
            s1 * 3/8
            ^ \markup {
              \raise #10 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #1 #2 #" 50 " 
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
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
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                }
            }
            \context Staff = "viola staff"
            {
                \context Voice = "viola voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
                    \clef "alto"
                    s1 * 3/8
                    \override Dots.staff-position = #2
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    f'4.
                        _ #(make-dynamic-script (markup #:whiteout #:italic "fmp"))
                    ^ \markup \center-align { \center-column { "-11" } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #6
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { poco tast. } \hspace #0.5 }
                    \startTextSpanOne
                    - \tweak padding #8.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { senza vib. } \hspace #0.5 }
                    \startTextSpanTwo
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
                    f'4.
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
                    f'4.
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
                    f'4.
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
                    f'4.
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
                    f'4.
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
                    f'4.
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
                    f'4.
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
                    f'4.
                    \<
                    \override Dots.staff-position = #2
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.1 1 0)
                          (1 0 1.5 -0.1 2 0)
                     )
                     #0.5
                    \revert Dots.staff-position
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    f'8
                    ^ \markup \center-align { \center-column { "-11" } }
                    \stopTextSpanTwo
                    [
                    (
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.2 1 0)
                          (1 0 1.5 -0.2 2 0)
                     )
                     #0.5
                    \override Voice.NoteHead.X-extent = #'(0 . 0)
                    \override Voice.NoteHead.transparent = ##t
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.3 1 0)
                          (1 0 1.5 -0.3 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.4 1 0)
                          (1 0 1.5 -0.4 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.5 1 0)
                          (1 0 1.5 -0.5 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.6 1 0)
                          (1 0 1.5 -0.6 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.7 1 0)
                          (1 0 1.5 -0.7 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.8 1 0)
                          (1 0 1.5 -0.8 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.9 1 0)
                          (1 0 1.5 -0.9 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1 1 0)
                          (1 0 1.5 -1 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1.1 1 0)
                          (1 0 1.5 -1.1 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1.2 1 0)
                          (1 0 1.5 -1.2 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1.3 1 0)
                          (1 0 1.5 -1.3 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1.4 1 0)
                          (1 0 1.5 -1.4 2 0)
                     )
                     #0.5
                    f'8
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1.5 1 0)
                          (1 0 1.5 -1.5 2 0)
                     )
                     #0.5
                    \afterGrace
                    f'8
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        f'16
                        \mf
                        )
                        \stopTextSpanOne
                    }
                    \revert Voice.NoteHead.X-extent
                    \revert Voice.NoteHead.transparent
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \staff-line-count 1
                    \once \override Staff.Clef.transparent = ##t
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                    \clef "percussion"
                    r16
                    \override Dots.staff-position = #2
                    \override Staff.Stem.stemlet-length = 0.75
                    c'8
                    _ #(make-dynamic-script
                        (markup
                            #:whiteout
                            #:line (
                                #:general-align Y -2 #:normal-text #:larger "“"
                                #:hspace -0.1
                                #:dynamic "pp"
                                #:hspace -0.25
                                #:general-align Y -2 #:normal-text #:larger "”"
                                )
                            )
                        )
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak padding #3
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { sponge on body } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpan
                    \<
                    \override Voice.NoteHead.X-extent = #'(0 . 0)
                    \override Voice.NoteHead.transparent = ##t
                    \revert Staff.Stem.stemlet-length
                    \afterGrace
                    c'16
                    :128
                    _ #(make-dynamic-script
                        (markup
                            #:whiteout
                            #:line (
                                #:general-align Y -2 #:normal-text #:larger "“"
                                #:hspace -0.1
                                #:dynamic "mf"
                                #:hspace -0.2
                                #:general-align Y -2 #:normal-text #:larger "”"
                                )
                            )
                        )
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak stencil #constante-hairpin
                    \<
                    {
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        c'16
                        \stopTextSpan
                    }
                    \revert Voice.NoteHead.X-extent
                    \revert Voice.NoteHead.transparent
                    r8
                    \!
                    \override Dots.staff-position = #2
                    \staff-line-count 5
                    \once \override RepeatTie.transparent = ##t
                    \once \override Stem.stencil = ##f
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \clef "treble"
                    g'4.
                        _ #(make-dynamic-script (markup #:whiteout #:italic "fmp"))
                    ^ \markup \center-align { \center-column { "-33" } }
                      %! abjad.glissando(7)
                    - \abjad-zero-padding-glissando
                      %! abjad.glissando(7)
                    \glissando
                    - \tweak padding #10
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { senza vib. } \hspace #0.5 }
                    \startTextSpanTwo
                    - \tweak padding #7.5
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { poco tast. } \hspace #0.5 }
                    \startTextSpanOne
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
                    g'4.
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
                    g'4.
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
                    g'4.
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
                    g'4.
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
                    g'4.
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
                    g'4.
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
                    g'4.
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
                    g'4.
                    \override Dots.staff-position = #2
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.3 1 0)
                          (1 0 1.5 -0.3 2 0)
                     )
                     #0.5
                    \revert Dots.staff-position
                      %! abjad.glissando(6)
                    \revert Accidental.stencil
                      %! abjad.glissando(6)
                    \revert NoteColumn.glissando-skip
                      %! abjad.glissando(6)
                    \revert NoteHead.no-ledgers
                      %! abjad.glissando(6)
                    \undo \hide NoteHead
                    g'8.
                    ^ \markup \center-align { \center-column { "-33" } }
                    \stopTextSpanTwo
                    [
                    (
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.4 1 0)
                          (1 0 1.5 -0.4 2 0)
                     )
                     #0.5
                    \override Voice.NoteHead.X-extent = #'(0 . 0)
                    \override Voice.NoteHead.transparent = ##t
                    g'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.5 1 0)
                          (1 0 1.5 -0.5 2 0)
                     )
                     #0.5
                    g'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \<
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.7 1 0)
                          (1 0 1.5 -0.7 2 0)
                     )
                     #0.5
                    g'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 0.9 1 0)
                          (1 0 1.5 -0.9 2 0)
                     )
                     #0.5
                    g'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1.1 1 0)
                          (1 0 1.5 -1.1 2 0)
                     )
                     #0.5
                    g'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1.2 1 0)
                          (1 0 1.5 -1.2 2 0)
                     )
                     #0.5
                    g'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1.3 1 0)
                          (1 0 1.5 -1.3 2 0)
                     )
                     #0.5
                    g'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1.4 1 0)
                          (1 0 1.5 -1.4 2 0)
                     )
                     #0.5
                    g'8.
                    - \abjad-zero-padding-glissando
                    \glissando
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1.5 1 0)
                          (1 0 1.5 -1.5 2 0)
                     )
                     #0.5
                    \afterGrace
                    g'8.
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    {
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        g'16
                        \mf
                        )
                        \stopTextSpanOne
                    }
                    \revert Voice.NoteHead.X-extent
                    \revert Voice.NoteHead.transparent
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \override Dots.staff-position = #2
                    \staff-line-count 1
                    \once \override Staff.Clef.transparent = ##t
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
                    \clef "percussion"
                    \override Staff.Stem.stemlet-length = 0.75
                    c'8
                    _ #(make-dynamic-script
                        (markup
                            #:whiteout
                            #:line (
                                #:general-align Y -2 #:normal-text #:larger "“"
                                #:hspace -0.1
                                #:dynamic "pp"
                                #:hspace -0.25
                                #:general-align Y -2 #:normal-text #:larger "”"
                                )
                            )
                        )
                    [
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak padding #3
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { rub palms on soundboard } \hspace #0.5 }
                    - \tweak bound-details.right.padding -2
                    \startTextSpan
                    \<
                    \override Voice.NoteHead.X-extent = #'(0 . 0)
                    \override Voice.NoteHead.transparent = ##t
                    \revert Staff.Stem.stemlet-length
                    \afterGrace
                    c'8
                    _ #(make-dynamic-script
                        (markup
                            #:whiteout
                            #:line (
                                #:general-align Y -2 #:normal-text #:larger "“"
                                #:hspace -0.1
                                #:dynamic "mf"
                                #:hspace -0.2
                                #:general-align Y -2 #:normal-text #:larger "”"
                                )
                            )
                        )
                    ]
                    - \abjad-zero-padding-glissando
                    \glissando
                    - \tweak stencil #constante-hairpin
                    \<
                    {
                        \once \override Stem.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override Accidental.stencil = ##f
                        \revert Dots.staff-position
                        \once \override NoteHead.transparent = ##t
                        c'16
                        \!
                        \stopTextSpan
                    }
                    \revert Voice.NoteHead.X-extent
                    \revert Voice.NoteHead.transparent
                    r8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 3/8
                }
            }
            \context GrandStaff = "sub group 1"
            <<
                \context Staff = "accordion 1 staff"
                {
                    \context Voice = "accordion 1 voice"
                    {
                        \staff-line-count 1
                        \once \override Staff.Clef.transparent = ##t
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Accordion }
                          %! +SCORE
                    %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
                        \clef "percussion"
                        r8
                        \override Dots.staff-position = #2
                        \afterGrace
                        c'8
                        :64
                        \pp
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        - \tweak padding #3
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { air } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            c'16
                            \stopTextSpan
                        }
                        r8
                        \!
                        \override Dots.staff-position = #2
                        \staff-line-count 5
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \clef "treble"
                        e'4.
                        \fp
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
                        e'4.
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
                        e'4.
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
                        e'4.
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
                        e'4.
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
                        e'4.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Dots.staff-position = #2
                            \revert Dots.staff-position
                            \override Staff.Stem.stemlet-length = 0.75
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            e'8
                            [
                            (
                            - \abjad-zero-padding-glissando
                            \glissando
                            \<
                            \override Voice.NoteHead.X-extent = #'(0 . 0)
                            \override Voice.NoteHead.transparent = ##t
                            e'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \>
                            e'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \<
                            e'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \>
                            \revert Staff.Stem.stemlet-length
                            e'8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                            \<
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e'8
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \>
                            e'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \<
                            e'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \>
                            e'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \<
                            \revert Staff.Stem.stemlet-length
                            e'8
                            )
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                            \>
                            \revert Voice.NoteHead.X-extent
                            \revert Voice.NoteHead.transparent
                        }
                        \override Dots.staff-position = #2
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \revert Dots.staff-position
                        <e' fs' g'>4..
                        \!
                        _ \markup {
                                            \override #'(font-name . "Bodoni72 Book Italic")
                                            \column {
                                                \line {
                                                    "trilling between notated pitch and random adjacent diads"
                                                }
                                                \line {
                                                    "maintaining basic chord shape through glissando"
                                                }
                                            }
                                        }
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak details.squiggle-Y-scale 1.5
                        - \tweak details.squiggle-initial-width 19
                        - \tweak details.squiggle-speed-factor 0.9
                        - \tweak thickness 0.005
                        \slow-fast-trill
                        \once \override Accidental.stencil = ##f
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \override Voice.NoteHead.X-extent = #'(0 . 0)
                        \override Voice.NoteHead.transparent = ##t
                        \once \override NoteHead.transparent = ##t
                        d'4
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        \<
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
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        d'16
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
                        e'4
                        - \abjad-zero-padding-glissando
                        \glissando
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
                        c'8.
                        - \abjad-zero-padding-glissando
                        \glissando
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
                        d'16
                        - \abjad-zero-padding-glissando
                        \glissando
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
                        - \abjad-zero-padding-glissando
                        \glissando
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
                        e'8.
                        - \abjad-zero-padding-glissando
                        \glissando
                        {
                            \once \override Stem.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.stencil = ##f
                            \revert Dots.staff-position
                            \once \override NoteHead.transparent = ##t
                            b16
                            \mf
                            \stopTrillSpan
                        }
                        \revert Voice.NoteHead.X-extent
                        \revert Voice.NoteHead.transparent
                    }
                }
                \context Staff = "accordion 2 staff"
                {
                    \context Voice = "accordion 2 voice"
                    {
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
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
                        \clef "bass"
                        s1 * 3/8
                        r4
                        \tweak style #'cross
                        e8
                        \pp
                        [
                        (
                        - \tweak padding #7
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { mute w/ styrofoam } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        \tweak style #'cross
                        a8
                        )
                        r8
                        \tweak style #'cross
                        d8
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            r8
                            \clef "treble"
                            \tweak style #'cross
                            d'8
                            [
                            (
                            \tweak style #'cross
                            b8
                            \tweak style #'cross
                            d'8
                            )
                            r8
                        }
                        \tweak style #'cross
                        gs'8
                        ]
                        r8
                        \tweak style #'cross
                        d''8
                        [
                        (
                        \<
                        \tweak style #'cross
                        b'16
                        \tweak style #'cross
                        d''16
                        )
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        r16
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 3
                            \tweak style #'cross
                            d''32
                            \mf
                            (
                            r32
                            \once \override Staff.Accidental.stencil = ##f
                            \tweak style #'cross
                            gs''32
                            - \sharp-articulation
                            r32
                            \tweak style #'cross
                            d''32
                            \once \override Staff.Accidental.stencil = ##f
                            \tweak style #'cross
                            bf'32
                            - \flat-articulation
                            )
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            r32
                        }
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        b'16.
                        (
                        \>
                        \tweak style #'cross
                        d''16.
                        \tweak style #'cross
                        e''16.
                        \tweak style #'cross
                        a''16.
                        \ppp
                        )
                        \stopTextSpan
                        ]
                        r8.
                        \arpeggioArrowUp
                        <a' bf' d'' fs'' a''>8.
                        - \tenuto
                        \arpeggio
                        \ff
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <a' bf' d'' fs'' a''>16
                        [
                        \arpeggioArrowUp
                        <g' c'' e'' a''>16
                        - \tenuto
                        \arpeggio
                        ~
                        \revert Staff.Stem.stemlet-length
                        <g' c'' e'' a''>8.
                        ]
                        r16
                        \tweak style #'cross
                        e'''4
                        \p
                        (
                        - \tweak padding #9
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { mute w/ styrofoam } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        \tweak style #'cross
                        d'''8
                        \mf
                        ~
                        \tweak style #'cross
                        d'''8
                        \tweak style #'cross
                        b''4
                        \pp
                        )
                        r16
                        \tweak style #'cross
                        b'16
                        [
                        (
                        \tweak style #'cross
                        d''16
                        )
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            r32
                            \tweak style #'cross
                            gs'32
                            \p
                            [
                            (
                            \tweak style #'cross
                            e'32
                            )
                            ]
                            r32
                            \tweak style #'cross
                            b32
                            \mp
                            [
                            (
                        }
                        \tweak style #'cross
                        d'8
                        )
                        ]
                        \clef "bass"
                        \once \override Staff.Clef.X-extent = #'(3.5 . 3.5)
                        \tweak style #'cross
                        bf,8
                        \pp
                        [
                        (
                        \<
                        \tweak style #'cross
                        d8
                        \tweak style #'cross
                        e16
                        \tweak style #'cross
                        gs16
                        )
                        ]
                        r16
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \tweak style #'cross
                            d,32
                            \mf
                            [
                            (
                            \once \override Staff.Accidental.stencil = ##f
                            \tweak style #'cross
                            bf,,32
                            - \flat-articulation
                            \tweak style #'cross
                            d,32
                            )
                            ]
                            r32
                            \tweak style #'cross
                            d,32
                            [
                            (
                            \tweak style #'cross
                            e,32
                            )
                            \stopTextSpan
                            ]
                            r32
                        }
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \staff-line-count 1
                        \clef "percussion"
                        s1 * 3/8
                        r16
                        \tweak style #'cross
                        c'16
                        - \marcato
                        \ff
                        - \tweak padding #4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { lid slam } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanOne
                        \sustainOn
                        r4
                          %! applying invisibility
                        \once \override Rest.transparent = ##t
                        r1 * 3/8
                        \tweak style #'cross
                        c'8
                        - \marcato
                        \ff
                        r4
                        r4
                        \tweak style #'cross
                        c'8
                        - \marcato
                        \ff
                        r8
                        \tweak style #'cross
                        c'8
                        - \marcato
                        \ff
                        \stopTextSpanOne
                        r8
                        s1 * 3/8
                        s1 * 3/8
                        r8.
                        \sustainOff
                        \staff-line-count 5
                        \arpeggioArrowDown
                        \clef "bass"
                        <g, c e a>8.
                        - \tenuto
                        \arpeggio
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <g, c e a>16
                        [
                        \arpeggioArrowDown
                        <a, bf, d fs a>16
                        - \tenuto
                        \arpeggio
                        ~
                        <a, bf, d fs a>8.
                        \staff-line-count 1
                        \once \override Score.SustainPedalLineSpanner.staff-padding = #'10
                        \once \override Staff.Clef.transparent = ##t
                        \clef "percussion"
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c'16
                        - \marcato
                        ]
                        - \tweak padding #4
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { lid slam } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpanOne
                        \sustainOn
                        s1 * 3/8
                        \tweak style #'cross
                        c'8
                        - \marcato
                        \ff
                        r4
                          %! applying invisibility
                        \once \override Rest.transparent = ##t
                        r1 * 3/8
                          %! applying invisibility
                        \once \override Rest.transparent = ##t
                        r1 * 3/8
                        r4
                        r16.
                        \tweak style #'cross
                        c'32
                        - \marcato
                        \ff
                        \stopTextSpanOne
                        \sustainOff
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
