import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ApoptosisSignalingPathway where
  initiatorCaspases : Prop
  effectorCaspases : Prop
  mitochondrialOuterMembranePermeabilization : Prop
  deathReceptorSignaling : Prop
  bcl2FamilyRegulation : Prop
  caspaseCascade : Prop

structure ApoptosisSignalingEvidence (P : ApoptosisSignalingPathway) where
  initiatorCaspasesClosed : P.initiatorCaspases
  effectorCaspasesClosed : P.effectorCaspases
  mitochondrialOuterMembranePermeabilizationClosed : P.mitochondrialOuterMembranePermeabilization
  deathReceptorSignalingClosed : P.deathReceptorSignaling
  bcl2FamilyRegulationClosed : P.bcl2FamilyRegulation
  caspaseCascadeClosed : P.caspaseCascade

def ApoptosisSignalingClosed (P : ApoptosisSignalingPathway) : Prop :=
  P.initiatorCaspases ∧ P.effectorCaspases ∧
  P.mitochondrialOuterMembranePermeabilization ∧ P.deathReceptorSignaling ∧
  P.bcl2FamilyRegulation ∧ P.caspaseCascade

theorem apoptosis_signaling_closed_from_evidence (P : ApoptosisSignalingPathway) (E : ApoptosisSignalingEvidence P) :
    ApoptosisSignalingClosed P := by
  exact And.intro E.initiatorCaspasesClosed
    (And.intro E.effectorCaspasesClosed
      (And.intro E.mitochondrialOuterMembranePermeabilizationClosed
        (And.intro E.deathReceptorSignalingClosed
          (And.intro E.bcl2FamilyRegulationClosed E.caspaseCascadeClosed))))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse