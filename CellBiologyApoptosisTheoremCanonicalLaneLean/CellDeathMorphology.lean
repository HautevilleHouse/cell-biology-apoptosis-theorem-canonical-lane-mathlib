import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure CellDeathMorphology where
  cellShrinkage : Prop
  nuclearCondensation : Prop
  plasmaMembraneBlebbing : Prop
  apoptoticBodyFormation : Prop
  phagocyticClearance : Prop

structure CellDeathMorphologyEvidence (M : CellDeathMorphology) where
  cellShrinkageClosed : M.cellShrinkage
  nuclearCondensationClosed : M.nuclearCondensation
  plasmaMembraneBlebbingClosed : M.plasmaMembraneBlebbing
  apoptoticBodyFormationClosed : M.apoptoticBodyFormation
  phagocyticClearanceClosed : M.phagocyticClearance

def CellDeathMorphologyClosed (M : CellDeathMorphology) : Prop :=
  M.cellShrinkage ∧ M.nuclearCondensation ∧
  M.plasmaMembraneBlebbing ∧ M.apoptoticBodyFormation ∧
  M.phagocyticClearance

theorem cell_death_morphology_closed_from_evidence (M : CellDeathMorphology) (E : CellDeathMorphologyEvidence M) :
    CellDeathMorphologyClosed M := by
  exact And.intro E.cellShrinkageClosed
    (And.intro E.nuclearCondensationClosed
      (And.intro E.plasmaMembraneBlebbingClosed
        (And.intro E.apoptoticBodyFormationClosed E.phagocyticClearanceClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse