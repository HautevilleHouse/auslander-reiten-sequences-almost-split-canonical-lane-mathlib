import HautevilleHouse.AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ARSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ARAdmittedObject where
  space : ARSpace
  almostSplitSequence : AlmostSplitSequence
  quiver : AuslanderReitenQuiver
  closureCondition : Prop
  conclusion : closureCondition

structure AREndgameState where
  object : ARAdmittedObject

def ARWitnessClosed (O : ARAdmittedObject) : Prop :=
  O.closureCondition

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse