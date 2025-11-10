import org.scalatest.matchers.should.Matchers
import org.scalatest.featurespec.AnyFeatureSpec

class ClaimEnrolmentJourneySpec extends AnyFeatureSpec with Matchers {

  Feature("Claim Enrolment Journey") {

    Scenario("Claim Enrolment Journey - Happy path -  user does not have APPA ID") {
      ("I enter the url for Claim Enrolment journey")
      ("I am presented with the Do You Have Appa Id Page")
      ("I select radio button No on Do You Have Appa Id Page")
      ("I click continue button on Do You Have Appa Id Page")
      ("I am presented with the You Need An Appa Id Page")
      ("I click back button on You Need An Appa Id Page")
      ("I am presented with the Do You Have Appa Id Page")
      ("I select radio button Yes on Do You Have Appa Id Page")
      ("I click continue button on Do You Have Appa Id Page")
    }
  }
}
