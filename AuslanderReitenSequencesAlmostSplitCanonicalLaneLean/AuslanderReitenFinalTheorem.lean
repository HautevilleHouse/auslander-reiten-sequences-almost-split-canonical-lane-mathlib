import AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.AuslanderReitenGateLemmas

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

def ConstrainedARClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_AR_endgame (A : AdmissibleClass) :
    ConstrainedARClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse