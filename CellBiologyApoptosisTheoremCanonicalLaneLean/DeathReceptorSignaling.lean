import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

struct DeathReceptorSignalingPackage where
  FasLigandBinding : Prop
  DISCFormation : Prop
  Caspase8Activation : Prop
  BidTruncation : Prop

struct DRSEvidence (D : DeathReceptorSignalingPackage) where
  FasLigandBindingClosed : D.FasLigandBinding
  DISCFormationClosed : D.DISCFormation
  Caspase8ActivationClosed : D.Caspase8Activation
  BidTruncationClosed : D.BidTruncation

def DeathReceptorSignalingClosed (D : DeathReceptorSignalingPackage) : Prop :=
  D.FasLigandBinding ∧ D.DISCFormation ∧ D.Caspase8Activation ∧ D.BidTruncation

theorem death_receptor_signaling_closed_from_evidence (D : DeathReceptorSignalingPackage) (E : DRSEvidence D) :
    DeathReceptorSignalingClosed D := by
  exact And.intro E.FasLigandBindingClosed
    (And.intro E.DISCFormationClosed
      (And.intro E.Caspase8ActivationClosed E.BidTruncationClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
