import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisTheoremCanonicalLaneLean

structure SourceImportDependency where
  file : String
  module : String
  name : String
  deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  path : String
  role : String
  deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  [{ file := "scripts/mitochondrial_params.py", module := "numpy", name := "" },
   { file := "scripts/caspase_kinetics.py", module := "scipy", name := "" }]

def sourcePathDependencies : List SourcePathDependency :=
  [{ file := "scripts/mitochondrial_params.py", path := "data/params.json", role := "config" }]

def sourceImportDependencyCount : Nat := sourceImportDependencies.length

theorem source_import_dependency_count_checked : sourceImportDependencyCount = 2 := by rfl

end CellBiologyApoptosisTheoremCanonicalLaneLean
end HautevilleHouse