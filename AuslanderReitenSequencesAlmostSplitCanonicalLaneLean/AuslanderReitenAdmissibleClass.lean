import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure AuslanderReitenAdmittedObject where
  quiverComponent : Type u
  almostSplitSequence : Prop
  indecomposableSource : Bool
  indecomposableTarget : Bool
  exactSequence : Prop
  minimalLeftAlmostSplit : Prop

structure AdmissibleClass where
  object : AuslanderReitenAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ARQuiverClosed A.object.quiverComponent ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse