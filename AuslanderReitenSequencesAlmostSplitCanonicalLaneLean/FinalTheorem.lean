import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.ClosureLemmas
import HautevilleHouse.AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.AlmostSplitSequences
import HautevilleHouse.AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.AuslanderReitenQuiver

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

def ConstrainedAuslanderReitenClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_auslander_reiten_endgame (A : AdmissibleClass) :
    ConstrainedAuslanderReitenClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse