import HautevilleHouse.CellBiologyApoptosisTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ApoptosisSignalingPackage where
  extrinsicPathway : Prop
  intrinsicPathway : Prop
  caspaseCascade : Prop
  mitochondrialRegulation : Prop

structure ApoptosisSignalingEvidence (P : ApoptosisSignalingPackage) where
  extrinsicPathwayClosed : P.extrinsicPathway
  intrinsicPathwayClosed : P.intrinsicPathway
  caspaseCascadeClosed : P.caspaseCascade
  mitochondrialRegulationClosed : P.mitochondrialRegulation

def ApoptosisSignalingClosed (P : ApoptosisSignalingPackage) : Prop :=
  P.extrinsicPathway ∧ P.intrinsicPathway ∧ P.caspaseCascade ∧ P.mitochondrialRegulation

theorem apoptosis_signaling_closed_from_evidence (P : ApoptosisSignalingPackage)
    (E : ApoptosisSignalingEvidence P) : ApoptosisSignalingClosed P := by
  exact And.intro E.extrinsicPathwayClosed
    (And.intro E.intrinsicPathwayClosed
      (And.intro E.caspaseCascadeClosed E.mitochondrialRegulationClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
