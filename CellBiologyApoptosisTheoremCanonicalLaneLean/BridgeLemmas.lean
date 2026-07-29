import canonicalLaneMathlib.AdmissibleClass
import CellBiologyApoptosisTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.deathSignalActivation ∧ A.object.caspaseCascade

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse