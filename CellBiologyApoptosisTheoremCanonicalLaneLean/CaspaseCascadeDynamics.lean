import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure CaspaseCascadeDynamics where
  initiatorCaspaseActivation : Prop
  effectorCaspaseActivation : Prop
  positiveFeedbackLoop : Prop
  substrateCleavage : Prop
  signalAmplification : Prop
  irreversibleCommitment : Prop

structure CaspaseCascadeEvidence (C : CaspaseCascadeDynamics) where
  initiatorCaspaseActivationClosed : C.initiatorCaspaseActivation
  effectorCaspaseActivationClosed : C.effectorCaspaseActivation
  positiveFeedbackLoopClosed : C.positiveFeedbackLoop
  substrateCleavageClosed : C.substrateCleavage
  signalAmplificationClosed : C.signalAmplification
  irreversibleCommitmentClosed : C.irreversibleCommitment

def CaspaseCascadeClosed (C : CaspaseCascadeDynamics) : Prop :=
  C.initiatorCaspaseActivation ∧ C.effectorCaspaseActivation ∧
  C.positiveFeedbackLoop ∧ C.substrateCleavage ∧
  C.signalAmplification ∧ C.irreversibleCommitment

theorem caspase_cascade_closed_from_evidence (C : CaspaseCascadeDynamics) (E : CaspaseCascadeEvidence C) :
    CaspaseCascadeClosed C := by
  exact And.intro E.initiatorCaspaseActivationClosed
    (And.intro E.effectorCaspaseActivationClosed
      (And.intro E.positiveFeedbackLoopClosed
        (And.intro E.substrateCleavageClosed
          (And.intro E.signalAmplificationClosed E.irreversibleCommitmentClosed))))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse