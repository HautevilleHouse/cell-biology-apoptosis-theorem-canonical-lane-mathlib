import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure CellDeathSignalingPathway where
  initiatorCaspaseActivation : Prop
  mitochondrialOuterMembranePermeabilization : Prop
  apoptosomeAssembly : Prop
  executionerCaspaseActivation : Prop
  deathSubstrateCleavage : Prop

structure CellDeathSignalingPathwayEvidence (P : CellDeathSignalingPathway) where
  initiatorCaspaseActivationClosed : P.initiatorCaspaseActivation
  mitochondrialOuterMembranePermeabilizationClosed : P.mitochondrialOuterMembranePermeabilization
  apoptosomeAssemblyClosed : P.apoptosomeAssembly
  executionerCaspaseActivationClosed : P.executionerCaspaseActivation
  deathSubstrateCleavageClosed : P.deathSubstrateCleavage

def CellDeathSignalingPathwayClosed (P : CellDeathSignalingPathway) : Prop :=
  P.initiatorCaspaseActivation ∧ P.mitochondrialOuterMembranePermeabilization ∧
  P.apoptosomeAssembly ∧ P.executionerCaspaseActivation ∧ P.deathSubstrateCleavage

theorem cell_death_signaling_pathway_closed_from_evidence (P : CellDeathSignalingPathway)
    (E : CellDeathSignalingPathwayEvidence P) : CellDeathSignalingPathwayClosed P := by
  exact And.intro E.initiatorCaspaseActivationClosed
    (And.intro E.mitochondrialOuterMembranePermeabilizationClosed
      (And.intro E.apoptosomeAssemblyClosed
        (And.intro E.executionerCaspaseActivationClosed E.deathSubstrateCleavageClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse