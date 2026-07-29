import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure IAPAntagonismPathway where
  inhibitorOfApoptosisProteinExpression : Prop
  smacDiabloReleaseFromMitochondria : Prop
  iapCaspaseInteraction : Prop
  caspaseActivityDerepression : Prop
  apoptosisCommitment : Prop

structure IAPAntagonismPathwayEvidence (I : IAPAntagonismPathway) where
  inhibitorOfApoptosisProteinExpressionClosed : I.inhibitorOfApoptosisProteinExpression
  smacDiabloReleaseFromMitochondriaClosed : I.smacDiabloReleaseFromMitochondria
  iapCaspaseInteractionClosed : I.iapCaspaseInteraction
  caspaseActivityDerepressionClosed : I.caspaseActivityDerepression
  apoptosisCommitmentClosed : I.apoptosisCommitment

def IAPAntagonismPathwayClosed (I : IAPAntagonismPathway) : Prop :=
  I.inhibitorOfApoptosisProteinExpression ∧ I.smacDiabloReleaseFromMitochondria ∧
  I.iapCaspaseInteraction ∧ I.caspaseActivityDerepression ∧ I.apoptosisCommitment

theorem iap_antagonism_pathway_closed_from_evidence (I : IAPAntagonismPathway)
    (E : IAPAntagonismPathwayEvidence I) : IAPAntagonismPathwayClosed I := by
  exact And.intro E.inhibitorOfApoptosisProteinExpressionClosed
    (And.intro E.smacDiabloReleaseFromMitochondriaClosed
      (And.intro E.iapCaspaseInteractionClosed
        (And.intro E.caspaseActivityDerepressionClosed E.apoptosisCommitmentClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse