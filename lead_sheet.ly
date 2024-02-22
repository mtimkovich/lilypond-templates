\version "2.24.0"
\language "english"

\paper {
  paper-width = 8.5\in
  paper-height = 11\in
}

\header {
  title = ""
  composer = ""
  tagline = #f
}

\score {
  <<
    \chords {
    }

    \new Staff \with {
      instrumentName = "Alto Sax"
    } \relative c' {
      \numericTimeSignature
      \key c \major

    }
  >>

  \layout {}
  \midi {}
}
