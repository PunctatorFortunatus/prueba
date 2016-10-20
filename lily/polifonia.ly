\version "2.19.15"

global = {
  \time 4/4
  \key f \major
  \autoBeamOff
}

tiple = \relative c'' {
  \global
  d2. d4 |
  d2 d |
  d4 d g2~ |
  g4 f e e~ |
  e d cis d~ |
  d cis d d~ |
  \break
  
  d bes c c |
  \[d2 g\] |
  c,4 c f2 |
  d4 g2 f4 |
  e2 fis\fermata |
  \bar "||"
}

alto = \relative c'' {
  \global
  a2. a4 |
  bes2. bes4 |
  a8 b c2 bes8[ a] |
  b2 c4 g~ |
  g g a2~ |
  a fis4 fis |
  
  g2 a4 a |
  bes1 |
  a4 a a2 |
  bes4 bes a2~ |
  a a\fermata |
}

tenor = \relative c' {
  \global
  \clef tenorG
  f2. f4 |
  g g d d |
  d1~ |
  d2 c |
  g'2. f4 |
  e2 d4 d |
  
  d e f4. e8 |
  d2. e4 |
  f c2 d4~ |
  d e4. d8 d4~ |
  d cis d2\fermata |
}

bajo = \relative c' {
  \global
  \clef bass
  d2. d4 |
  g,2. g4 |
  fis fis g2~ |
  g c,4 c'~ |
  c bes a2~ |
  a d,4 d |
  
  g2 f4 f |
  bes4. a8 g2 |
  f4 f f2 |
  g4 g a2~ |
  a d,\fermata |
}

tiple_verso = \lyricmode {
  Pás -- si -- o Dó -- mi -- ni nó -- _ stri Je -- su Chrí -- _ _ sti 
  se -- cún -- _ dum Mat -- thǽ -- um, se -- cún -- dum Mat -- _ thǽ -- um.
}

alto_verso = \lyricmode {
  Pás -- si -- o Dó -- mi -- ni nó -- _ _ stri Je -- su Chrí -- sti
  se -- cún -- dum Mat -- thǽ -- um, se -- cún -- dum Mat -- thǽ -- um.
}

tenor_verso = \lyricmode {
  Pás -- si -- o Dó -- mi -- ni nó -- stri Je -- su Chrí -- sti 
  se -- cún -- dum Mat -- _ thǽ -- _ um, se -- cún -- dum Mat -- thǽ -- _ um.
}

bajo_verso = \lyricmode {
  Pás -- si -- o Dó -- mi -- ni nó -- stri Je -- su Chrí -- sti 
  se -- cún -- dum Mat -- thǽ -- _ _ um, se -- cún -- dum Mat -- thǽ -- um.
}
\score {
  <<
    \new ChoirStaff <<
      \new Staff \with { instrumentName = "Supérius" } <<
        \new Voice \tiple
        \addlyrics \tiple_verso
      >>
      \new Staff  \with { instrumentName = "Áltus" } <<
        \new Voice \alto
        \addlyrics \alto_verso
      >>
      \new Staff  \with { instrumentName = "Ténor" } <<
        \new Voice \tenor
        \addlyrics \tenor_verso
      >>
      \new Staff  \with { instrumentName = "Bássus" } <<
        \new Voice \bajo
        \addlyrics \bajo_verso
      >>
    >>
  >>
}