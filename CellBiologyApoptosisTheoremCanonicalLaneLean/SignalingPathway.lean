import CellBiologyApoptosisTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure SignalingPathwayPackage where
  deathReceptorSignaling : Prop
  mitochondrialPathway : Prop
  stressSignaling : Prop
  crossTalk : Prop

structure SignalingPathwayEvidence (P : SignalingPathwayPackage) where
  deathReceptorSignalingClosed : P.deathReceptorSignaling
  mitochondrialPathwayClosed : P.mitochondrialPathway
  stressSignalingClosed : P.stressSignaling
  crossTalkClosed : P.crossTalk

def SignalingPathwayClosed (P : SignalingPathwayPackage) : Prop :=
  P.deathReceptorSignaling ∧ P.mitochondrialPathway ∧
  P.stressSignaling ∧ P.crossTalk

theorem signaling_pathway_closed_from_evidence (P : SignalingPathwayPackage)
    (E : SignalingPathwayEvidence P) : SignalingPathwayClosed P := by
  exact And.intro E.deathReceptorSignalingClosed
    (And.intro E.mitochondrialPathwayClosed
      (And.intro E.stressSignalingClosed E.crossTalkClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse