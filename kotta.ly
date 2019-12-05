\include "dallam.ly"

sopranoVoicePart = \new Staff \with {
  instrumentName = \markup \center-column { S A }
  midiInstrument = "acoustic grand"
} <<
    \new Voice = "soprano" { \sopranoVoice }
    \new Voice = "alto" { \altoVoice }
>>

bassVoicePart = \new Staff \with {
  instrumentName = \markup \center-column { T B }
  midiInstrument = "acoustic grand"
} <<
    \clef bass 
    \new Voice = "tenor" { \tenorVoice }
    \new Vouce = "bass" { \bassVoice }
>>
\addlyrics { \verseOneBass }
\addlyrics { \verseTwoBass }

\score {
  \new ChoirStaff <<
    \sopranoVoicePart
    \bassVoicePart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
