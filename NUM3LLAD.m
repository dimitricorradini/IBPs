(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Wolfram 14.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       154,          7]
NotebookDataLength[      8702,        253]
NotebookOptionsPosition[      7539,        227]
NotebookOutlinePosition[      7936,        243]
CellTagsIndexPosition[      7893,        240]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{"<<", "AMFlow`"}]], "Input",
 CellChangeTimes->{{3.982041143269318*^9, 3.98204115071791*^9}},
 CellLabel->"In[87]:=",ExpressionUUID->"2d91f6e3-8ff8-4f93-baa1-18c0a501b776"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{
  3.98206748450804*^9},ExpressionUUID->"482f0f7e-5657-4a8f-b121-b68ddd9e31ab"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"SetDirectory", "[", 
  RowBox[{"NotebookDirectory", "[", "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.982041164480245*^9, 3.98204117738205*^9}},
 CellLabel->"In[98]:=",ExpressionUUID->"b7c0b200-d702-4a12-90b3-684cc7b2f74f"],

Cell[BoxData["\<\"/Users/corradini/fire/FIRE6/FF/3LLad\"\>"], "Output",
 CellChangeTimes->{3.9820649322953*^9},
 CellLabel->"Out[98]=",ExpressionUUID->"c6653029-47ac-4317-8339-5b385b5f135b"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Print", "[", 
   RowBox[{"\"\<Working directory: \>\"", ",", 
    RowBox[{"NotebookDirectory", "[", "]"}]}], "]"}], ";"}]], "Input",
 CellChangeTimes->{{3.982065807738216*^9, 3.982065817633546*^9}, 
   3.9820660586524897`*^9},ExpressionUUID->"cca53791-f600-4423-bc30-\
215e9750cc73"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"AMFlowInfo", "[", "\"\<Family\>\"", "]"}], "=", "fam"}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"AMFlowInfo", "[", "\"\<Loop\>\"", "]"}], "=", 
   RowBox[{"{", 
    RowBox[{"k1", ",", "k2", ",", "k3"}], "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"SetAMFOptions", "[", 
   RowBox[{"\"\<CacheDirectory\>\"", 
    "->", "\"\</Users/corradini/amflow_cache\>\""}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"AMFlowInfo", "[", "\"\<Leg\>\"", "]"}], "=", 
   RowBox[{"{", 
    RowBox[{"p1", ",", "p2", ",", "p3"}], "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"AMFlowInfo", "[", "\"\<Conservation\>\"", "]"}], "=", 
   RowBox[{"{", "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"AMFlowInfo", "[", "\"\<Replacement\>\"", "]"}], "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"p1", "^", "2"}], "->", "0"}], ",", 
     RowBox[{
      RowBox[{"p2", "^", "2"}], "->", "0"}], ",", 
     RowBox[{
      RowBox[{"p3", "^", "2"}], "->", "0"}], ",", 
     RowBox[{
      RowBox[{"p1", " ", "p2"}], "->", 
      RowBox[{"s", "/", "2"}]}], ",", 
     RowBox[{
      RowBox[{"p1", " ", "p3"}], "->", 
      RowBox[{"t", "/", "2"}]}], ",", 
     RowBox[{
      RowBox[{"p2", " ", "p3"}], "->", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "1"}], "/", "2"}], " ", 
       RowBox[{"(", 
        RowBox[{"s", "+", "t"}], ")"}]}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"AMFlowInfo", "[", "\"\<Propagator\>\"", "]"}], "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", 
      RowBox[{"k1", "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k1", "+", "p1"}], ")"}], "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k1", "+", "p1", "+", "p2"}], ")"}], "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k2", "+", "p1", "+", "p2"}], ")"}], "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{"k2", "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k2", "-", "k1"}], ")"}], "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k3", "-", "k2"}], ")"}], "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k3", "+", "p1", "+", "p2"}], ")"}], "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k3", "+", "p1", "+", "p2", "+", "p3"}], ")"}], "^", "2"}]}], 
     ",", 
     RowBox[{"-", 
      RowBox[{"k3", "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k2", "+", "p1"}], ")"}], "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k2", "+", "p1", "+", "p2", "+", "p3"}], ")"}], "^", "2"}]}], 
     ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k3", "+", "p1"}], ")"}], "^", "2"}]}], ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k1", "+", "p1", "+", "p2", "+", "p3"}], ")"}], "^", "2"}]}], 
     ",", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"k3", "+", "k1"}], ")"}], "^", "2"}]}]}], "}"}]}], 
  ";"}]}], "Input",
 CellChangeTimes->{
  3.982041274309395*^9, {3.9820413456151047`*^9, 3.982041354731892*^9}},
 CellLabel->"In[88]:=",ExpressionUUID->"dd2c79b0-9241-47a2-a8bb-963fa1144de3"],

Cell[BoxData[
 RowBox[{"SetAMFOptions", "\[Rule]", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"\<\"AMFMode\"\>", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"\<\"Prescription\"\>", ",", "\<\"Mass\"\>", 
       ",", "\<\"Propagator\"\>"}], "}"}]}], ",", 
    RowBox[{"\<\"EndingScheme\"\>", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"\<\"Tradition\"\>", ",", "\<\"Cutkosky\"\>", 
       ",", "\<\"SingleMass\"\>", ",", "\<\"Trivial\"\>"}], "}"}]}], ",", 
    RowBox[{"\<\"D0\"\>", "\[Rule]", "4"}], ",", 
    RowBox[{"\<\"WorkingPre\"\>", "\[Rule]", "100"}], ",", 
    RowBox[{"\<\"ChopPre\"\>", "\[Rule]", "20"}], ",", 
    RowBox[{"\<\"XOrder\"\>", "\[Rule]", "100"}], ",", 
    RowBox[{"\<\"ExtraXOrder\"\>", "\[Rule]", "20"}], ",", 
    RowBox[{"\<\"LearnXOrder\"\>", "\[Rule]", 
     RowBox[{"-", "1"}]}], ",", 
    RowBox[{"\<\"TestXOrder\"\>", "\[Rule]", "5"}], ",", 
    RowBox[{"\<\"RationalizePre\"\>", "\[Rule]", "100"}], ",", 
    RowBox[{"\<\"RunLength\"\>", "\[Rule]", "1000"}], ",", 
    RowBox[{"\<\"UseCache\"\>", "\[Rule]", "False"}], ",", 
    RowBox[{"\<\"SkipReduction\"\>", "\[Rule]", "False"}]}], "}"}]}]], "Print",\

 CellChangeTimes->{3.982064875183056*^9},
 CellLabel->
  "During evaluation of \
In[88]:=",ExpressionUUID->"e1dc0901-91c4-4826-b823-24170e43c63d"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"integrals", "=", 
   RowBox[{"Import", "[", "\"\<mastersLadCan.m\>\"", "]"}]}], ";"}]], "Input",\

 CellChangeTimes->{{3.982041155908499*^9, 3.982041162595768*^9}, {
  3.982041250082128*^9, 3.9820412571803513`*^9}, {3.982041411024398*^9, 
  3.9820414115640497`*^9}, {3.982064926859954*^9, 3.982064936853788*^9}},
 CellLabel->
  "In[100]:=",ExpressionUUID->"ebea94a1-40ac-4036-bfe1-97a2c67c87d4"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"precision", "=", "10"}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"epsorder", "=", "6"}], ";"}], "\[IndentingNewLine]"}], "\n", 
 RowBox[{
  RowBox[{"solfull", "=", 
   RowBox[{"SolveIntegrals", "[", 
    RowBox[{"integrals", ",", "precision", ",", "epsorder"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<ans.m\>\"", ",", "solfull"}], "]"}], ";"}]}], "Input",
 CellChangeTimes->{
  3.982042182182358*^9, {3.982059769364706*^9, 
   3.9820597876549883`*^9}},ExpressionUUID->"0b8d3c5e-95fc-445b-b6ce-\
8109ad500b6c"]
},
WindowSize->{808, 747},
WindowMargins->{{Automatic, 140}, {-251, Automatic}},
FrontEndVersion->"14.2 for Mac OS X x86 (64-bit) (March 16, 2025)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"8856d740-c4b8-45fc-b037-6fe7a5915b7d"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[554, 20, 195, 3, 29, "Input",ExpressionUUID->"2d91f6e3-8ff8-4f93-baa1-18c0a501b776"],
Cell[752, 25, 125, 2, 29, "Input",ExpressionUUID->"482f0f7e-5657-4a8f-b121-b68ddd9e31ab"],
Cell[CellGroupData[{
Cell[902, 31, 248, 4, 29, "Input",ExpressionUUID->"b7c0b200-d702-4a12-90b3-684cc7b2f74f"],
Cell[1153, 37, 190, 2, 33, "Output",ExpressionUUID->"c6653029-47ac-4317-8339-5b385b5f135b"]
}, Open  ]],
Cell[1358, 42, 318, 7, 29, "Input",ExpressionUUID->"cca53791-f600-4423-bc30-215e9750cc73"],
Cell[CellGroupData[{
Cell[1701, 53, 3488, 111, 233, "Input",ExpressionUUID->"dd2c79b0-9241-47a2-a8bb-963fa1144de3"],
Cell[5192, 166, 1288, 28, 79, "Print",ExpressionUUID->"e1dc0901-91c4-4826-b823-24170e43c63d"]
}, Open  ]],
Cell[6495, 197, 430, 9, 29, "Input",ExpressionUUID->"ebea94a1-40ac-4036-bfe1-97a2c67c87d4"],
Cell[6928, 208, 607, 17, 111, "Input",ExpressionUUID->"0b8d3c5e-95fc-445b-b6ce-8109ad500b6c"]
}
]
*)

