import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure AlmostSplitSequence (A : Type u) [Ring A] (modCat : ModuleCategory A) where
  leftTerm : modCat.objects
  rightTerm : modCat.objects
  middleTerm : modCat.objects
  leftMap : modCat.morphisms leftTerm middleTerm
  rightMap : modCat.morphisms middleTerm rightTerm
  isAlmostSplit : Prop
  leftAlmostSplit : Prop
  rightAlmostSplit : Prop
  irreducibleLeft : Prop
  irreducibleRight : Prop

def AlmostSplitSequenceClosed {A : Type u} [Ring A] {modCat : ModuleCategory A} 
    (seq : AlmostSplitSequence A modCat) : Prop :=
  seq.isAlmostSplit ∧ seq.leftAlmostSplit ∧ seq.rightAlmostSplit ∧ 
  seq.irreducibleLeft ∧ seq.irreducibleRight

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse