import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure CellSignalingNetwork where
  receptors : Type u
  ligands : Type v
  signalTransducers : Type w
  receptorActivation : Prop
  signalPropagation : Prop
  signalAmplification : Prop
  signalTermination : Prop

structure CellSignalingNetworkEvidence (N : CellSignalingNetwork) where
  receptorActivationClosed : N.receptorActivation
  signalPropagationClosed : N.signalPropagation
  signalAmplificationClosed : N.signalAmplification
  signalTerminationClosed : N.signalTermination

def CellSignalingNetworkClosed (N : CellSignalingNetwork) : Prop :=
  N.receptorActivation ∧ N.signalPropagation ∧ N.signalAmplification ∧ N.signalTermination

theorem cell_signaling_network_closed_from_evidence (N : CellSignalingNetwork) (E : CellSignalingNetworkEvidence N) :
    CellSignalingNetworkClosed N := by
  exact And.intro E.receptorActivationClosed (And.intro E.signalPropagationClosed (And.intro E.signalAmplificationClosed E.signalTerminationClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse