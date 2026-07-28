import AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.AuslanderReitenAdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure AlmostSplitSequencePackage where
  sourceIndecomposable : Prop
  targetIndecomposable : Prop
  leftAlmostSplit : Prop
  rightAlmostSplit : Prop
  exactSequence : Prop
  irreducible : Prop

structure AlmostSplitSequenceEvidence (P : AlmostSplitSequencePackage) where
  sourceIndecomposableClosed : P.sourceIndecomposable
  targetIndecomposableClosed : P.targetIndecomposable
  leftAlmostSplitClosed : P.leftAlmostSplit
  rightAlmostSplitClosed : P.rightAlmostSplit
  exactSequenceClosed : P.exactSequence
  irreducibleClosed : P.irreducible

def AlmostSplitSequenceClosed (P : AlmostSplitSequencePackage) : Prop :=
  P.sourceIndecomposable ∧ P.targetIndecomposable ∧ P.leftAlmostSplit ∧
  P.rightAlmostSplit ∧ P.exactSequence ∧ P.irreducible

theorem almost_split_sequence_closed_from_evidence
    (P : AlmostSplitSequencePackage) (E : AlmostSplitSequenceEvidence P) :
    AlmostSplitSequenceClosed P := by
  exact And.intro E.sourceIndecomposableClosed
    (And.intro E.targetIndecomposableClosed
      (And.intro E.leftAlmostSplitClosed
        (And.intro E.rightAlmostSplitClosed
          (And.intro E.exactSequenceClosed E.irreducibleClosed))))

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse