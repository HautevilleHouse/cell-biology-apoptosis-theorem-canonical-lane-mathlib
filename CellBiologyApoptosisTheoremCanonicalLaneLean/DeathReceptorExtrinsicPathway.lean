import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure DeathReceptorExtrinsicPathway where
  deathReceptorLigandBinding : Prop
  deathInducingSignalingComplexAssembly : Prop
  caspase8Activation : Prop
  bidTruncation : Prop
  mitochondrialPathwayCrossTalk : Prop

structure DeathReceptorExtrinsicPathwayEvidence (D : DeathReceptorExtrinsicPathway) where
  deathReceptorLigandBindingClosed : D.deathReceptorLigandBinding
  deathInducingSignalingComplexAssemblyClosed : D.deathInducingSignalingComplexAssembly
  caspase8ActivationClosed : D.caspase8Activation
  bidTruncationClosed : D.bidTruncation
  mitochondrialPathwayCrossTalkClosed : D.mitochondrialPathwayCrossTalk

def DeathReceptorExtrinsicPathwayClosed (D : DeathReceptorExtrinsicPathway) : Prop :=
  D.deathReceptorLigandBinding ∧ D.deathInducingSignalingComplexAssembly ∧
  D.caspase8Activation ∧ D.bidTruncation ∧ D.mitochondrialPathwayCrossTalk

theorem death_receptor_extrinsic_pathway_closed_from_evidence
    (D : DeathReceptorExtrinsicPathway) (E : DeathReceptorExtrinsicPathwayEvidence D) :
    DeathReceptorExtrinsicPathwayClosed D := by
  exact And.intro E.deathReceptorLigandBindingClosed
    (And.intro E.deathInducingSignalingComplexAssemblyClosed
      (And.intro E.caspase8ActivationClosed
        (And.intro E.bidTruncationClosed E.mitochondrialPathwayCrossTalkClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse