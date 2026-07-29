import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ApoptosisRegulation where
  p53Activation : Prop
  bcl2Balance : Prop
  iapInhibition : Prop
  nfkbSignaling : Prop
  stressSignals : Prop
  dnaDamageResponse : Prop

structure ApoptosisRegulationEvidence (R : ApoptosisRegulation) where
  p53ActivationClosed : R.p53Activation
  bcl2BalanceClosed : R.bcl2Balance
  iapInhibitionClosed : R.iapInhibition
  nfkbSignalingClosed : R.nfkbSignaling
  stressSignalsClosed : R.stressSignals
  dnaDamageResponseClosed : R.dnaDamageResponse

def ApoptosisRegulationClosed (R : ApoptosisRegulation) : Prop :=
  R.p53Activation ∧ R.bcl2Balance ∧ R.iapInhibition ∧ R.nfkbSignaling ∧ R.stressSignals ∧ R.dnaDamageResponse

theorem apoptosis_regulation_closed_from_evidence (R : ApoptosisRegulation) (E : ApoptosisRegulationEvidence R) :
    ApoptosisRegulationClosed R := by
  exact And.intro E.p53ActivationClosed (And.intro E.bcl2BalanceClosed (And.intro E.iapInhibitionClosed (And.intro E.nfkbSignalingClosed (And.intro E.stressSignalsClosed E.dnaDamageResponseClosed))))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse