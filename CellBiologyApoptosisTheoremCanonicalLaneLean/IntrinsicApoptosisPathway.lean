import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure IntrinsicApoptosisPathway where
  cellularStressSignals : Prop
  mitochondrialMembranePotentialLoss : Prop
  apaf1Oligomerization : Prop
  apoptosomeFormation : Prop
  caspase9Activation : Prop
  downstreamEffectorCaspases : Prop

structure IntrinsicApoptosisEvidence (I : IntrinsicApoptosisPathway) where
  cellularStressSignalsClosed : I.cellularStressSignals
  mitochondrialMembranePotentialLossClosed : I.mitochondrialMembranePotentialLoss
  apaf1OligomerizationClosed : I.apaf1Oligomerization
  apoptosomeFormationClosed : I.apoptosomeFormation
  caspase9ActivationClosed : I.caspase9Activation
  downstreamEffectorCaspasesClosed : I.downstreamEffectorCaspases

def IntrinsicApoptosisClosed (I : IntrinsicApoptosisPathway) : Prop :=
  I.cellularStressSignals ∧ I.mitochondrialMembranePotentialLoss ∧
  I.apaf1Oligomerization ∧ I.apoptosomeFormation ∧
  I.caspase9Activation ∧ I.downstreamEffectorCaspases

theorem intrinsic_apoptosis_closed_from_evidence (I : IntrinsicApoptosisPathway) (E : IntrinsicApoptosisEvidence I) :
    IntrinsicApoptosisClosed I := by
  exact And.intro E.cellularStressSignalsClosed
    (And.intro E.mitochondrialMembranePotentialLossClosed
      (And.intro E.apaf1OligomerizationClosed
        (And.intro E.apoptosomeFormationClosed
          (And.intro E.caspase9ActivationClosed E.downstreamEffectorCaspasesClosed))))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse