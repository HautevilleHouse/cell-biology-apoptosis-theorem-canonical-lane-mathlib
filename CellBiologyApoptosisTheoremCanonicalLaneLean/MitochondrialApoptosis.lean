import CellBiologyApoptosisTheoremCanonicalLaneLean.ApoptosisSignalingPathway

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure MitochondrialApoptosisPackage {A : AdmittedObject} (P : SignalingPathwayPackage A) where
  moMPOccurred : Prop
  cytochromeCReleased : Prop
  apoptosomeFormed : Prop
  executionerCaspaseActivated : Prop

structure MitochondrialApoptosisEvidence {A : AdmittedObject} {P : SignalingPathwayPackage A} (M : MitochondrialApoptosisPackage P) where
  moMPOccurredClosed : M.moMPOccurred
  cytochromeCReleasedClosed : M.cytochromeCReleased
  apoptosomeFormedClosed : M.apoptosomeFormed
  executionerCaspaseActivatedClosed : M.executionerCaspaseActivated

def MitochondrialApoptosisClosed {A : AdmittedObject} {P : SignalingPathwayPackage A} (M : MitochondrialApoptosisPackage P) : Prop :=
  M.moMPOccurred ∧ M.cytochromeCReleased ∧ M.apoptosomeFormed ∧ M.executionerCaspaseActivated

theorem mitochondrial_apoptosis_closed_from_evidence {A : AdmittedObject} {P : SignalingPathwayPackage A} (M : MitochondrialApoptosisPackage P) (E : MitochondrialApoptosisEvidence M) : MitochondrialApoptosisClosed M := by
  exact And.intro E.moMPOccurredClosed (And.intro E.cytochromeCReleasedClosed (And.intro E.apoptosomeFormedClosed E.executionerCaspaseActivatedClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse