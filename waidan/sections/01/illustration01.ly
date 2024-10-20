  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/waidan/waidan/build/waidan_stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
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
              %! +SCORE
            \pageBreak
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
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/8
            s1 * 3/8
              %! +SCORE
            \noBreak
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
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
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
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
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
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                    s1 * 3/8
                    ^ \markup \override #'(font-name . "Bodoni72 Book italic") \fontsize #2 { Baritone } 
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        \times 2/3
                        {
                            \slapped
                            \override Staff.NoteHead.no-ledgers = ##t
                            b,16
                            \f
                            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                            [
                            - \tweak padding #12
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { secco slap } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            c16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            a,16
                        }
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d16
                        \>
                        g16
                        f'8
                        b'16
                        \pp
                        \stopTextSpan
                        ]
                        \revert-noteheads
                        \revert Staff.NoteHead.no-ledgers
                    }
                    s1 * 3/8
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
                    c'4.
                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                    r4
                    \override Staff.Stem.stemlet-length = 0.75
                    c'16
                    [
                    \revert Staff.Stem.stemlet-length
                    \afterGrace
                    c'16
                    ]
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c'16
                    }
                      %! applying invisibility
                    \once \override Rest.transparent = ##t
                    r1 * 3/8
                    \override Staff.Stem.stemlet-length = 0.75
                    c'8.
                    [
                    \revert Staff.Stem.stemlet-length
                    \afterGrace
                    c'8.
                    ]
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c'16
                    }
                    r4
                    c'8
                    ~
                    c'8
                    \afterGrace
                    c'4
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c'16
                    }
                    s1 * 3/8
                    r8
                    c'4
                    \afterGrace
                    c'4
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c'16
                    }
                    r8
                      %! applying invisibility
                    \once \override Rest.transparent = ##t
                    r1 * 3/8
                    \override Staff.Stem.stemlet-length = 0.75
                    c'8.
                    [
                    \revert Staff.Stem.stemlet-length
                    \afterGrace
                    c'8.
                    ]
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c'16
                    }
                      %! applying invisibility
                    \once \override Rest.transparent = ##t
                    r1 * 3/8
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
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
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
                    \override Staff.Clef.stencil = ##f
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                      %! +SCORE
                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
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
                    \once \override TupletBracket.stencil = ##f
                    \once \override TupletNumber.stencil = ##f
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/11
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
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \markup \fontsize #-1 { \override #'(font-name . "Bodoni72 Book") \raise #4.1 \center-column { \line { "upper frame" } \line { \fontsize #27 \with-color #white "." } \line { "lower frame" } } }
                        \set Staff.forceClef = ##t
                        \slapped
                        \override Staff.NoteHead.no-ledgers = ##t
                        \clef "treble"
                        b'16
                        \ff
                        ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran ON }
                        - \tweak padding #9
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { newspaper strings } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        g'16
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        c''16
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        a'8
                        \>
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        b'8
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        f''8.
                        \once \override RepeatTie.transparent = ##t
                        \once \override Stem.stencil = ##f
                        \once \override Beam.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Tie.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        c'16
                        \pp
                        \stopTextSpan
                        \revert-noteheads
                        \revert Staff.NoteHead.no-ledgers
                    }
                    s1 * 3/8
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
                    c'4.
                    ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #0 \box \line { Gran OFF }
                    r4
                    \override Staff.Stem.stemlet-length = 0.75
                    c'16
                    [
                    \revert Staff.Stem.stemlet-length
                    \afterGrace
                    c'16
                    ]
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c'16
                    }
                      %! applying invisibility
                    \once \override Rest.transparent = ##t
                    r1 * 3/8
                    \override Staff.Stem.stemlet-length = 0.75
                    c'8.
                    [
                    \revert Staff.Stem.stemlet-length
                    \afterGrace
                    c'8.
                    ]
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c'16
                    }
                    r4
                    c'8
                    ~
                    c'8
                    \afterGrace
                    c'4
                    {
                        \once \override Flag.stroke-style = #"grace"
                        c'16
                    }
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
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ acc }
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
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ pno }
                        s1 * 3/8
                        r16
                        \f
                        - \tweak stencil #constante-hairpin
                        \<
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
                                        ~
                                        c'8.
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
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override Beam.grow-direction = #left
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            f'''32 * 11/8
                            - \stopped
                            [
                            - \tweak padding #10
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #-1 \box \line { mute w/ hand } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            e'''32 * 45/32
                            - \stopped
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            g'''32 * 3/2
                            - \stopped
                            r32 * 13/8
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            d'''32 * 59/32
                            - \stopped
                            \>
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            f'''32 * 17/8
                            - \stopped
                            r32 * 5/2
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            e'''32 * 93/32
                            - \stopped
                            r32 * 105/32
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            g'''32 * 55/16
                            - \stopped
                            \pp
                            \stopTextSpan
                            ]
                        }
                        \revert TupletNumber.text
                        s1 * 3/8
                        r4
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        [
                        \revert Staff.Stem.stemlet-length
                        \afterGrace
                        c'16
                        ]
                        {
                            \once \override Flag.stroke-style = #"grace"
                            c'16
                        }
                          %! applying invisibility
                        \once \override Rest.transparent = ##t
                        r1 * 3/8
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        \afterGrace
                        c'8.
                        ]
                        {
                            \once \override Flag.stroke-style = #"grace"
                            c'16
                        }
                        r4
                        c'8
                        ~
                        c'8
                        \afterGrace
                        c'4
                        {
                            \once \override Flag.stroke-style = #"grace"
                            c'16
                        }
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                        s1 * 3/8
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1 * 3/8
                        e'4.
                        - \accent
                        \laissezVibrer
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
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
