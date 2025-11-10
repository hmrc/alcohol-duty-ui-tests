import org.scalatest.matchers.should.Matchers
import org.scalatest.featurespec.AnyFeatureSpec

class ViewPastReturnsPageSpec extends AnyFeatureSpec with Matchers {

  Feature("View Past Returns Journey") {

    Scenario("1. ADR Journey - View Completed Returns from previous years") {
      ("I cleared the data to view completed returns from previous years")
      ("I navigate to the Auth Login Stub Page")
      ("I enter redirect URL on Auth Login Stub Page for View Past Returns Page")
      ("I select Affinity Type as Organisation on Auth Login Stub Page")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP0000100211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the View Past Returns Page")
      ("I click the link to view completed returns from the previous year on View Past Returns Page")
      ("I am presented with the View Completed Returns Page")
      ("I click on the first View return link on View Completed Returns Page")
      ("I am presented with the View Specific Return Page")
      ("I click back button on View Completed Returns Page")
      ("I am presented with the View Completed Returns Page")
      ("I click on Back to current returns hyperlink on View Completed Returns Page")
      ("I am presented with the View Past Returns Page")
    }
  }
}
