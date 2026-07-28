import AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.AlmostSplitSequences

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure ARQuiverVertex where
  moduleType : Type u
  indecomposable : Prop

structure ARQuiverArrow (V W : ARQuiverVertex) where
  irreducibleMorphism : V.moduleType → W.moduleType
  isIrreducible : Prop

structure ARQuiverPackage where
  vertices : Set ARQuiverVertex
  arrows : ∀ (V W : ARQuiverVertex), V ∈ vertices → W ∈ vertices → Set (ARQuiverArrow V W)
  compositionDecomposition : Prop

def ARQuiverClosed (Q : ARQuiverPackage) : Prop :=
  Q.compositionDecomposition

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse