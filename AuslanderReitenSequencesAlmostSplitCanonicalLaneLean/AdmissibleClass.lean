import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure AuslanderReitenAdmissibleObject where
  indecomposableModule : Type u
  isIndecomposable : Prop
  almostSplitSequence : Prop
  arQuiverVertex : Prop
  conclusion : isIndecomposable ∧ almostSplitSequence ∧ arQuiverVertex

structure AdmissibleClass where
  object : AuslanderReitenAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse