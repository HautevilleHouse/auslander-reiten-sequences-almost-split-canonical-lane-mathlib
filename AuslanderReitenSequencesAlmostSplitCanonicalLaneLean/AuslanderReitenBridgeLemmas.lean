import AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.AuslanderReitenAdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ARQuiverClosed A.object.quiverComponent

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.quiverComponent.conclusion

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse