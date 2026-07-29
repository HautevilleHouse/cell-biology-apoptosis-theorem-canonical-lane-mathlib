import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

struct ApoptoticExecutionPackage where
  chromatinCondensation : Prop
  DNAFragmentation : Prop
  membraneBlebbing : Prop
  apoptoticBodyFormation : Prop

struct ExecutionEvidence (E : ApoptoticExecutionPackage) where
  chromatinCondensationClosed : E.chromatinCondensation
  DNAFragmentationClosed : E.DNAFragmentation
  membraneBlebbingClosed : E.membraneBlebbing
  apoptoticBodyFormationClosed : E.apoptoticBodyFormation

def ApoptoticExecutionClosed (E : ApoptoticExecutionPackage) : Prop :=
  E.chromatinCondensation ∧ E.DNAFragmentation ∧ E.membraneBlebbing ∧ E.apoptoticBodyFormation

theorem execution_closed_from_evidence (E : ApoptoticExecutionPackage) (Ev : ExecutionEvidence E) :
    ApoptoticExecutionClosed E := by
  exact And.intro Ev.chromatinCondensationClosed
    (And.intro Ev.DNAFragmentationClosed
      (And.intro Ev.membraneBlebbingClosed Ev.apoptoticBodyFormationClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
