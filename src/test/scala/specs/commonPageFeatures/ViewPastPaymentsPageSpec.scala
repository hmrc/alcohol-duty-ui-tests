import org.scalatest.matchers.should.Matchers
import org.scalatest.featurespec.AnyFeatureSpec

class ViewPastPaymentsPageSpec extends AnyFeatureSpec with Matchers {

  Feature("View Past Payments Journey") {

    Scenario("1. ADR Journey - Verify that past year payments can be accessed under cleared payments section") {
      ("I clear the data to view Past Payments")
      ("I navigate to the Auth Login Stub Page")
      ("I enter redirect URL on Auth Login Stub Page for View Past Payments Page")
      ("I select Affinity Type as Organisation on Auth Login Stub Page")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP0002900211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the View Past Payments Page")
      ("I click on View 2024 payments hyperlink on View Past Payments Page")
      ("I am presented with the Past Payments Page")
      ("I click on Back to payments hyperlink on Past Payments Page")
      ("I am presented with the View Past Payments Page")
    }

    Scenario("2. ADR Central Assessment - Manage central assessment charge  pay central assessment charge") {
      ("I clear the data to view Past Payments")
      ("I navigate to the Auth Login Stub Page")
      ("I enter redirect URL on Auth Login Stub Page for View Past Payments Page")
      ("I select Affinity Type as Organisation on Auth Login Stub Page")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP0002900211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the View Past Payments Page")
      ("I click on Manage link on View Past Payments Page")
      ("I am presented with the Manage Central Assessment Page")
      ("I select radio button Pay central assessment charge on Manage Central Assessment Page")
      ("I click continue button on Manage Central Assessment Page")
      ("I am presented with the Pay Central Assessment Charge Page")
    }
  }
}
