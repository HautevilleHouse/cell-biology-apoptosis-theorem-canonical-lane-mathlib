import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure MOMPackage where
  BaxBakOligomerization : Prop
  CytochromeCRelease : Prop
  SmacDiabloRelease : Prop
  MOMPPermeabilization : Prop

structure MOMEevidence (M : MOMPackage) where
  BaxBakOligomerizationClosed : M.BaxBakOligomerization
  CytochromeCReleaseClosed : M.CytochromeCRelease
  SmacDiabloReleaseClosed : M.SmacDiabloRelease
  MOMPPermeabilizationClosed : M.MOMPPermeabilization

def MOMClosed (M : MOMPackage) : Prop :=
  M.BaxBakOligomerization ∧ M.CytochromeCRelease ∧ M.SmacDiabloRelease ∧ M.MOMPPermeabilization

theorem mom_closed_from_evidence (M : MOMPackage) (E : MOMEevidence M) :
    MOMClosed M := by
  exact And.intro E.BaxBakOligomerizationClosed
    (And.intro E.CytochromeCReleaseClosed
      (And.intro E.SmacDiabloReleaseClosed E.MOMPPermeabilizationClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
