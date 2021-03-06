% This code is automatically generated on the basis of a file in Codeco notation.
%
% For more information, see the package ch.uzh.ifi.attempto.codeco of the AceWiki system
% (http://attempto.ifi.uzh.ch/acewiki/) and the thesis "Controlled English for Knowledge
% Representation" (http://attempto.ifi.uzh.ch/site/pubs/papers/doctoral_thesis_kuhn.pdf).


/* === AceWiki Grammar === */
/* - Tobias Kuhn, 10 December 2010 - */
/* Below, the grammar rules of the AceWiki grammar are shown: */

/* --- Texts and Sentences --- */
/* 'text' stands for a complete text consisting of an arbitrary number of complete
		sentences (including zero): */
text([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(text,[]),A1/A1)-->[].
text([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(text, (A1,B1)),C1/D1)-->complete_sentence([E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2,D2],A1,C1/E2),text([F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2,A3,B3,C3,D3,E3],B1,E2/D1).
/* A complete sentence is represented by the category 'complete_sentence' and is either
		a declarative sentence that ends with a full stop or a question ending with a question mark: */
complete_sentence([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(complete_sentence, ((//),A1,['.'])),B1/C1)-->[D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2]// (B1/D2),sentence([E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2,A3,B3,C3,D3],A1,D2/E3),['.'],~(B1/E3/C1).
complete_sentence([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(complete_sentence, ((//),A1,[?])),B1/C1)-->[D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2]// (B1/D2),simple_sentence_2([plus,minus,plus,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2,A3],A1,D2/B3),[?],~(B1/B3/C1).
/* General sentences are represented by 'sentence': */
sentence([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(sentence,A1),B1/C1)-->sentence_coord_1([D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2],A1,B1/C1).
sentence([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(sentence, ((//),['for every'],A1,B1)),C1/D1)-->[E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2,D2]// (C1/E2),['for every'],nc([minus,F2,G2,minus,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2,A3,B3,C3],A1,E2/D3),sentence_coord_1([E3,F3,G3,H3,I3,J3,K3,L3,M3,N3,O3,P3,Q3,R3,S3,T3,U3,V3,W3,X3,Y3,Z3,A4,B4,C4,D4],B1,D3/E4),~(C1/E4/D1).
sentence([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(sentence, ((//),[if],A1,[then],B1)),C1/D1)-->[E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2,D2]// (C1/E2),[if],sentence_coord_1([F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2,A3,B3,C3,D3,E3],A1,E2/F3),[then],sentence_coord_1([G3,H3,I3,J3,K3,L3,M3,N3,O3,P3,Q3,R3,S3,T3,U3,V3,W3,X3,Y3,Z3,A4,B4,C4,D4,E4,F4],B1,F3/G4),~(C1/G4/D1).
/* Sentences can be coordinated using "or" ('sentence_coord_1') and "and"
		('sentence_coord_2'): */
sentence_coord_1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(sentence_coord_1,A1),B1/C1)-->sentence_coord_2([D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2],A1,B1/C1).
sentence_coord_1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(sentence_coord_1, ((//),A1,[or],B1)),C1/D1)-->[E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2,D2]// (C1/E2),sentence_coord_2([F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2,A3,B3,C3,D3,E3],A1,E2/F3),[or],sentence_coord_1([G3,H3,I3,J3,K3,L3,M3,N3,O3,P3,Q3,R3,S3,T3,U3,V3,W3,X3,Y3,Z3,A4,B4,C4,D4,E4,F4],B1,F3/G4),~(C1/G4/D1).
sentence_coord_2([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(sentence_coord_2,A1),B1/C1)-->simple_sentence_1([D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2],A1,B1/C1).
sentence_coord_2([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(sentence_coord_2, (A1,[and],B1)),C1/D1)-->simple_sentence_1([E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2,D2],A1,C1/E2),[and],sentence_coord_2([F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2,A3,B3,C3,D3,E3],B1,E2/D1).
/* Uncoordinated sentences are represented in two levels by 'simple_sentence_1' and
		'simple_sentence_2': */
simple_sentence_1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(simple_sentence_1, ((//),['it is false that'],A1)),B1/C1)-->[D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2]// (B1/D2),['it is false that'],simple_sentence_1([minus,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2,A3,B3,C3],A1,D2/D3),~(B1/D3/C1).
simple_sentence_1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(simple_sentence_1, (['there is'],A1)),B1/C1)-->['there is'],np([minus,D1,E1,minus,plus,minus,minus,nom,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1],A1,B1/C1).
simple_sentence_1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(simple_sentence_1, (['there is'],A1,['such that'],B1)),C1/D1)-->['there is'],np([minus,E1,F1,minus,plus,minus,minus,nom,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1],A1,C1/Y1),['such that'],simple_sentence_1([Z1,A2,B2,C2,D2,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2],B1,Y1/D1).
simple_sentence_1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(simple_sentence_1, (['there are'],A1)),B1/C1)-->['there are'],np([minus,D1,E1,minus,plus,minus,plus,nom,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1],A1,B1/C1).
simple_sentence_1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(simple_sentence_1,A1),B1/C1)-->simple_sentence_2([minus,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2],A1,B1/C1).
simple_sentence_2([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(simple_sentence_2(qu:A,whin:B,whout:C), (A1,B1)),C1/D1)-->np([A,B,E1,minus,F1,G1,H1,nom,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1],A1,C1/A2),vp_coord_1([A,E1,C,I1,B2,C2,H1,D2,E2,J1,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2],B1,A2/V2),~(C1/V2/D1).

/* --- Verb Phrases --- */
/* Like sentences, verb phrases can be coordinated using "or" ('vp_coord_1') and "and"
		('vp_coord_2'): */
vp_coord_1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(vp_coord_1(subj:D,pl:G,plquant:J,qu:A,whin:B,whout:C),A1),B1/C1)-->vp_coord_2([A,B,C,D,D1,E1,G,F1,G1,J,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1],A1,B1/C1).
vp_coord_1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(vp_coord_1(subj:D,pl:G,plquant:J,qu:A,whin:B,whout:C), ((//),A1,[or],B1)),C1/D1)-->[E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2,D2]// (C1/E2),vp_coord_2([A,B,F2,D,G2,H2,G,I2,J2,J,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2],A1,E2/A3),[or],vp_coord_1([A,F2,C,D,B3,C3,G,D3,E3,J,F3,G3,H3,I3,J3,K3,L3,M3,N3,O3,P3,Q3,R3,S3,T3,U3],B1,A3/V3),~(C1/V3/D1).
vp_coord_2([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(vp_coord_2(subj:D,pl:G,plquant:J,qu:A,whin:B,whout:C),A1),B1/C1)-->vp([A,B,C,D,D1,E1,G,F1,G1,J,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1],A1,B1/C1).
vp_coord_2([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(vp_coord_2(subj:D,pl:G,plquant:J,qu:A,whin:B,whout:C), (A1,[and],B1)),C1/D1)-->vp([A,B,E1,D,F1,G1,G,H1,I1,J,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1],A1,C1/Z1),[and],vp_coord_2([A,E1,C,D,A2,B2,G,C2,D2,J,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2],B1,Z1/D1).
/* Uncoordinated verb phrases represented by 'vp' can use an auxiliary verb: */
vp([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(vp(subj:D,exist:E,rel:K,pl:G,plquant:J,qu:A,whin:B,whout:C), (A1,B1)),C1/D1)-->aux([E1,F1,G1,H1,E,I1,G,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2],A1,C1/C2),v([A,B,C,D,E,D2,G,E2,F2,J,K,N1,inf,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2],B1,C2/T2),~(C1/T2/D1).
vp([A,B,C,D,plus,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y],=>(vp(subj:D,exist:plus,rel:J,pl:F,qu:A,whin:B,whout:C),Z),A1/B1)-->v([A,B,C,D,plus,C1,F,D1,E1,F1,J,minus,fin,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1],Z,A1/T1),~(A1/T1/B1).
/* The category 'v' represents the main verb or - if "be" is used as a copula verb - the
		complementing noun phrase or adjective complement: */
v([A,B,B,C,D,E,F,G,H,I,J,minus,K,minus,L,M,N,O,P,Q,R,S,T,U,V,W],=>(v(be:minus,exist:D,pl:F,vform:K,copula:minus,whin:B,whout:B),X),Y/Z)-->verb([A1,B1,C1,D1,D,E1,F,F1,G1,H1,I1,minus,K,J1,itr,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1],X,Y/Z).
v([A,B,C,D,E,F,G,H,I,J,K,minus,L,minus,M,N,O,P,Q,R,S,T,U,V,W,X],=>(v(subj:D,be:minus,exist:E,rel:K,pl:G,vform:L,embv:N,copula:minus,qu:A,whin:B,whout:C), (Y,Z)),A1/B1)-->verb([C1,D1,E1,F1,E,G1,G,H1,I1,J1,K1,minus,L,L1,tr,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1],Y,A1/X1),np([A,B,C,D,Y1,Z1,A2,acc,B2,C2,K,D2,E2,F2,tr,N,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2],Z,X1/B1).
v([A,B,C,D,E,F,G,H,I,J,K,plus,L,minus,M,N,O,P,Q,R,S,T,U,V,W,X],=>(v(subj:D,be:plus,rel:K,embv:N,copula:minus,qu:A,whin:B,whout:C), (Y,Z)),A1/B1)-->verb([C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,plus,N1,O1,tr,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1],Y,A1/A2),np([A,B,C,D,B2,C2,D2,acc,E2,F2,K,G2,H2,minus,I2,N,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2],Z,A2/B1).
v([A,B,C,D,E,F,G,H,I,J,K,plus,L,plus,M,N,O,P,Q,R,S,T,U,V,W,X],=>(v(subj:D,be:plus,rel:K,embv:N,copula:plus,qu:A,whin:B,whout:C),Y),Z/A1)-->np([A,B,C,D,B1,C1,minus,acc,D1,E1,K,F1,G1,plus,H1,N,plus,I1,J1,K1,L1,M1,N1,O1,P1,Q1],Y,Z/A1).
v([A,B,C,D,E,F,G,H,I,minus,J,plus,K,plus,L,M,N,O,P,Q,R,S,T,U,V,W],=>(v(subj:D,be:plus,rel:J,plquant:minus,embv:M,copula:plus,qu:A,whin:B,whout:C),X),Y/Z)-->np([A,B,C,D,A1,B1,minus,acc,C1,D1,J,E1,F1,plus,G1,M,minus,H1,I1,J1,K1,L1,M1,N1,O1,P1],X,Y/Z).
v([A,B,C,D,E,F,G,H,I,J,K,plus,L,plus,M,N,O,P,Q,R,S,T,U,V,W,X],=>(v(subj:D,be:plus,rel:K,embv:N,copula:plus,qu:A,whin:B,whout:C), (Y,Z)),A1/B1)--> $tradj([C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2],Y,A1/A1),np([A,B,C,D,C2,D2,E2,acc,F2,G2,K,H2,I2,minus,J2,N,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2],Z,A1/B1).

/* --- Noun Phrases --- */
/* Noun phrases are represented by 'np' and can consist of proper names, variables,
		pronouns, and different noun constructs: */
np([A,B,C,D,plus,plus,minus,E,F,G,H,I,J,K,L,M,minus,N,O,P,Q,R,S,T,U,V],=>(np(id:F,exist:plus,rel:H,of:minus,def:plus,pl:minus,embv:M,qu:A,whin:B,whout:C), (W,>>(id:F,human:X,gender:Y,type:prop,hasvar:minus),Z)),A1/B1)--> $propername([C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,X,Y,F,T1,U1,V1,W1,X1,Y1],W,A1/A1),[Z1,A2,B2,C2,D2,E2,F2,G2,F,H2,I2,J2,K2,L2,M2,N2,O2,X,Y,P2,prop,minus,Q2,R2,S2,T2]>> (A1/U2),relcl([A,B,C,F,V2,W2,X2,Y2,Z2,A3,H,B3,C3,D3,E3,M,F3,X,G3,H3,I3,J3,K3,L3,M3,N3],Z,U2/B1).
np([A,B,B,C,plus,plus,minus,D,E,F,G,H,I,J,K,L,minus,M,N,O,P,Q,R,S,T,U],=>(np(id:E,exist:plus,of:minus,def:plus,pl:minus,whin:B,whout:B), (#(E),V,>(id:E,type:var,hasvar:plus,var:W))),X/Y)--> #(E),newvar([Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,W,V1,W1,X1],V,X/Y1),[Z1,A2,B2,C2,D2,E2,F2,G2,E,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,var,plus,W,S2,T2,U2]>Y1/Y.
np([A,B,B,C,plus,plus,minus,D,E,F,G,H,I,J,K,L,minus,M,N,O,P,Q,R,S,T,U],=>(np(id:E,exist:plus,of:minus,def:plus,pl:minus,whin:B,whout:B), (V,W,<(id:E,type:noun,hasvar:plus,noun:X,var:Y,human:Z,gender:A1),>(id:E,human:Z,gender:A1,type:ref,hasvar:minus))),B1/C1)--> $defnoun([D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,X,A2,B2],V,B1/B1),$reference([C2,D2,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,Y,V2,W2,X2,Y2,Z2,A3],W,B1/B1),[+[B3,C3,D3,E3,F3,G3,H3,I3,E,J3,K3,L3,M3,N3,O3,P3,Q3,Z,A1,R3,noun,plus,Y,X,S3,T3]]<B1/U3,[V3,W3,X3,Y3,Z3,A4,B4,C4,E,D4,E4,F4,G4,H4,I4,J4,K4,Z,A1,L4,ref,minus,M4,N4,O4,P4]>U3/C1.
np([A,B,B,C,plus,plus,minus,D,E,F,G,H,I,J,K,L,minus,M,N,O,P,Q,R,S,T,U],=>(np(id:E,exist:plus,of:minus,def:plus,pl:minus,whin:B,whout:B), (V,<(id:E,type:noun,noun:W,human:X,gender:Y),>(id:E,human:X,gender:Y,type:ref,hasvar:minus))),Z/A1)--> $defnoun([B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,W,Y1,Z1],V,Z/Z),[+[A2,B2,C2,D2,E2,F2,G2,H2,E,I2,J2,K2,L2,M2,N2,O2,P2,X,Y,Q2,noun,R2,S2,W,T2,U2]]<Z/V2,[W2,X2,Y2,Z2,A3,B3,C3,D3,E,E3,F3,G3,H3,I3,J3,K3,L3,X,Y,M3,ref,minus,N3,O3,P3,Q3]>V2/A1.
np([A,B,B,C,plus,plus,minus,D,E,F,G,H,I,J,K,L,minus,M,N,O,P,Q,R,S,T,U],=>(np(id:E,exist:plus,of:minus,def:plus,pl:minus,whin:B,whout:B), (V,<(id:E,hasvar:plus,var:W,human:X,gender:Y),>(id:E,human:X,gender:Y,type:ref,hasvar:minus))),Z/A1)--> $reference([B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,W,U1,V1,W1,X1,Y1,Z1],V,Z/Z),[+[A2,B2,C2,D2,E2,F2,G2,H2,E,I2,J2,K2,L2,M2,N2,O2,P2,X,Y,Q2,R2,plus,W,S2,T2,U2]]<Z/V2,[W2,X2,Y2,Z2,A3,B3,C3,D3,E,E3,F3,G3,H3,I3,J3,K3,L3,X,Y,M3,ref,minus,N3,O3,P3,Q3]>V2/A1.
np([A,B,C,D,E,F,minus,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y],=>(np(id:H,subj:D,exist:E,rel:J,of:P,pl:minus,embv:O,qu:A,whin:B,whout:C), (Z,A1)),B1/C1)-->quant([A,D1,E1,F1,E,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2],Z,B1/B2),nc([A,B,C,D,C2,D2,E2,F2,H,G2,J,H2,I2,J2,K2,O,P,L2,M2,N2,O2,P2,Q2,R2,S2,T2],A1,B2/C1).
np([A,B,C,D,E,F,minus,G,H,I,J,K,L,M,N,O,minus,P,Q,R,S,T,U,V,W,X],=>(np(id:H,exist:E,rel:J,of:minus,pl:minus,embv:O,qu:A,whin:B,whout:C), (#(H),Y,Z,>(id:H,human:A1,type:ipron,hasvar:B1,var:C1),D1)),E1/F1)--> #(H),ipron([A,G1,H1,I1,E,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,A1,V1,W1,X1,Y1,Z1,A2,B2,C2],Y,E1/D2),opt_newvar([E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,B1,C1,Z2,A3,B3],Z,D2/C3),[D3,E3,F3,G3,H3,I3,J3,K3,H,L3,M3,N3,O3,P3,Q3,R3,S3,A1,T3,U3,ipron,B1,C1,V3,W3,X3]>C3/Y3,relcl([A,B,C,H,Z3,A4,B4,C4,D4,E4,J,F4,G4,H4,I4,O,J4,A1,K4,L4,M4,N4,O4,P4,Q4,R4],D1,Y3/F1).
np([A,B,B,C,plus,D,plus,E,F,plus,G,H,I,minus,J,K,minus,L,M,N,O,P,Q,R,S,T],=>(np(id:F,exist:plus,of:minus,pl:plus,plquant:plus,copula:minus,whin:B,whout:B), ([nothing,but],#(F),U)),V/V)-->[nothing,but],#(F),$nounpl([W,X,Y,Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1],U,V/V).
np([A,B,B,C,plus,D,plus,E,F,plus,G,H,I,minus,J,K,minus,L,M,N,O,P,Q,R,S,T],=>(np(id:F,exist:plus,of:minus,pl:plus,plquant:plus,copula:minus,whin:B,whout:B), (U,V,#(F),W)),X/Y)-->num_quant([Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1],U,X/Y),$number([Z1,A2,B2,C2,D2,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2],V,Y/Y),#(F),$nounpl([Z2,A3,B3,C3,D3,E3,F3,G3,H3,I3,J3,K3,L3,M3,N3,O3,P3,Q3,R3,S3,T3,U3,V3,W3,X3,Y3],W,Y/Y).
np([A,B,B,C,plus,D,minus,E,F,G,H,I,J,minus,K,L,minus,M,N,O,P,Q,R,S,T,U],=>(np(id:F,exist:plus,of:minus,pl:minus,copula:minus,whin:B,whout:B), (V,['1'],#(F),W,>(id:F,human:X,gender:Y,type:noun,hasvar:minus,noun:Z))),A1/B1)-->num_quant([C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2],V,A1/C2),['1'],#(F),$noun([D2,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,X,Y,Z,U2,V2,W2,X2,Y2,Z2],W,C2/C2),[A3,B3,C3,D3,E3,F3,G3,H3,F,I3,J3,K3,L3,M3,N3,O3,P3,X,Y,Q3,noun,minus,R3,Z,S3,T3]>C2/B1.
np([plus,minus,plus,A,plus,B,minus,C,D,E,F,G,H,I,J,K,minus,L,M,N,O,P,Q,R,S,T],=>(np(id:D,exist:plus,of:minus,pl:minus,qu:plus,whin:minus,whout:plus), (#(D),[what],>(id:D,human:minus,type:wh,hasvar:minus))),U/V)--> #(D),[what],[W,X,Y,Z,A1,B1,C1,D1,D,E1,F1,G1,H1,I1,J1,K1,L1,minus,M1,N1,wh,minus,O1,P1,Q1,R1]>U/V.
np([plus,minus,plus,A,plus,B,minus,C,D,E,F,G,H,I,J,K,minus,L,M,N,O,P,Q,R,S,T],=>(np(id:D,exist:plus,of:minus,pl:minus,qu:plus,whin:minus,whout:plus), (#(D),[who],>(id:D,human:plus,type:wh,hasvar:minus))),U/V)--> #(D),[who],[W,X,Y,Z,A1,B1,C1,D1,D,E1,F1,G1,H1,I1,J1,K1,L1,plus,M1,N1,wh,minus,O1,P1,Q1,R1]>U/V.
np([plus,minus,plus,A,plus,B,minus,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U],=>(np(id:D,subj:A,exist:plus,rel:F,of:L,embv:K,pl:minus,qu:plus,whin:minus,whout:plus), ([which],V)),W/X)-->[which],nc([plus,plus,plus,A,Y,Z,A1,B1,D,C1,F,D1,E1,F1,G1,K,L,H1,I1,J1,K1,L1,M1,N1,O1,P1],V,W/X).
np([plus,minus,plus,A,plus,B,plus,C,D,minus,E,F,G,H,I,J,minus,K,L,M,N,O,P,Q,R,S],=>(np(id:D,exist:plus,of:minus,pl:plus,plquant:minus,qu:plus,whin:minus,whout:plus), ([which],#(D),T)),U/U)-->[which],#(D),$nounpl([V,W,X,Y,Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1],T,U/U).
/* The category 'nc' represents nouns optionally followed by variables, relative clauses,
		and of-constructs: */
nc([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,minus,Q,R,S,T,U,V,W,X,Y],=>(nc(id:I,rel:K,of:minus,embv:P,qu:A,whin:B,whout:C), (Z,A1,>(id:I,human:B1,gender:C1,type:noun,hasvar:D1,noun:E1,var:F1),G1)),H1/I1)-->n([J1,K1,L1,M1,N1,O1,P1,Q1,I,R1,S1,T1,U1,V1,W1,X1,Y1,B1,C1,E1,Z1,A2,B2,C2,D2,E2],Z,H1/F2),opt_newvar([G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2,A3,D1,F1,B3,C3,D3],A1,F2/E3),[F3,G3,H3,I3,J3,K3,L3,M3,I,N3,O3,P3,Q3,R3,S3,T3,U3,B1,C1,V3,noun,D1,F1,E1,W3,X3]>E3/Y3,relcl([A,B,C,I,Z3,A4,B4,C4,D4,E4,K,F4,G4,H4,I4,P,J4,B1,K4,L4,M4,N4,O4,P4,Q4,R4],G1,Y3/I1).
nc([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,plus,Q,R,S,T,U,V,W,X,Y],=>(nc(subj:D,rel:K,of:plus,embv:P,qu:A,whin:B,whout:C), (Z,A1)),B1/C1)--> $nounof([D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2],Z,B1/B1),np([A,B,C,D,D2,E2,F2,acc,G2,H2,K,I2,J2,K2,L2,P,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2],A1,B1/W2),~(B1/W2/C1).
/* The category 'n' stands for nouns: */
n([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(n(id:I,human:R,gender:S,text:T), (#(I),A1)),B1/B1)--> #(I),$noun([C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,R,S,T,T1,U1,V1,W1,X1,Y1],A1,B1/B1).
/* New variables, optional and mandatory, are represented by 'opt_newvar' and 'newvar',
		respectively: */
opt_newvar([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,minus,V,W,X,Y],=>(opt_newvar(hasvar:minus),[]),Z/Z)-->[].
opt_newvar([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,plus,V,W,X,Y],=>(opt_newvar(hasvar:plus,var:V),Z),A1/B1)-->newvar([C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,V,Y1,Z1,A2],Z,A1/B1).
newvar([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(newvar(var:W), (A1,/<(hasvar:plus,var:W))),B1/C1)--> $variable([D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W,W1,X1,Y1,Z1,A2,B2],A1,B1/B1),/<([C2,D2,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,plus,W,X2,Y2,Z2],B1/C1).

/* --- Relative Clauses --- */
/* Relative clauses are represented by 'relcl'. They start with a relative pronoun and
		are always optional: */
relcl([A,B,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y],=>(relcl(whin:B,whout:B),[]),Z/Z)-->[].
relcl([A,B,C,D,E,F,G,H,I,J,plus,K,L,M,N,plus,O,P,Q,R,S,T,U,V,W,X],=>(relcl(subj:D,rel:plus,embv:plus,human:P,qu:A,whin:B,whout:C), (Y,Z)),A1/B1)-->relpron([C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,P,T1,U1,V1,W1,X1,Y1,Z1,A2],Y,A1/B2),relcl1([A,B,C,D,C2,D2,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P,P2,Q2,R2,S2,T2,U2,Z1,V2],Z,B2/B1).
/* Like sentences and verb phrases, relative clauses can be coordinated by "or"
		('relcl1') and "and" ('relcl2'): */
relcl1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(relcl1(subj:D,human:R,relpron:Y,qu:A,whin:B,whout:C), ((//),A1,B1,C1)),D1/E1)-->[F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2,D2,E2]// (D1/F2),relcl2([A,B,G2,D,H2,I2,J2,K2,L2,M2,minus,N2,O2,P2,Q2,R2,S2,R,T2,U2,V2,W2,X2,Y2,Y,Z2],A1,F2/A3),or_relpron([B3,C3,D3,E3,F3,G3,H3,I3,J3,K3,L3,M3,N3,O3,P3,Q3,R3,R,S3,T3,U3,V3,W3,X3,Y,Y3],B1,A3/Z3),relcl1([A,G2,C,D,A4,B4,C4,D4,E4,F4,G4,H4,I4,J4,K4,L4,M4,R,N4,O4,P4,Q4,R4,S4,Y,T4],C1,Z3/U4),~(D1/U4/E1).
relcl1([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(relcl1(subj:D,human:R,relpron:Y,qu:A,whin:B,whout:C),A1),B1/C1)-->relcl2([A,B,C,D,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,R,Q1,R1,S1,T1,U1,V1,Y,W1],A1,B1/C1).
relcl2([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(relcl2(subj:D,rel:K,relpron:Y,human:R,qu:A,whin:B,whout:C), (A1,B1,C1)),D1/E1)-->vp([A,B,F1,D,G1,H1,minus,I1,J1,K1,minus,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1],A1,D1/A2),and_relpron([B2,C2,D2,E2,F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,R,S2,T2,U2,V2,W2,X2,Y,Y2],B1,A2/Z2),relcl2([A,F1,C,D,A3,B3,C3,D3,E3,F3,K,G3,H3,I3,J3,K3,L3,R,M3,N3,O3,P3,Q3,R3,Y,S3],C1,Z2/E1).
relcl2([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(relcl2(subj:D,rel:K,qu:A,whin:B,whout:C),A1),B1/C1)-->vp([A,B,C,D,D1,E1,minus,F1,G1,H1,K,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1],A1,B1/C1).
relcl2([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(relcl2(subj:D,qu:A,whin:B,whout:C), (A1,B1,C1)),D1/E1)-->np([A,B,C,D,F1,G1,H1,nom,I1,J1,minus,K1,L1,minus,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,minus],A1,D1/X1),aux([Y1,Z1,A2,B2,C2,D2,H1,E2,F2,G2,H2,minus,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2],B1,X1/W2),verb([X2,Y2,Z2,A3,C2,B3,H1,C3,D3,E3,F3,minus,inf,G3,tr,H3,I3,J3,K3,L3,M3,N3,O3,P3,Q3,R3],C1,W2/S3),~(D1/S3/E1).
relcl2([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(relcl2(subj:D,qu:A,whin:B,whout:C), (A1,B1)),C1/D1)-->np([A,B,C,D,E1,F1,G1,nom,H1,I1,minus,J1,K1,minus,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,minus],A1,C1/W1),verb([X1,Y1,Z1,A2,plus,B2,G1,C2,D2,E2,F2,minus,fin,G2,tr,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2],B1,W1/S2),~(C1/S2/D1).
/* Relative pronouns are represented by 'relpron' and can be either "that", "who" or
		"which": */
relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,that,Y],=>(relpron(relpron:that),[that]),Z/Z)-->[that].
relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,plus,R,S,T,U,V,W,who,X],=>(relpron(human:plus,relpron:who),[who]),Y/Y)-->[who].
relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,minus,R,S,T,U,V,W,which,X],=>(relpron(human:minus,relpron:which),[which]),Y/Y)-->[which].
/* The categories 'or_relpron' and 'and_relpron' define shortcuts - like "or that" as
		one token - for better usability inside of the predictive editor: */
or_relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(or_relpron(human:R,relpron:Y), ([or],A1)),B1/C1)-->[or],relpron([D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,R,U1,V1,W1,X1,Y1,Z1,Y,A2],A1,B1/C1).
or_relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,that,Y],=>(or_relpron(relpron:that),['or that']),Z/Z)-->['or that'].
or_relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,plus,R,S,T,U,V,W,who,X],=>(or_relpron(human:plus,relpron:who),['or who']),Y/Y)-->['or who'].
or_relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,minus,R,S,T,U,V,W,which,X],=>(or_relpron(human:minus,relpron:which),['or which']),Y/Y)-->['or which'].
and_relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(and_relpron(human:R,relpron:Y), ([and],A1)),B1/C1)-->[and],relpron([D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,R,U1,V1,W1,X1,Y1,Z1,Y,A2],A1,B1/C1).
and_relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,that,Y],=>(and_relpron(relpron:that),['and that']),Z/Z)-->['and that'].
and_relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,plus,R,S,T,U,V,W,who,X],=>(and_relpron(human:plus,relpron:who),['and who']),Y/Y)-->['and who'].
and_relpron([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,minus,R,S,T,U,V,W,which,X],=>(and_relpron(human:minus,relpron:which),['and which']),Y/Y)-->['and which'].

/* --- Verbs --- */
/* The category 'verb' represents main verbs: */
verb([A,B,C,D,E,F,minus,G,H,I,J,minus,fin,K,tr,L,M,N,O,P,Q,R,S,T,U,V],=>(verb(be:minus,vcat:tr,pl:minus,vform:fin),W),X/X)--> $verbsg([Y,Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1],W,X/X).
verb([A,B,C,D,E,F,plus,G,H,I,J,minus,fin,K,tr,L,M,N,O,P,Q,R,S,T,U,V],=>(verb(be:minus,vcat:tr,pl:plus,vform:fin),W),X/X)--> $verbinf([Y,Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1],W,X/X).
verb([A,B,C,D,E,F,G,H,I,J,K,minus,inf,L,tr,M,N,O,P,Q,R,S,T,U,V,W],=>(verb(be:minus,vcat:tr,vform:inf),X),Y/Y)--> $verbinf([Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1],X,Y/Y).
verb([A,B,C,D,E,F,G,H,I,J,K,plus,L,M,tr,N,O,P,Q,R,S,T,U,V,W,X],=>(verb(be:plus,vcat:tr),Y),Z/Z)--> $pverb([A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1],Y,Z/Z).
/* Auxiliary verbs are represented by 'aux', which includes negation markers: */
aux([A,B,C,D,plus,E,minus,F,G,H,I,plus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:plus,exist:plus,pl:minus),[is]),X/X)-->[is].
aux([A,B,C,D,minus,E,minus,F,G,H,I,plus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:plus,exist:minus,pl:minus), ((//),['is not'])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),['is not'].
aux([A,B,C,D,minus,E,minus,F,G,H,I,plus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:plus,exist:minus,pl:minus), ((//),['isn\'t'])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),['isn\'t'].
aux([A,B,C,D,minus,E,minus,F,G,H,I,plus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:plus,exist:minus,pl:minus), ((//),[is,not])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),[is,not].
aux([A,B,C,D,plus,E,plus,F,G,H,I,plus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:plus,exist:plus,pl:plus),[are]),X/X)-->[are].
aux([A,B,C,D,minus,E,plus,F,G,H,I,plus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:plus,exist:minus,pl:plus), ((//),['are not'])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),['are not'].
aux([A,B,C,D,minus,E,plus,F,G,H,I,plus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:plus,exist:minus,pl:plus), ((//),['aren\'t'])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),['aren\'t'].
aux([A,B,C,D,minus,E,plus,F,G,H,I,plus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:plus,exist:minus,pl:plus), ((//),[are,not])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),[are,not].
aux([A,B,C,D,minus,E,minus,F,G,H,I,minus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:minus,exist:minus,pl:minus), ((//),['does not'])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),['does not'].
aux([A,B,C,D,minus,E,minus,F,G,H,I,minus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:minus,exist:minus,pl:minus), ((//),['doesn\'t'])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),['doesn\'t'].
aux([A,B,C,D,minus,E,plus,F,G,H,I,minus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:minus,exist:minus,pl:plus), ((//),['do not'])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),['do not'].
aux([A,B,C,D,minus,E,plus,F,G,H,I,minus,J,K,L,M,N,O,P,Q,R,S,T,U,V,W],=>(aux(be:minus,exist:minus,pl:plus), ((//),['don\'t'])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),['don\'t'].

/* --- Quantifiers --- */
/* Existential and universal quantifiers are represented by 'quant': */
quant([A,B,C,D,plus,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y],=>(quant(exist:plus),[a]),Z/Z)-->[a].
quant([A,B,C,D,plus,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y],=>(quant(exist:plus),[an]),Z/Z)-->[an].
quant([minus,A,B,C,minus,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X],=>(quant(exist:minus,qu:minus), ((//),[every])),Y/Z)-->[A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1]// (Y/Z),[every].
quant([A,B,C,D,minus,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y],=>(quant(exist:minus), ((//),[no])),Z/A1)-->[B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2]// (Z/A1),[no].
/* The category 'num_quant' stands for numerical quantifiers: */
num_quant([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(num_quant,['at least']),A1/A1)-->['at least'].
num_quant([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(num_quant,['at most']),A1/A1)-->['at most'].
num_quant([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(num_quant,['less than']),A1/A1)-->['less than'].
num_quant([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(num_quant,['more than']),A1/A1)-->['more than'].
num_quant([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(num_quant,[exactly]),A1/A1)-->[exactly].

/* --- Indefinite Pronouns --- */
/* Indefinite pronouns are represented by 'ipron': */
ipron([A,B,C,D,plus,E,F,G,H,I,J,K,L,M,N,O,P,minus,Q,R,S,T,U,V,W,X],=>(ipron(exist:plus,human:minus),[something]),Y/Y)-->[something].
ipron([A,B,C,D,plus,E,F,G,H,I,J,K,L,M,N,O,P,plus,Q,R,S,T,U,V,W,X],=>(ipron(exist:plus,human:plus),[somebody]),Y/Y)-->[somebody].
ipron([minus,A,B,C,minus,D,E,F,G,H,I,J,K,L,M,N,O,minus,P,Q,R,S,T,U,V,W],=>(ipron(exist:minus,human:minus,qu:minus), ((//),[everything])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),[everything].
ipron([minus,A,B,C,minus,D,E,F,G,H,I,J,K,L,M,N,O,plus,P,Q,R,S,T,U,V,W],=>(ipron(exist:minus,human:plus,qu:minus), ((//),[everybody])),X/Y)-->[Z,A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1]// (X/Y),[everybody].
ipron([A,B,C,D,minus,E,F,G,H,I,J,K,L,M,N,O,P,minus,Q,R,S,T,U,V,W,X],=>(ipron(exist:minus,human:minus), ((//),[nothing])),Y/Z)-->[A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1]// (Y/Z),[nothing].
ipron([A,B,C,D,minus,E,F,G,H,I,J,K,L,M,N,O,P,plus,Q,R,S,T,U,V,W,X],=>(ipron(exist:minus,human:plus), ((//),[nobody])),Y/Z)-->[A1,B1,C1,D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1]// (Y/Z),[nobody].

/* --- Lexicon --- */
$propername([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'John',T,U,V,W,X,Y],=>($propername(text:'John'),['John']),Z/Z)-->['John'].
$propername([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'Mary',T,U,V,W,X,Y],=>($propername(text:'Mary'),['Mary']),Z/Z)-->['Mary'].
$noun([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,man,T,U,V,W,X,Y],=>($noun(text:man),[man]),Z/Z)-->[man].
$defnoun([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,man,X,Y],=>($defnoun(noun:man),['the man']),Z/Z)-->['the man'].
$nounpl([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($nounpl,[men]),A1/A1)-->[men].
$noun([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,woman,T,U,V,W,X,Y],=>($noun(text:woman),[woman]),Z/Z)-->[woman].
$defnoun([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,woman,X,Y],=>($defnoun(noun:woman),['the woman']),Z/Z)-->['the woman'].
$nounpl([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($nounpl,[women]),A1/A1)-->[women].
$noun([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,friend,T,U,V,W,X,Y],=>($noun(text:friend),[friend]),Z/Z)-->[friend].
$defnoun([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,friend,X,Y],=>($defnoun(noun:friend),['the friend']),Z/Z)-->['the friend'].
$nounpl([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($nounpl,[friends]),A1/A1)-->[friends].
$nounof([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($nounof,['man of']),A1/A1)-->['man of'].
$nounof([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($nounof,['woman of']),A1/A1)-->['woman of'].
$nounof([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($nounof,['friend of']),A1/A1)-->['friend of'].
$verbsg([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($verbsg,[asks]),A1/A1)-->[asks].
$verbinf([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($verbinf,[ask]),A1/A1)-->[ask].
$pverb([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($pverb,['asked by']),A1/A1)-->['asked by'].
$tradj([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($tradj,['mad-about']),A1/A1)-->['mad-about'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X',T,U,V,W,X,Y],=>($variable(text:'X'),['X']),Z/Z)-->['X'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X',T,U,V,W,X,Y],=>($reference(text:'X'),['X']),Z/Z)-->['X'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X1',T,U,V,W,X,Y],=>($variable(text:'X1'),['X1']),Z/Z)-->['X1'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X1',T,U,V,W,X,Y],=>($reference(text:'X1'),['X1']),Z/Z)-->['X1'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X2',T,U,V,W,X,Y],=>($variable(text:'X2'),['X2']),Z/Z)-->['X2'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X2',T,U,V,W,X,Y],=>($reference(text:'X2'),['X2']),Z/Z)-->['X2'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X3',T,U,V,W,X,Y],=>($variable(text:'X3'),['X3']),Z/Z)-->['X3'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X3',T,U,V,W,X,Y],=>($reference(text:'X3'),['X3']),Z/Z)-->['X3'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X4',T,U,V,W,X,Y],=>($variable(text:'X4'),['X4']),Z/Z)-->['X4'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X4',T,U,V,W,X,Y],=>($reference(text:'X4'),['X4']),Z/Z)-->['X4'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X5',T,U,V,W,X,Y],=>($variable(text:'X5'),['X5']),Z/Z)-->['X5'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X5',T,U,V,W,X,Y],=>($reference(text:'X5'),['X5']),Z/Z)-->['X5'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X6',T,U,V,W,X,Y],=>($variable(text:'X6'),['X6']),Z/Z)-->['X6'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X6',T,U,V,W,X,Y],=>($reference(text:'X6'),['X6']),Z/Z)-->['X6'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X7',T,U,V,W,X,Y],=>($variable(text:'X7'),['X7']),Z/Z)-->['X7'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X7',T,U,V,W,X,Y],=>($reference(text:'X7'),['X7']),Z/Z)-->['X7'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X8',T,U,V,W,X,Y],=>($variable(text:'X8'),['X8']),Z/Z)-->['X8'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X8',T,U,V,W,X,Y],=>($reference(text:'X8'),['X8']),Z/Z)-->['X8'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X9',T,U,V,W,X,Y],=>($variable(text:'X9'),['X9']),Z/Z)-->['X9'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'X9',T,U,V,W,X,Y],=>($reference(text:'X9'),['X9']),Z/Z)-->['X9'].
$variable([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'Y',T,U,V,W,X,Y],=>($variable(text:'Y'),['Y']),Z/Z)-->['Y'].
$reference([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,'Y',T,U,V,W,X,Y],=>($reference(text:'Y'),['Y']),Z/Z)-->['Y'].
$number([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>($number,['2']),A1/A1)-->['2'].

/* --- Auxiliary Rules for Testing --- */
test([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(test, (A1,B1)),C1/D1)-->complete_sentence([E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2,D2],A1,C1/E2),fill([F2,G2,H2,I2,J2,K2,L2,M2,N2,O2,P2,Q2,R2,S2,T2,U2,V2,W2,X2,Y2,Z2,A3,B3,C3,D3,E3],B1,E2/D1).
fill([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(fill,[]),A1/A1)-->[].
fill([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],=>(fill, ([''],A1)),B1/C1)-->[''],fill([D1,E1,F1,G1,H1,I1,J1,K1,L1,M1,N1,O1,P1,Q1,R1,S1,T1,U1,V1,W1,X1,Y1,Z1,A2,B2,C2],A1,B1/C1).


~(I/T/O) --> {append([X,[//|N],I],T), \+ member(//,N), findall(>>(R),member(>>(R),X),Y), append([Y,N,I],O)}, !.
~(_/O/O) --> [].
//(_, T/[//|T]) --> [].
>(F, T/[>(F)|T]) --> [].
>>(F, T/[>>(F)|T]) --> [].
<(L, [R|T]/[R|T]) --> {R =.. [_,Q], \+ member(-Q, L), \+ \+ member(+Q, L), !, member(+Q, L)}.
<(L, [R|T]/[R|T]) --> <(L,T/T).
/<(F, T/T) --> {\+ (member(R,T), R =.. [_,F])}, !.
#(#(P),L,L) :- length(L,P).
