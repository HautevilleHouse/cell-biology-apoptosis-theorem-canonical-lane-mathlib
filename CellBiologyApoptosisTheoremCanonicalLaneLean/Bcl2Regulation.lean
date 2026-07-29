import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure ProApoptoticBcl2 where
  baxActivation : Prop
  bakActivation : Prop
  bidTruncation : Prop
  poreFormation : Prop

def ProApoptoticBcl2Closed (P : ProApoptoticBcl2) : Prop :=
  P.baxActivation ∧ P.bakActivation ∧ P.bidTruncation ∧ P.poreFormation

structure AntiApoptoticBcl2 where
  bcl2Expression : Prop
  bclXLExpression : Prop
  mcl1Expression : Prop
  sequestration : Prop

def AntiApoptoticBcl2Closed (A : AntiApoptoticBcl2) : Prop :=
  A.bcl2Expression ∧ A.bclXLExpression ∧ A.mcl1Expression ∧ A.sequestration

structure Bcl2RegulationPackage where
  proApoptotic : ProApoptoticBcl2
  antiApoptotic : AntiApoptoticBcl2
  balanceCheckpoint : Prop

def Bcl2RegulationClosed (B : Bcl2RegulationPackage) : Prop :=
  ProApoptoticBcl2Closed B.proApoptotic ∧ AntiApoptoticBcl2Closed B.antiApoptotic ∧ B.balanceCheckpoint

structure Bcl2RegulationEvidence (B : Bcl2RegulationPackage) where
  proApoptoticClosed : ProApoptoticBcl2Closed B.proApoptotic
  antiApoptoticClosed : AntiApoptoticBcl2Closed B.antiApoptotic
  balanceCheckpointClosed : B.balanceCheckpoint

theorem bcl2_regulation_closed_from_evidence (B : Bcl2RegulationPackage) (E : Bcl2RegulationEvidence B) : Bcl2RegulationClosed B := by
  exact And.intro E.proApoptoticClosed (And.intro E.antiApoptoticClosed E.balanceCheckpointClosed)

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse