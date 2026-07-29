import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ApoptosisRegulationCheckpoints where
  survivalSignals : Prop
  dnaDamageCheckpoint : Prop
  metabolicCheckpoint : Prop
  immuneSurveillance : Prop
  developmentalCues : Prop

structure ApoptosisRegulationEvidence (R : ApoptosisRegulationCheckpoints) where
  survivalSignalsClosed : R.survivalSignals
  dnaDamageCheckpointClosed : R.dnaDamageCheckpoint
  metabolicCheckpointClosed : R.metabolicCheckpoint
  immuneSurveillanceClosed : R.immuneSurveillance
  developmentalCuesClosed : R.developmentalCues

def ApoptosisRegulationClosed (R : ApoptosisRegulationCheckpoints) : Prop :=
  R.survivalSignals ∧ R.dnaDamageCheckpoint ∧
  R.metabolicCheckpoint ∧ R.immuneSurveillance ∧
  R.developmentalCues

theorem apoptosis_regulation_closed_from_evidence (R : ApoptosisRegulationCheckpoints) (E : ApoptosisRegulationEvidence R) :
    ApoptosisRegulationClosed R := by
  exact And.intro E.survivalSignalsClosed
    (And.intro E.dnaDamageCheckpointClosed
      (And.intro E.metabolicCheckpointClosed
        (And.intro E.immuneSurveillanceClosed E.developmentalCuesClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse