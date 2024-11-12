    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/4
            s1 * 7/4
            ^ \markup \fontsize #4 { \override #'(font-name . "Bodoni72 Book Italic") \raise #12 \with-dimensions-from \null { "I've been waiting a long time for emergence" } }
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
                %%% \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Conductor }
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
                    \once \override Staff.BarLine.glyph-name = ".|:" 
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vla }
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
                    \once \override Staff.BarLine.glyph-name = ":|." 
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 7/4
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 7/4
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 7/4
                    \once \revert Staff.StaffSymbol.line-positions
                    s1 * 2
                }
            }
            \context Staff = "baritonesaxophone staff"
            {
                \context Voice = "baritonesaxophone voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Saxophone }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ sax }
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 2
                }
            }
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ vc }
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 2
                }
            }
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Harp }
                      %! +SCORE
                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ hp }
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 7/4
                    s1 * 2
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
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 2
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
                    %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic"){ pno }
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 7/4
                        s1 * 2
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
