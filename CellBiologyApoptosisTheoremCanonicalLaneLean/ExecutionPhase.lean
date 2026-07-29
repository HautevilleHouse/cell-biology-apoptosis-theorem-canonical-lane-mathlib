import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ExecutionPhase where
  nuclearFragmentation : Prop
  cellShrinkage : Prop
  membraneBlebbing : Prop
  apoptoticBodyFormation : Prop
  phosphatidylserineExternalization : Prop
  dnaseActivation : Prop

structure ExecutionPhaseEvidence (E : ExecutionPhase) where
  nuclearFragmentationClosed : E.nuclearFragmentation
  cellShrinkageClosed : E.cellShrinkage
  membraneBlebbingClosed : E.membraneBlebbing
  apoptoticBodyFormationClosed : E.apoptoticBodyFormation
  phosphatidylserineExternalizationClosed : E.phosphatidylserineExternalization
  dnaseActivationClosed : E.dnaseActivation

def ExecutionPhaseClosed (E : ExecutionPhase) : Prop :=
  E.nuclearFragmentation ∧ E.cellShrinkage ∧ E.membraneBlebbing ∧
  E.apoptoticBodyFormation ∧ E.phosphatidylserineExternalization ∧ E.dnaseActivation

theorem execution_phase_closed_from_evidence (E : ExecutionPhase) (Ev : ExecutionPhaseEvidence E) :
    ExecutionPhaseClosed E := by
  exact And.intro Ev.nuclearFragmentationClosed (And.intro Ev.cellShrinkageClosed (And.intro Ev.membraneBlebbingClosed (And.intro Ev.apoptoticBodyFormationClosed (And.intro Ev.phosphatidylserineExternalizationClosed Ev.dnaseActivationClosed))))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse