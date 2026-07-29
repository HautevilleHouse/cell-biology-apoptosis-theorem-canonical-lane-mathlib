import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ApoptosisSignalingPathwaysPackage where
  extrinsicPathway : Prop
  intrinsicPathway : Prop
  deathReceptorActivation : Prop
  mitochondrialStress : Prop
  signalIntegration : extrinsicPathway ∨ intrinsicPathway → deathReceptorActivation ∧ mitochondrialStress

structure ApoptosisSignalingPathwaysEvidence (P : ApoptosisSignalingPathwaysPackage) where
  extrinsicPathwayClosed : P.extrinsicPathway
  intrinsicPathwayClosed : P.intrinsicPathway
  deathReceptorActivationClosed : P.deathReceptorActivation
  mitochondrialStressClosed : P.mitochondrialStress
  signalIntegrationClosed : P.signalIntegration

def ApoptosisSignalingPathwaysClosed (P : ApoptosisSignalingPathwaysPackage) : Prop :=
  P.extrinsicPathway ∧ P.intrinsicPathway ∧ P.deathReceptorActivation ∧ P.mitochondrialStress

theorem apoptosis_signaling_pathways_closed_from_evidence
    (P : ApoptosisSignalingPathwaysPackage) (E : ApoptosisSignalingPathwaysEvidence P) :
    ApoptosisSignalingPathwaysClosed P := by
  exact And.intro E.extrinsicPathwayClosed
    (And.intro E.intrinsicPathwayClosed
      (And.intro E.deathReceptorActivationClosed E.mitochondrialStressClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse