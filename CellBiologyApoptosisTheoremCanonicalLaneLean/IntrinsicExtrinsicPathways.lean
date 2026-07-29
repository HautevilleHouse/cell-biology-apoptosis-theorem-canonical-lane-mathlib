import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyApoptosisTheoremCanonicalLaneLean.CaspaseCascade

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure IntrinsicExtrinsicPathwaysPackage {A : ApoptosisAdmissibleClass}
    {P : SignalPathwayPackage A} {C : CaspaseCascadePackage P} where
  intrinsicMitochondrialPathway : Prop
  extrinsicDeathReceptorPathway : Prop
  crossTalkMolecules : Prop
  convergenceAtCaspase : Prop

structure IntrinsicExtrinsicPathwaysEvidence {A : ApoptosisAdmissibleClass}
    {P : SignalPathwayPackage A} {C : CaspaseCascadePackage P}
    (I : IntrinsicExtrinsicPathwaysPackage P C) where
  intrinsicMitochondrialPathwayClosed : I.intrinsicMitochondrialPathway
  extrinsicDeathReceptorPathwayClosed : I.extrinsicDeathReceptorPathway
  crossTalkMoleculesClosed : I.crossTalkMolecules
  convergenceAtCaspaseClosed : I.convergenceAtCaspase

def IntrinsicExtrinsicPathwaysClosed {A : ApoptosisAdmissibleClass}
    {P : SignalPathwayPackage A} {C : CaspaseCascadePackage P}
    (I : IntrinsicExtrinsicPathwaysPackage P C) : Prop :=
  I.intrinsicMitochondrialPathway ∧ I.extrinsicDeathReceptorPathway ∧
  I.crossTalkMolecules ∧ I.convergenceAtCaspase

theorem intrinsic_extrinsic_pathways_closed_from_evidence
    {A : ApoptosisAdmissibleClass} {P : SignalPathwayPackage A} {C : CaspaseCascadePackage P}
    (I : IntrinsicExtrinsicPathwaysPackage P C) (E : IntrinsicExtrinsicPathwaysEvidence I) :
    IntrinsicExtrinsicPathwaysClosed I :=
  And.intro E.intrinsicMitochondrialPathwayClosed
    (And.intro E.extrinsicDeathReceptorPathwayClosed
      (And.intro E.crossTalkMoleculesClosed E.convergenceAtCaspaseClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
