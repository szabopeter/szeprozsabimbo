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
  bes4 r4 a4 g
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
  a'2
  a4 f f f
  e2 d2
  d2 c2
  d4. a8 c2
  c2
  
  a'2
  a4 f f f
  e2 d2
  d2 c2
  d4. a8 c2
  c2
  
  r4 f
  d c c b
  c8 (d e4) r e
  
  g f f f
  e2 d
  d4 r4 f4 d
  e (f g) c,
  c1  
}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.
  
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  c2
  c4 a bes a
  g2 f2
  f2 a4 c
  bes (a2) g4
  a2
  
  c2
  c4 a bes a
  g2 f
  f a4 c
  bes (a2) g4
  a2
  
  r4 c
  bes a a g
  g2 r4 g
  
  g a bes a
  g2 fis
  g4 r4 c4 bes
  a2 g
  a1
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
  
  r4 f'4
  g a f g 
  c,2 r4 c4
  e f bes, f'
  c2 d 
  g,4 r4 a4 bes
  c2 c2
  f,1 \bar "|."
}

verseOneBass = \lyricmode {
  \set stanza = "1."
  Szép ró -- zsa bim -- bó nyílt ki
  Haj -- dan egy zsen -- ge tőn
  Mint ő -- si é -- nek zen -- gi
  Bim -- bó -- ból ró -- zsa lőn
  Még zor -- don bús tél volt
  A szép vi -- rág ki -- nyí -- lott
  Épp, mi -- kor éj -- fél volt.
}

verseTwoBass = \lyricmode {
  \set stanza = \markup { \dynamic "p" "2." }
  El -- jött az ál -- dott ó -- ra,
  Szí -- vünk -- re bé -- ke szállt,
  Tes -- tünk már nyu -- go -- vó -- ra,
  Lel -- künk á -- lom -- ra várt.
  Ki -- tá -- rult az ég -- bolt,
  Az i -- ge tes -- tet öl -- tött,
  Épp, mi -- kor éj -- fél volt.
}  

