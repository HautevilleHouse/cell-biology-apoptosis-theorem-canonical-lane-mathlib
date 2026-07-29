import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure MitochondrialIntrinsicPathway where
  cellularStressSignalIntegration : Prop
  mitochondrialPermeabilityTransitionPore : Prop
  cytochromeCRelease : Prop
  apoptosomeDependentCaspase9Activation : Prop
  executionerCaspaseActivation : Prop

structure MitochondrialIntrinsicPathwayEvidence (M : MitochondrialIntrinsicPathway) where
  cellularStressSignalIntegrationClosed : M.cellularStressSignalIntegration
  mitochondrialPermeabilityTransitionPoreClosed : M.mitochondrialPermeabilityTransitionPore
  cytochromeCReleaseClosed : M.cytochromeCRelease
  apoptosomeDependentCaspase9ActivationClosed : M.apoptosomeDependentCaspase9Activation
  executionerCaspaseActivationClosed : M.executionerCaspaseActivation

def MitochondrialIntrinsicPathwayClosed (M : MitochondrialIntrinsicPathway) : Prop :=
  M.cellularStressSignalIntegration ∧ M.mitochondrialPermeabilityTransitionPore ∧
  M.cytochromeCRelease ∧ M.apoptosomeDependentCaspase9Activation ∧ M.executionerCaspaseActivation

theorem mitochondrial_intrinsic_pathway_closed_from_evidence
    (M : MitochondrialIntrinsicPathway) (E : MitochondrialIntrinsicPathwayEvidence M) :
    MitochondrialIntrinsicPathwayClosed M := by
  exact And.intro E.cellularStressSignalIntegrationClosed
    (And.intro E.mitochondrialPermeabilityTransitionPoreClosed
      (And.intro E.cytochromeCReleaseClosed
        (And.intro E.apoptosomeDependentCaspase9ActivationClosed E.executionerCaspaseActivationClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse