\version "2.18.2"

\header {
  title = "5/8 Study"
  composer = "Ben Deane"
}

#(set-default-paper-size "letter")

upper = \relative c' {
  \clef treble
  \key d \major
  \time 5/8

  fis8^3 e d fis e g4. fis8 r fis e d fis e g4. fis8 r

  \break

  \repeat volta 2 {
    a_\markup{
      \dynamic f \italic \small { - } \hspace #0.1 \dynamic p
    } r fis[ g a] g r e[ fis g] fis[ e] fis[ d e] g4 fis r8

    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark \markup {\fontsize #-3 "Fine"}
  }

  \break

  d'[^5 r b] g[ a] b4 a4. g8[ a] cis[ r a] d4. cis4

  \break

  e8^5 r cis[ d e] d r b[ cis d] cis[ b] cis[ a b] d4 cis r8

  \break

  fis^5[ r d^3] b^2[ cis] d4 cis4. g8[ a] cis[ r a] d4. cis4

  \break

  d8^5 cis d b cis b a b fis^1 a^2 g^1 fis^3 g^4 d e

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark \markup {\fontsize #-3 "D.C. al Fine"}

  \bar "|."
}

lower = \relative c {
  \clef bass
  \key d \major
  \time 5/8

  d4._4 d4 g8 fis cis d fis d4._4 d4_3 b8 cis e d4

  \repeat volta 2 {
    r8 <<d a'>> r <<d, a'>> r r <<e g>> r <<e g>> r d4 d4. e4 d r8
  }

  fis[_2 r g] e[ fis] g4 fis4. cis8[ d] e[ r fis] g4._1 a4_3

  r8 <<a e'>> r <<a,4 e'>> r8 <<b8 d>> r <<b4 d>> a a4. b4 a4._\finger "5 - 2"

  b8[ r fis] d[ e] fis4 a4. cis,8[ d] e[ r fis] g4. a4_2

  b8 a b g a g fis g d fis_3 e d e fis cis_5
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
