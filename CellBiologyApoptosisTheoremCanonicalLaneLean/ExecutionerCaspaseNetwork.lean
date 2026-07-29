import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ExecutionerCaspasePackage where
  procaspaseCleavage : Prop
  activeCaspaseDimer : Prop
  substrateProteolysis : Prop
  cellDisassembly : Prop

structure ExecutionerCaspaseEvidence (E : ExecutionerCaspasePackage) where
  procaspaseCleavageClosed : E.procaspaseCleavage
  activeCaspaseDimerClosed : E.activeCaspaseDimer
  substrateProteolysisClosed : E.substrateProteolysis
  cellDisassemblyClosed : E.cellDisassembly

def ExecutionerCaspaseClosed (E : ExecutionerCaspasePackage) : Prop :=
  E.procaspaseCleavage ∧ E.activeCaspaseDimer ∧ E.substrateProteolysis ∧ E.cellDisassembly

theorem executioner_caspase_closed_from_evidence (E : ExecutionerCaspasePackage) (Ev : ExecutionerCaspaseEvidence E) :
    ExecutionerCaspaseClosed E := by
  exact And.intro Ev.procaspaseCleavageClosed
    (And.intro Ev.activeCaspaseDimerClosed
      (And.intro Ev.substrateProteolysisClosed Ev.cellDisassemblyClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
