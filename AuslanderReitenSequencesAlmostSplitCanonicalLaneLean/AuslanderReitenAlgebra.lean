import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure ModuleCategory (A : Type u) [Ring A] where
  objects : Type v
  morphisms : objects → objects → Type w
  composition : ∀ {X Y Z : objects}, morphisms Y Z → morphisms X Y → morphisms X Z
  identity : ∀ X : objects, morphisms X X

structure AuslanderReitenAlgebra (A : Type u) [Ring A] where
  modCat : ModuleCategory A
  indecomposables : List (modCat.objects)
  almostSplitSequences : List (Type v)
  arQuiver : Type u
  endomorphismRing : Type u
  irreducibleMorphisms : Prop
  conclusion : Prop

def AuslanderReitenWitnessClosed (O : AuslanderReitenAdmittedObject) : Prop :=
  O.conclusion

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse