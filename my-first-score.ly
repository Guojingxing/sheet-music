9\version "2.18.2"

\header {
  title = "One Summer Day"
  composer = "Guo Jingxing"
}
\language "english"
upper = \relative c'{
  <<
    \tempo 4 = 80
    
\clef treble
    \key c \major
    <g'' a e' >1\arpeggio 
     <d, g c>1\arpeggio
    <c, f bf >2\arpeggio
  >>
  }

lower = \relative c'{
  <<
  \clef treble
    \key c \major
    <f c' >1\arpeggio \sustainOn
     <e, b>1\arpeggio
     <d a>2\arpeggio
  >>
  }


  \new PianoStaff {
 
  <<
    
    %\set PianoStaff.instrumentName = #"Piano"
    \context Staff = "up" {
      \accidentalStyle default
      \upper
    }
    \context Staff = "down" {
      \accidentalStyle default
      \lower
    }
    
  
  >>
  %\layout {}
  %\midi {}
}