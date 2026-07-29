import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ExtrinsicApoptosisPathway where
  deathReceptorLigation : Prop
  discFormation : Prop
  caspase8Activation : Prop
  bidCleavage : Prop
  crosstalkIntrinsic : Prop
  executionerCaspases : Prop

structure ExtrinsicApoptosisEvidence (E : ExtrinsicApoptosisPathway) where
  deathReceptorLigationClosed : E.deathReceptorLigation
  discFormationClosed : E.discFormation
  caspase8ActivationClosed : E.caspase8Activation
  bidCleavageClosed : E.bidCleavage
  crosstalkIntrinsicClosed : E.crosstalkIntrinsic
  executionerCaspasesClosed : E.executionerCaspases

def ExtrinsicApoptosisClosed (E : ExtrinsicApoptosisPathway) : Prop :=
  E.deathReceptorLigation ∧ E.discFormation ∧
  E.caspase8Activation ∧ E.bidCleavage ∧
  E.crosstalkIntrinsic ∧ E.executionerCaspases

theorem extrinsic_apoptosis_closed_from_evidence (E : ExtrinsicApoptosisPathway) (Ev : ExtrinsicApoptosisEvidence E) :
    ExtrinsicApoptosisClosed E := by
  exact And.intro Ev.deathReceptorLigationClosed
    (And.intro Ev.discFormationClosed
      (And.intro Ev.caspase8ActivationClosed
        (And.intro Ev.bidCleavageClosed
          (And.intro Ev.crosstalkIntrinsicClosed Ev.executionerCaspasesClosed))))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse