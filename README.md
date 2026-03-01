# Integration

Repository for various experiments and exercises involving integration of Feynman diagrams with different topologies.
To perform computations, I normally use the following setup:

• FIRE (version 6.1) is used to perform the reduction step.

• LiteRed (version 2) is used to obtain symmetry relations between different sectors to make the
reduction faster.

• REDUZE is used in case I need to map from the master integrals of one family to those of another.

• DLogBasis is used to obtain canonical dlog bases.

• FiniteFlow is used for various situation in which a fast solution to linear systems is required, e.g.
for computing the change of basis to a predetermined dlog basis.

• PolyLogTools is used to perform the iterated integrations of the dlog forms appearing in the
differential equations.

• Numerical checks and evaluations are carried out using either AMFlow or pySecDec, depending
on the specific problem at hand

• Future: I want to learn Blade used in conjunction with FiniteFlow to make complicated reductions faster.

If one wants to run this themselves, it is recommended that one has at least these programs installed and appended to the Mathematica path. The repository should be cloned to the FIRE6 folder. The directory FF computes various topologies related to the three-loop form factor in N=4 sYM. The directories 3LLad and 3LTC compute the three-loop ladder topology and 'tennis-court' topology respectively, relevant for the four-point amplitude at three-loops in N=4 sYM.
