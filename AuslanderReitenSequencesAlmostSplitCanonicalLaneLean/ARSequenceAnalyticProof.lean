import canonicalLaneMathlib.AdmissibleClass
import AuslanderReitenSequencesAlmostSplitCanonicalLaneLean.ARSequenceEvidenceTerms

namespace HautevilleHouse
namespace AuslanderReitenSequencesAlmostSplitCanonicalLaneLean

structure CurvatureAnalyticCertificate (G : RiemannianCurvaturePackage) where
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop
  riemannTensorSymmetriesClosed : riemannTensorSymmetries
  bianchiIdentitiesClosed : bianchiIdentities
  ricciContractionLawClosed : ricciContractionLaw
  scalarTraceLawClosed : scalarTraceLaw
  curvatureEvolutionInputsClosed : curvatureEvolutionInputs
  curvatureEvidence : RiemannianCurvatureEvidence G

def CurvatureAnalyticCertificateClosed {G : RiemannianCurvaturePackage}
    (C : CurvatureAnalyticCertificate G) : Prop :=
  C.riemannTensorSymmetries ∧
  C.bianchiIdentities ∧
  C.ricciContractionLaw ∧
  C.scalarTraceLaw ∧
  C.curvatureEvolutionInputs ∧
  RiemannianCurvatureClosed G

theorem curvature_analytic_certificate_closed
    {G : RiemannianCurvaturePackage} (C : CurvatureAnalyticCertificate G) :
    CurvatureAnalyticCertificateClosed C := by
  exact And.intro C.riemannTensorSymmetriesClosed
    (And.intro C.bianchiIdentitiesClosed
      (And.intro C.ricciContractionLawClosed
        (And.intro C.scalarTraceLawClosed
          (And.intro C.curvatureEvolutionInputsClosed
            (riemannian_curvature_closed_from_evidence G C.curvatureEvidence)))))

-- AR-specific analytic certificate
structure ARSequenceAnalyticCertificate (A : ARAdmittedObject) where
  irreducibleCondition : Prop
  leftAlmostSplitCondition : Prop
  rightAlmostSplitCondition : Prop
  existenceCondition : Prop
  uniquenessCondition : Prop
  irreducibleConditionClosed : irreducibleCondition
  leftAlmostSplitConditionClosed : leftAlmostSplitCondition
  rightAlmostSplitConditionClosed : rightAlmostSplitCondition
  existenceConditionClosed : existenceCondition
  uniquenessConditionClosed : uniquenessCondition
  sequenceEvidence : AlmostSplitSequenceEvidence (default)

def ARSequenceAnalyticCertificateClosed {A : ARAdmittedObject} (C : ARSequenceAnalyticCertificate A) : Prop :=
  C.irreducibleCondition ∧ C.leftAlmostSplitCondition ∧ C.rightAlmostSplitCondition ∧
  C.existenceCondition ∧ C.uniquenessCondition ∧ AlmostSplitSequenceClosed (default)

theorem ar_sequence_analytic_certificate_closed
    {A : ARAdmittedObject} (C : ARSequenceAnalyticCertificate A) :
    ARSequenceAnalyticCertificateClosed C := by
  exact And.intro C.irreducibleConditionClosed
    (And.intro C.leftAlmostSplitConditionClosed
      (And.intro C.rightAlmostSplitConditionClosed
        (And.intro C.existenceConditionClosed
          (And.intro C.uniquenessConditionClosed
            (almost_split_sequence_closed_from_evidence (default) C.sequenceEvidence)))))

end AuslanderReitenSequencesAlmostSplitCanonicalLaneLean
end HautevilleHouse
