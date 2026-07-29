import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyApoptosisTheoremCanonicalLaneLean.ApoptosisBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

def gateClosed (A : ApoptosisAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ApoptosisAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
