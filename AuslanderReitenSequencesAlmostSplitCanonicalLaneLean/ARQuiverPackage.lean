import AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.AlmostSplitSequencePackage

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure ARQuiverPackage where
  quiverComponent : Type u
  vertices : Type v
  arrows : Type w
  translation : Type x
  almostSplitSequences : Prop
  irreducibleMorphisms : Prop
  componentConnected : Prop

structure ARQuiverEvidence (Q : ARQuiverPackage) where
  almostSplitSequencesClosed : Q.almostSplitSequences
  irreducibleMorphismsClosed : Q.irreducibleMorphisms
  componentConnectedClosed : Q.componentConnected

def ARQuiverClosed (Q : ARQuiverPackage) : Prop :=
  Q.almostSplitSequences ∧ Q.irreducibleMorphisms ∧ Q.componentConnected

theorem AR_quiver_closed_from_evidence
    (Q : ARQuiverPackage) (E : ARQuiverEvidence Q) :
    ARQuiverClosed Q := by
  exact And.intro E.almostSplitSequencesClosed
    (And.intro E.irreducibleMorphismsClosed E.componentConnectedClosed)

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse