import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure CaspaseCascadeActivation where
  initiatorCaspaseRecruitment : Prop
  procaspaseCleavageActivation : Prop
  executionerCaspaseSubstrateSpecificity : Prop
  positiveFeedbackLoop : Prop
  deathSubstrateProteolysis : Prop

structure CaspaseCascadeActivationEvidence (C : CaspaseCascadeActivation) where
  initiatorCaspaseRecruitmentClosed : C.initiatorCaspaseRecruitment
  procaspaseCleavageActivationClosed : C.procaspaseCleavageActivation
  executionerCaspaseSubstrateSpecificityClosed : C.executionerCaspaseSubstrateSpecificity
  positiveFeedbackLoopClosed : C.positiveFeedbackLoop
  deathSubstrateProteolysisClosed : C.deathSubstrateProteolysis

def CaspaseCascadeActivationClosed (C : CaspaseCascadeActivation) : Prop :=
  C.initiatorCaspaseRecruitment ∧ C.procaspaseCleavageActivation ∧
  C.executionerCaspaseSubstrateSpecificity ∧ C.positiveFeedbackLoop ∧ C.deathSubstrateProteolysis

theorem caspase_cascade_activation_closed_from_evidence (C : CaspaseCascadeActivation)
    (E : CaspaseCascadeActivationEvidence C) : CaspaseCascadeActivationClosed C := by
  exact And.intro E.initiatorCaspaseRecruitmentClosed
    (And.intro E.procaspaseCleavageActivationClosed
      (And.intro E.executionerCaspaseSubstrateSpecificityClosed
        (And.intro E.positiveFeedbackLoopClosed E.deathSubstrateProteolysisClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse