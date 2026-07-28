import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure AuslanderReitenQuiver where
  vertices : Type u
  isIndecomposable : vertices → Prop
  arrows : vertices → vertices → Type v
  irreducible : ∀ (v w : vertices), arrows v w → Prop
  almostSplitSequences : ∀ (v w : vertices), arrows v w → Prop

structure AuslanderReitenQuiverEvidence (Q : AuslanderReitenQuiver) where
  arrowsIrr : ∀ (v w : vertices), ∀ (a : Q.arrows v w), Q.irreducible v w a
  arrowsAlmostSplit : ∀ (v w : vertices), ∀ (a : Q.arrows v w), Q.almostSplitSequences v w a
  verticesIndecomposable : ∀ (v : vertices), Q.isIndecomposable v

def AuslanderReitenQuiverClosed (Q : AuslanderReitenQuiver) : Prop :=
  (∀ (v w : vertices), ∀ (a : Q.arrows v w), Q.irreducible v w a) ∧
  (∀ (v w : vertices), ∀ (a : Q.arrows v w), Q.almostSplitSequences v w a) ∧
  (∀ (v : vertices), Q.isIndecomposable v)

theorem auslander_reiten_quiver_closed_from_evidence (Q : AuslanderReitenQuiver) (E : AuslanderReitenQuiverEvidence Q) :
    AuslanderReitenQuiverClosed Q := by
  exact And.intro E.arrowsIrr (And.intro E.arrowsAlmostSplit E.verticesIndecomposable)

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse