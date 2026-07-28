import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure AlmostSplitSequence where
  source : Type u
  target : Type v
  middle : Type w
  f : source → middle
  g : middle → target
  exactness : Prop
  nonsplit : Prop
  irreducibility : Prop
  sourceIndecomposable : Prop
  targetIndecomposable : Prop

structure AlmostSplitSequenceEvidence (S : AlmostSplitSequence) where
  exactnessClosed : S.exactness
  nonsplitClosed : S.nonsplit
  irreducibilityClosed : S.irreducibility
  sourceIndecomposableClosed : S.sourceIndecomposable
  targetIndecomposableClosed : S.targetIndecomposable

def AlmostSplitSequenceClosed (S : AlmostSplitSequence) : Prop :=
  S.exactness ∧ S.nonsplit ∧ S.irreducibility ∧ S.sourceIndecomposable ∧ S.targetIndecomposable

theorem almost_split_sequence_closed_from_evidence (S : AlmostSplitSequence) (E : AlmostSplitSequenceEvidence S) :
    AlmostSplitSequenceClosed S := by
  exact And.intro E.exactnessClosed (And.intro E.nonsplitClosed (And.intro E.irreducibilityClosed (And.intro E.sourceIndecomposableClosed E.targetIndecomposableClosed)))

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse