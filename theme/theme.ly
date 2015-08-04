\version "2.18.2"

\header {
  title = "Theme"
  composer = "Ben Deane"
}

#(set-default-paper-size "letter")

upper = \relative c' {
  \clef treble
  \key d \minor
  \time 3/4

  r2 a'4 f2 g4 a2 f4 bes4. a8 g4 a2 f4 bes4. a8 g4
  a4. g8 f4 e2.( e2) a4 f e f cis d e f e f bes4. a8 g4
  f4 d e f cis e d2.( d2) r4

  \bar "|."
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
  >>
  \layout { }
  \midi { }
}
