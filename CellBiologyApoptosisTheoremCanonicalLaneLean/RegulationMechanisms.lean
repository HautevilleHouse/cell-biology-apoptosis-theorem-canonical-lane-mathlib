import CellBiologyApoptosisTheoremCanonicalLaneLean.CaspaseCascade

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure RegulationMechanismsPackage {S : SignalingPathwayPackage}
    {C : CaspaseCascadePackage S} where
  bcl2FamilyRegulation : Prop
  inhibitorOfApoptosisProteins : Prop
  p53Activation : Prop
  survivalSignalsOverride : Prop

structure RegulationMechanismsEvidence {S : SignalingPathwayPackage}
    {C : CaspaseCascadePackage S} (R : RegulationMechanismsPackage S C) where
  bcl2FamilyRegulationClosed : R.bcl2FamilyRegulation
  inhibitorOfApoptosisProteinsClosed : R.inhibitorOfApoptosisProteins
  p53ActivationClosed : R.p53Activation
  survivalSignalsOverrideClosed : R.survivalSignalsOverride

def RegulationMechanismsClosed {S : SignalingPathwayPackage}
    {C : CaspaseCascadePackage S} (R : RegulationMechanismsPackage S C) : Prop :=
  R.bcl2FamilyRegulation ∧ R.inhibitorOfApoptosisProteins ∧
  R.p53Activation ∧ R.survivalSignalsOverride

theorem regulation_mechanisms_closed_from_evidence {S : SignalingPathwayPackage}
    {C : CaspaseCascadePackage S} (R : RegulationMechanismsPackage S C)
    (E : RegulationMechanismsEvidence R) : RegulationMechanismsClosed R := by
  exact And.intro E.bcl2FamilyRegulationClosed
    (And.intro E.inhibitorOfApoptosisProteinsClosed
      (And.intro E.p53ActivationClosed E.survivalSignalsOverrideClosed))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse