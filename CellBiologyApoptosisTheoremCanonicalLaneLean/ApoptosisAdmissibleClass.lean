import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ApoptosisAdmittedObject where
  cellType : Type
  stimulusSignal : Prop
  deathReceptorActivated : Prop
  caspaseCascadeActive : Prop
  apoptosisExecuted : Prop
  conclusion : apoptosisExecuted

structure ApoptosisAdmissibleClass where
  object : ApoptosisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ApoptosisAdmissibleClass) : Prop :=
  ApoptosisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse
