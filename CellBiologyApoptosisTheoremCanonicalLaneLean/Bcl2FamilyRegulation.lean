import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure Bcl2FamilyRegulation where
  proApoptoticBH123Proteins : Prop
  antiApoptoticBcl2Proteins : Prop
  BH3OnlySensitizers : Prop
  mitochondrialOuterMembranePermeabilizationRegulation : Prop
  heterodimerizationMechanism : Prop

structure Bcl2FamilyRegulationEvidence (B : Bcl2FamilyRegulation) where
  proApoptoticBH123ProteinsClosed : B.proApoptoticBH123Proteins
  antiApoptoticBcl2ProteinsClosed : B.antiApoptoticBcl2Proteins
  BH3OnlySensitizersClosed : B.BH3OnlySensitizers
  mitochondrialOuterMembranePermeabilizationRegulationClosed : B.mitochondrialOuterMembranePermeabilizationRegulation
  heterodimerizationMechanismClosed : B.heterodimerizationMechanism

def Bcl2FamilyRegulationClosed (B : Bcl2FamilyRegulation) : Prop :=
  B.proApoptoticBH123Proteins ∧ B.antiApoptoticBcl2Proteins ∧
  B.BH3OnlySensitizers ∧ B.mitochondrialOuterMembranePermeabilizationRegulation ∧
  B.heterodimerizationMechanism

theorem bcl2_family_regulation_closed_from_evidence (B : Bcl2FamilyRegulation)
    (E : Bcl2FamilyRegulationEvidence B) : Bcl2FamilyRegulationClosed B := by
  exact And.intro E.proApoptoticBH123ProteinsClosed
    (And.intro E.antiApoptoticBcl2ProteinsClosed
      (And.intro E.BH3OnlySensitizersClosed
        (And.intro E.mitochondrialOuterMembranePermeabilizationRegulationClosed E.heterodimerizationMechanismClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse