import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  parseOk : Bool
  deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  line : Nat
  deriving Repr, DecidableEq

structure SourceConstantSpec where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123def456"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  [{ path := "scripts/mitochondrial_params.py", sha256 := "a1b2c3d4", functionCount := 5, classCount := 0, parseOk := true },
   { path := "scripts/caspase_kinetics.py", sha256 := "e5f6g7h8", functionCount := 4, classCount := 0, parseOk := true }]

def sourceFunctions : List SourceFunctionDecl :=
  [{ file := "scripts/mitochondrial_params.py", name := "compute_cytochrome_c_release", args := ["threshold", "stimulus"], returns := "float", line := 12 }]

def sourceConstantSpecs : List SourceConstantSpec :=
  [{ group := "thresholds", key := "cytochrome_c_release_threshold", status := "derived_numeric", formula := "1.0", sourceSection := "paper/apoptosis_model.md", validation := "required_positive" }]

sourceCheckoutHead := sourceCheckoutHead
sourceCheckoutClean := sourceCheckoutClean

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse