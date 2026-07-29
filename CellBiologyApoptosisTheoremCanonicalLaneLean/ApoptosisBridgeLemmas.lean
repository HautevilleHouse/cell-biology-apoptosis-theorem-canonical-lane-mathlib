import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyApoptosisTheoremCanonicalLaneLean.ApoptosisAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

def ApoptosisWitnessClosed (O : ApoptosisAdmittedObject) : Prop :=
  O.apoptosisExecuted

def bridgeClosed (A : ApoptosisAdmissibleClass) : Prop :=
  ApoptosisWitnessClosed A.object

theorem bridge_from_admissible_class (A : ApoptosisAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
