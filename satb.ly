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
  \key c \major
  \dynamicUp
  \autoBeamOff
  \set Score.rehearsalMarkFormatter = #format-mark-box-letters
}

sopranoNotes = \relative c'' {
  \global

}
sopranoLyrics = \lyricmode {
}

altoNotes = \relative c' {
  \global

}
altoLyrics = \lyricmode {
}

tenorNotes = \relative {
  \global
  \clef "G_8"

}
tenorLyrics = \lyricmode {
}

bassNotes = \relative c {
  \global
  \clef bass

}
bassLyrics = \lyricmode {
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = "Soprano"
      shortInstrumentName = "S"
    } <<
      \new Voice = "soprano" \sopranoNotes
      \new Lyrics \lyricsto "soprano" \sopranoLyrics
    >>

    \new Staff \with {
      instrumentName = "Alto"
      shortInstrumentName = "A"
    } <<
      \new Voice = "alto" \altoNotes
      \new Lyrics \lyricsto "alto" \altoLyrics
    >>

    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T"
    } <<
      \new Voice = "tenor" \tenorNotes
      \new Lyrics \lyricsto "tenor" \tenorLyrics
    >>

    \new Staff \with {
      instrumentName = "Bass"
      shortInstrumentName = "B"
    } <<
      \new Voice = "bass" \bassNotes
      \new Lyrics \lyricsto "bass" \bassLyrics
    >>
  >>

  \layout {}
  \midi {}
}
