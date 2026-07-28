import HautevilleHouse.AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def arProjection : Projection AREndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem ar_projection_idempotent (x : AREndgameState) :
    arProjection.toFun (arProjection.toFun x) = arProjection.toFun x := by
  exact arProjection.idempotent x

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse