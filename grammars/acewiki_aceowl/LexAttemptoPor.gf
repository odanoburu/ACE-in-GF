instance LexAttemptoPor of LexAttempto =
  open
   Prelude,
   SyntaxPor,
   ParadigmsPor,
   ConstructX
   in {

flags coding=utf8 ;

oper
  false_A = mkA "falso" ;

  adj_thatCl : A -> S -> Cl = \a,s -> mkCl (mkVP (mkAP (mkAP a) s)) ;

  exactly_AdN = ConstructX.mkAdN "exatamente" ;

  -- You can override RGL operators here
  -- TODO: how to supress the name conflict warning
  at_most_AdN = ss "no máximo" ;

} ;
