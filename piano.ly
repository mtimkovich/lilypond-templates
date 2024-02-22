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

global = {
  \numericTimeSignature
  \key c \major
}

upper = \relative {
  \global

}

lower = \relative {
  \global
  \clef bass

}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>

  \layout {}
  \midi {}
}
