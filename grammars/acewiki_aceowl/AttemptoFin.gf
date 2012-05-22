--# -path=.:present

concrete AttemptoFin of Attempto = NumeralFin, SymbolsC, NullVPS **
  AttemptoI - [S2QS] with
  (Syntax = SyntaxFin),
  (Symbolic = SymbolicFin),
  (LexAttempto = LexAttemptoFin) ** open ResFin in {

  oper S2QS : Syntax.S -> Syntax.QS = \s -> lin QS {s = s.s} ;
       
  lin ipNPQ ip = lin NPQ ( (lin NP ip) ** {a = agrP3 ip.n ; isPron = True} ) ;

}

