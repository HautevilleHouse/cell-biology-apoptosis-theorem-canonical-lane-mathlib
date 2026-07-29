import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure MitochondrialControlPackage where
  bcl2Family : Prop
  mOMP : Prop
  cytochromeCRelease : Prop
  apoptosomeFormation : Prop
  survivalSignals : Prop

structure MitochondrialControlEvidence (M : MitochondrialControlPackage) where
  bcl2FamilyClosed : M.bcl2Family
  mOMPClosed : M.mOMP
  cytochromeCReleaseClosed : M.cytochromeCRelease
  apoptosomeFormationClosed : M.apoptosomeFormation
  survivalSignalsClosed : M.survivalSignals

def MitochondrialControlClosed (M : MitochondrialControlPackage) : Prop :=
  M.bcl2Family ∧ M.mOMP ∧ M.cytochromeCRelease ∧ M.apoptosomeFormation ∧ M.survivalSignals

theorem mitochondrial_control_closed_from_evidence
    (M : MitochondrialControlPackage) (E : MitochondrialControlEvidence M) :
    MitochondrialControlClosed M := by
  exact And.intro E.bcl2FamilyClosed
    (And.intro E.mOMPClosed
      (And.intro E.cytochromeCReleaseClosed
        (And.intro E.apoptosomeFormationClosed E.survivalSignalsClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse