import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ApoptosomeFormation where
  cytochromeCInteractionWithApaf1 : Prop
  dATPdNucleotideBinding : Prop
  apoptosomeHeptamerAssembly : Prop
  procaspase9Recruitment : Prop
  caspase9Activation : Prop

structure ApoptosomeFormationEvidence (A : ApoptosomeFormation) where
  cytochromeCInteractionWithApaf1Closed : A.cytochromeCInteractionWithApaf1
  dATPdNucleotideBindingClosed : A.dATPdNucleotideBinding
  apoptosomeHeptamerAssemblyClosed : A.apoptosomeHeptamerAssembly
  procaspase9RecruitmentClosed : A.procaspase9Recruitment
  caspase9ActivationClosed : A.caspase9Activation

def ApoptosomeFormationClosed (A : ApoptosomeFormation) : Prop :=
  A.cytochromeCInteractionWithApaf1 ∧ A.dATPdNucleotideBinding ∧
  A.apoptosomeHeptamerAssembly ∧ A.procaspase9Recruitment ∧ A.caspase9Activation

theorem apoptosome_formation_closed_from_evidence (A : ApoptosomeFormation)
    (E : ApoptosomeFormationEvidence A) : ApoptosomeFormationClosed A := by
  exact And.intro E.cytochromeCInteractionWithApaf1Closed
    (And.intro E.dATPdNucleotideBindingClosed
      (And.intro E.apoptosomeHeptamerAssemblyClosed
        (And.intro E.procaspase9RecruitmentClosed E.caspase9ActivationClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse