# IBPs

To perform computations, I normally use the following setup:

• FIRE (version 6.1) is used to perform the reduction step.

• LiteRed (version 2) is used to obtain symmetry relations between different sectors to make the
reduction faster.

• REDUZE is used in case I need to map from the master integrals of one family to those of another.
• DLogBasis is used to obtain canonical dlog bases.

• PolyLogTools is used to perform the iterated integrations of the dlog forms appearing in the
differential equations.

• Future: I want to learn Blade used in conjunction with FiniteFlow to make complicated reduc-
tions faster.

If one wants to run this themselves, it is recommended that one has at least these programs installed and appended to the Mathematica path. The repository should be moved to the FIRE6 folder and renamed to FF. The directories F1 through F9 compute various topologies related to the three-loop form factor in N=4 sYM. The directories 3LLad and 3LTC compute the three-loop ladder topology and 'tennis-court' topology respectively, relevant for the four-point amplitude at three-loops in N=4 sYM.
