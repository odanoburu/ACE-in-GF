concrete TestAttemptoPor of TestAttempto = AttemptoPor **
  open SyntaxPor, ParadigmsPor, (C = ConstructX), (L = LexiconPor) in {

  flags coding=utf8;

  lin mary_PN      = mkPN "Maria" ;
  lin john_PN      = mkPN "João" ;
  lin woman_CN     = mkCN L.woman_N ;
  lin man_CN       = mkCN L.man_N ;
  lin friend_CN    = mkCN L.friend_N ;
  lin wait_V       = mkV "esperar" ;
  lin ask_V2       = mkV2 "pedir" ;
  lin mad_A        = mkA "bravo" ;
  lin mad_about_A2 = mkA2 (mkA "bravo") with_Prep ;
  lin happy_A      = mkA "feliz" ;

}
