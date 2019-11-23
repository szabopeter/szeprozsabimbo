\version "2.18.2"

\header {
  title = "Szép rózsabimbó nyílt ki"
  subtitle = "Es ist ein Ros entsprungen"
  subsubtitle = \markup \center-column {
    ",,Mert mint a föld megtermi csemetéjét, és mint a kert kisarjasztja veteményét,"
    "akként sarjasztja ki az Úr Isten az igazságot, s a dicsőséget minden nép előtt.''"
    "(Ésa 61,11)"
  }
  composer = "Michael PRAETORIUS (1571 - 1621)"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \time 4/4
  \partial 2
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  c2 
  c4 c d c
  c2 a2
  bes2 a4 g
  (g) f2 e4
  f2 \break
  
  c'2 
  c4 c d c
  c2 a2
  bes2 a4 g
  (g) f2 e4
  f2 \break

  r4 a4 
  g e f d 
  c2 r4 c'
  c c d c
  c2 a
  bes a4 g
  (g) f2 e4
  f1
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  Szép rózsa
  
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.
  
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.
  
}

bassVoice = \relative c {
  \global
  \dynamicUp
  f2
  f4 f bes f
  c2 d2
  bes2 f'4 e4
  d2 c2
  f, \break
  
  f'2
  f4 f bes f
  c2 d2
  bes2 f'4 e4
  d2 c2
  f, \break  
  
  r4 f'4 g a 
  f g c,2
  r4 c4 e f 
  bes, f' c2 \break
  
  d2 g,2
  a4 bes c2
  c2 f,1 \bar "|."  
}

verseOneBass = \lyricmode {
  "1. Szép" ró -- zsa bim -- bó nyílt ki
  Haj -- dan egy zsen -- ge tőn
  Mint ő -- si é -- nek zen -- gi
  Bim -- bó -- ból ró -- zsa lőn
  Még zor -- don bús tél volt
  A szép vi -- rág ki -- nyí -- lott
  Épp, mi -- kor éj -- fél volt.
}

verseTwoBass = \lyricmode {
  "2. El" -- jött az ál -- dott ó -- ra,
  Szí -- vünk -- re bé -- ke szállt,
  Tes -- tünk már nyu -- go -- vó -- ra,
  Lel -- künk á -- lom -- ra várt.
  Ki -- tá -- rult az ég -- bolt,
  A cso -- da tes -- tet öl -- tött,
  Épp, mi -- kor éj -- fél volt.
}  

sopranoVoicePart = \new Staff \with {
  instrumentName = "S."
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseOneBass }
\addlyrics { \verseTwoBass }

altoVoicePart = \new Staff \with {
  instrumentName = "A."
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
} { \altoVoice }
%\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "T."
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
%\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "B."
  shortInstrumentName = "B."
  midiInstrument = "choir aahs"
} { \clef bass \bassVoice }
\addlyrics { \verseOneBass }
\addlyrics { \verseTwoBass }

\score {
  <<
    \sopranoVoicePart
    \altoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
