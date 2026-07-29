import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ApoptosisAdmittedObject where
  cellPopulationDynamics : Prop
  deathSignalActivation : Prop
  caspaseCascade : Prop
  conclusion : deathSignalActivation ∧ caspaseCascade

structure AdmissibleClass where
  object : ApoptosisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.deathSignalActivation ∧ A.object.caspaseCascade) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse