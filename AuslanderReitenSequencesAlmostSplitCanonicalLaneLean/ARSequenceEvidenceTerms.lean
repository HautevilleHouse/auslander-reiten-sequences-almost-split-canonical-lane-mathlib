import canonicalLaneMathlib.AdmissibleClass
import AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.AlmostSplitSequences

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure IrreducibleMorphismEvidenceTerms (A : ARAdmittedObject) (Pkg : AlmostSplitSequencePackage A) where
  irreducibleWitness : Pkg.irreducible
  leftAlmostSplitWitness : Pkg.leftAlmostSplit
  rightAlmostSplitWitness : Pkg.rightAlmostSplit
  sequenceClosed : AlmostSplitSequenceClosed Pkg

def AlmostSplitSequencePackage.evidenceTerms (A : ARAdmittedObject) (Pkg : AlmostSplitSequencePackage A) : IrreducibleMorphismEvidenceTerms A Pkg := {
  irreducibleWitness := Pkg.irreducible
  leftAlmostSplitWitness := Pkg.leftAlmostSplit
  rightAlmostSplitWitness := Pkg.rightAlmostSplit
  sequenceClosed := almost_split_sequence_closed_from_evidence Pkg (by
    -- construct the evidence from the package fields
    exact {
      irreducibleClosed := Pkg.irreducible
      leftAlmostSplitClosed := Pkg.leftAlmostSplit
      rightAlmostSplitClosed := Pkg.rightAlmostSplit
      existenceClosed := Pkg.existence
      uniquenessClosed := Pkg.uniqueness
    })
}

structure ARQuiverEvidenceTerms (A : ARAdmittedObject) where
  vertices : Type
  arrows : Type
  almostSplitArrows : List (AlmostSplitSequencePackage A)
  quiverConnected : Prop
  quiverClosed : Prop

def ARQuiverEvidenceTerms.produceClosure (A : ARAdmittedObject) (Q : ARQuiverEvidenceTerms A) : Prop := Q.quiverClosed

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse
