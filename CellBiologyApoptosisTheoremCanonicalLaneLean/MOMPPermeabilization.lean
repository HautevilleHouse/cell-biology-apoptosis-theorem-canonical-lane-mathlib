import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure MOMPPackage where
  mOmPermeabilization : Prop
  cytochomeCRelease : Prop
  smacRelease : Prop
  omiHtra2Release : Prop
  caspaseActivationDownstream : Prop

def MOMPClosed (M : MOMPPackage) : Prop :=
  M.mOmPermeabilization ∧ M.cytochomeCRelease ∧ M.smacRelease ∧ M.omiHtra2Release ∧ M.caspaseActivationDownstream

structure MOMPEvidence (M : MOMPPackage) where
  mOmPermeabilizationClosed : M.mOmPermeabilization
  cytochomeCReleaseClosed : M.cytochomeCRelease
  smacReleaseClosed : M.smacRelease
  omiHtra2ReleaseClosed : M.omiHtra2Release
  caspaseActivationDownstreamClosed : M.caspaseActivationDownstream

theorie mMOMP_closed_from_evidence (M : MOMPPackage) (E : MOMPEvidence M) : MOMPClosed M := by
  exact And.intro E.mOmPermeabilizationClosed
    (And.intro E.cytochomeCReleaseClosed
      (And.intro E.smacReleaseClosed
        (And.intro E.omiHtra2ReleaseClosed E.caspaseActivationDownstreamClosed)))

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse