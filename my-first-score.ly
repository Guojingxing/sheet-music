\header {
  title = "One Summer Day"
  composer = "Guo Jingxing"
}

upper = \relative c'{
\clef treble
    \key c \major
    <g'' a e' >1\arpeggio
  }

  uppers = \relative c{
  \clef bass
    \key c \major
    <f c' >1\arpeggio
  }

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano"
    \new Staff = "upper" \upper
    \new Staff = "uppers" \lower
  >>
  \layout {}
  \midi {}
}