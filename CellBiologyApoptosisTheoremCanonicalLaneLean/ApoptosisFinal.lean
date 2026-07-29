import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyApoptosisTheoremCanonicalLaneLean.DeathReceptorPathway
import HautevilleHouse.CellBiologyApoptosisTheoremCanonicalLaneLean.MitochondrialPathway
import HautevilleHouse.CellBiologyApoptosisTheoremCanonicalLaneLean.ExecutionerCaspaseNetwork

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

def ApoptosisAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem apoptosis_admissible_endgame (A : AdmissibleClass) :
    ApoptosisAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
