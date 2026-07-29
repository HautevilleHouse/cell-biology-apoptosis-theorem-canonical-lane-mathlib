import CellBiologyApoptosisTheoremCanonicalLaneLean.RegulationMechanisms

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure CellDeathExecutionPackage {S : SignalingPathwayPackage}
    {C : CaspaseCascadePackage S} {R : RegulationMechanismsPackage S C} where
  cellShrinkage : Prop
  dnaFragmentation : Prop
  membraneBlebbing : Prop
  apoptoticBodyFormation : Prop

structure CellDeathExecutionEvidence {S : SignalingPathwayPackage}
    {C : CaspaseCascadePackage S} {R : RegulationMechanismsPackage S C}
    (D : CellDeathExecutionPackage S C R) where
  cellShrinkageClosed : D.cellShrinkage
  dnaFragmentationClosed : D.dnaFragmentation
  membraneBlebbingClosed : D.membraneBlebbing
  apoptoticBodyFormationClosed : D.apoptoticBodyFormation

def CellDeathExecutionClosed {S : SignalingPathwayPackage}
    {C : CaspaseCascadePackage S} {R : RegulationMechanismsPackage S C}
    (D : CellDeathExecutionPackage S C R) : Prop :=
  D.cellShrinkage ∧ D.dnaFragmentation ∧
  D.membraneBlebbing ∧ D.apoptoticBodyFormation

theorem cell_death_execution_closed_from_evidence {S : SignalingPathwayPackage}
    {C : CaspaseCascadePackage S} {R : RegulationMechanismsPackage S C}
    (D : CellDeathExecutionPackage S C R) (E : CellDeathExecutionEvidence D) :
    CellDeathExecutionClosed D := by
  exact And.intro E.cellShrinkageClosed
    (And.intro E.dnaFragmentationClosed
      (And.intro E.membraneBlebbingClosed E.apoptoticBodyFormationClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse