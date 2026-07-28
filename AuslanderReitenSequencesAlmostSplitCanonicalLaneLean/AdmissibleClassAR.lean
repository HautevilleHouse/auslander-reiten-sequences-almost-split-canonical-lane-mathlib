import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure AuslanderReitenAdmittedObject where
  algebra : Type u
  moduleCategory : Type v
  indecomposableModules : List (moduleCategory)
  almostSplitSequences : List (Type w)
  arQuiver : Type x
  conclusion : Prop

structure AdmissibleClass where
  object : AuslanderReitenAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AuslanderReitenWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse