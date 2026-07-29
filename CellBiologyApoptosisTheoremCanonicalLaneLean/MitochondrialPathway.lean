import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure MitochondrialPackage where
  cytochromeCRelease : Prop
  apoptosomeFormation : Prop
  initiatorCaspase9Cleavage : Prop
  executionerCaspaseActivation : Prop

structure MitochondrialEvidence (M : MitochondrialPackage) where
  cytochromeCReleaseClosed : M.cytochromeCRelease
  apoptosomeFormationClosed : M.apoptosomeFormation
  initiatorCaspase9CleavageClosed : M.initiatorCaspase9Cleavage
  executionerCaspaseActivationClosed : M.executionerCaspaseActivation

def MitochondrialClosed (M : MitochondrialPackage) : Prop :=
  M.cytochromeCRelease ∧ M.apoptosomeFormation ∧ M.initiatorCaspase9Cleavage ∧ M.executionerCaspaseActivation

theorem mitochondrial_closed_from_evidence (M : MitochondrialPackage) (E : MitochondrialEvidence M) :
    MitochondrialClosed M := by
  exact And.intro E.cytochromeCReleaseClosed
    (And.intro E.apoptosomeFormationClosed
      (And.intro E.initiatorCaspase9CleavageClosed E.executionerCaspaseActivationClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
