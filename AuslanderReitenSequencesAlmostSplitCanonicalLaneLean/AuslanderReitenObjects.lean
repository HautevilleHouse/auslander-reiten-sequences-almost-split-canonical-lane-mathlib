import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure ARModuleCategory (A : ArtinAlgebra) where
  objects : Type
  morphisms : Type
  composition : Type
  identities : Type
  abelian : Prop

structure AlmostSplitSequence (A : ArtinAlgebra) (M : ARModuleCategory A) where
  source : M.objects
  target : M.objects
  irreducible : Prop
  leftAlmostSplit : Prop
  rightAlmostSplit : Prop

structure ARAdmittedObject where
  algebra : ArtinAlgebra
  moduleCat : ARModuleCategory algebra
  almostSplitExists : Prop
  conclusion : almostSplitExists

structure ArrowAdmittedObject where
  object : ARAdmittedObject
  arrow : AlmostSplitSequence object.algebra object.moduleCat
  irreducibleWitness : arrow.irreducible

def ARWitnessClosed (O : ARAdmittedObject) : Prop :=
  O.almostSplitExists

def ARArrowWitnessClosed (A : ArrowAdmittedObject) : Prop :=
  A.irreducibleWitness

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse
