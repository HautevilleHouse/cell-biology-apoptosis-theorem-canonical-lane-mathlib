import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure SignalPathwayPackage (A : ApoptosisAdmissibleClass) where
  ligandReceptorBinding : Prop
  adaptorProteinRecruitment : Prop
  initiatorCaspaseActivation : Prop
  signalAmplification : Prop

structure SignalPathwayEvidence {A : ApoptosisAdmissibleClass} (P : SignalPathwayPackage A) where
  ligandReceptorBindingClosed : P.ligandReceptorBinding
  adaptorProteinRecruitmentClosed : P.adaptorProteinRecruitment
  initiatorCaspaseActivationClosed : P.initiatorCaspaseActivation
  signalAmplificationClosed : P.signalAmplification

def SignalPathwayClosed {A : ApoptosisAdmissibleClass} (P : SignalPathwayPackage A) : Prop :=
  P.ligandReceptorBinding ∧ P.adaptorProteinRecruitment ∧
  P.initiatorCaspaseActivation ∧ P.signalAmplification

theorem signal_pathway_closed_from_evidence {A : ApoptosisAdmissibleClass}
    (P : SignalPathwayPackage A) (E : SignalPathwayEvidence P) : SignalPathwayClosed P :=
  And.intro E.ligandReceptorBindingClosed
    (And.intro E.adaptorProteinRecruitmentClosed
      (And.intro E.initiatorCaspaseActivationClosed E.signalAmplificationClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
