import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure DeathReceptorPackage where
  receptorActivation : Prop
  adaptorRecruitment : Prop
  initiatorCaspaseCleavage : Prop
  executionerCaspaseActivation : Prop

structure DeathReceptorEvidence (D : DeathReceptorPackage) where
  receptorActivationClosed : D.receptorActivation
  adaptorRecruitmentClosed : D.adaptorRecruitment
  initiatorCaspaseCleavageClosed : D.initiatorCaspaseCleavage
  executionerCaspaseActivationClosed : D.executionerCaspaseActivation

def DeathReceptorClosed (D : DeathReceptorPackage) : Prop :=
  D.receptorActivation ∧ D.adaptorRecruitment ∧ D.initiatorCaspaseCleavage ∧ D.executionerCaspaseActivation

theorem death_receptor_closed_from_evidence (D : DeathReceptorPackage) (E : DeathReceptorEvidence D) :
    DeathReceptorClosed D := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.adaptorRecruitmentClosed
      (And.intro E.initiatorCaspaseCleavageClosed E.executionerCaspaseActivationClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
