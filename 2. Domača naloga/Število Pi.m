(* ::Package:: *)

(* ::Input:: *)
(**)
(**)


(* ::Input:: *)
(*FunkcijaZaPi[n_]:=Module[{stevilo,ZnotrajKroga,ZunajKroga,x,y,OcenaVrednostiPi},stevilo=0;*)
(*ZnotrajKroga={};*)
(*ZunajKroga={};*)
(**)
(*Do[x=RandomReal[{-1,1}];*)
(*y=RandomReal[{-1,1}];*)
(*If[x^2+y^2<=1,stevilo++;AppendTo[ZnotrajKroga,{x,y}],AppendTo[ZunajKroga,{x,y}]],{n}];*)
(**)
(*OcenaVrednostiPi=4 stevilo/n;*)
(**)
(*plot=Show[ListPlot[ZnotrajKroga,PlotStyle->Blue,PlotMarkers->"o",FrameLabel->{"x","y"}],ListPlot[ZunajKroga,PlotStyle->Red,PlotMarkers->"x"],Graphics[{Circle[{0,0},1]}],AspectRatio->1,PlotRange->{{-1,1},{-1,1}}*)
(*];*)
(**)
(*OcenaVrednostiPi*)
(*]*)
(**)
