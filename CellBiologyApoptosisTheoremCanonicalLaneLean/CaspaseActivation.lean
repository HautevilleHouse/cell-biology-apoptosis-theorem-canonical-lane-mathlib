import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure CaspaseActivationPackage where
  initiatorCaspaseCleaved : Prop
  effectorCaspaseActive : Prop
  caspaseCascade : Prop
  executionPathwayEngaged : Prop

structure CaspaseActivationEvidence (C : CaspaseActivationPackage) where
  initiatorCaspaseCleavedClosed : C.initiatorCaspaseCleaved
  effectorCaspaseActiveClosed : C.effectorCaspaseActive
  caspaseCascadeClosed : C.caspaseCascade
  executionPathwayEngagedClosed : C.executionPathwayEngaged

def CaspaseActivationClosed (C : CaspaseActivationPackage) : Prop :=
  C.initiatorCaspaseCleaved ∧ C.effectorCaspaseActive ∧ C.caspaseCascade ∧ C.executionPathwayEngaged

theorem caspase_activation_closed_from_evidence (C : CaspaseActivationPackage) (E : CaspaseActivationEvidence C) :
    CaspaseActivationClosed C := by
  exact And.intro E.initiatorCaspaseCleavedClosed
    (And.intro E.effectorCaspaseActiveClosed
      (And.intro E.caspaseCascadeClosed E.executionPathwayEngagedClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
