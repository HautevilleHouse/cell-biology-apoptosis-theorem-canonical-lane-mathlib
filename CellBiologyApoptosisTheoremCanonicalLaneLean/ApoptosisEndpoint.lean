import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ApoptosisEndpointPackage where
  cellDeathExecuted : Prop
  apoptoticMorphology : Prop
  dnaFragmentation : Prop
  cellShrinkage : Prop
  endpointReached : cellDeathExecuted ∧ apoptoticMorphology ∧ dnaFragmentation ∧ cellShrinkage

structure ApoptosisEndpointEvidence (E : ApoptosisEndpointPackage) where
  cellDeathExecutedClosed : E.cellDeathExecuted
  apoptoticMorphologyClosed : E.apoptoticMorphology
  dnaFragmentationClosed : E.dnaFragmentation
  cellShrinkageClosed : E.cellShrinkage

def ApoptosisEndpointClosed (E : ApoptosisEndpointPackage) : Prop :=
  E.cellDeathExecuted ∧ E.apoptoticMorphology ∧ E.dnaFragmentation ∧ E.cellShrinkage

theorem apoptosis_endpoint_closed_from_evidence
    (E : ApoptosisEndpointPackage) (Ev : ApoptosisEndpointEvidence E) :
    ApoptosisEndpointClosed E := by
  exact And.intro Ev.cellDeathExecutedClosed
    (And.intro Ev.apoptoticMorphologyClosed
      (And.intro Ev.dnaFragmentationClosed Ev.cellShrinkageClosed))

theorem apoptosis_endpoint_supplies_statement
    (E : ApoptosisEndpointPackage) : E.endpointReached :=
  E.endpointReached

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse