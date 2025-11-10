import org.scalatest.matchers.should.Matchers
import org.scalatest.featurespec.AnyFeatureSpec

class EmailJourneySpec extends AnyFeatureSpec with Matchers {

  Feature("Change contact preference from BTA for Alcohol Duty Returns") {

    Scenario("1. Email Contact preference Journey - User on post changes to existing email in system") {
      ("I enter redirect URL on Auth Login Stub Page for Email Contact Preference")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP1000100211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the How Would You Like To Be Contacted Page")
      ("I select radio button Email me  I have a digital message on How Would You Like To Be Contacted Page")
      ("I click continue button on How Would You Like To Be Contacted Page")
      ("I am presented with the ECP Existing Email Page")
      ("I select radio button Yes on ECP Existing Email Page")
      ("I click continue button on ECP Existing Email Page")
      ("I am presented with the ECP Check Your Answers Page")
      ("I click ECPSubmit on ECP Check Your Answers Page")
      ("I am presented with the ECP Confirmation Page")
    }

    Scenario("2. Email Contact preference Journey - User on post stays on post") {
      ("I enter redirect URL on Auth Login Stub Page for Email Contact Preference")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP1000100211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the How Would You Like To Be Contacted Page")
      ("I select radio button Send me letters by post on How Would You Like To Be Contacted Page")
      ("I click continue button on How Would You Like To Be Contacted Page")
      ("I am presented with the ECP Enrolled Letters Page")
    }

    Scenario("3. Email Contact preference Journey - User is on email  Change to Post") {
      ("I enter redirect URL on Auth Login Stub Page for Email Contact Preference")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP5000100211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the How Would You Like To Be Contacted Page")
      ("I select radio button Send me letters by post on How Would You Like To Be Contacted Page")
      ("I click continue button on How Would You Like To Be Contacted Page")
      ("I am presented with the ECP Correspondence Address Page")
      ("I click continue button on ECP Correspondence Address Page")
      ("I am presented with the ECP Check Your Answers Page")
      ("I click ECPSubmit on ECP Check Your Answers Page")
      ("I am presented with the ECP Confirmation Page")
    }

    Scenario("4. Email Contact preference Journey - User already on email  Updating to new email address") {
      ("I enter redirect URL on Auth Login Stub Page for Email Contact Preference")
      ("I enter CredID cred0 on Auth Login Stub Page")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP0000100211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the How Would You Like To Be Contacted Page")
      ("I select radio button Email me  I have a digital message on How Would You Like To Be Contacted Page")
      ("I click continue button on How Would You Like To Be Contacted Page")
      ("I am presented with the ECP Enrolled Email Page")
      ("I click on If this is not the correct address, you can update it hyperlink on ECP Enrolled Email Page")
      ("I am presented with the Enter Email Address Page")
      ("I enter jane.doe2@example.com on Enter Email Address Page")
      ("I click continue button on Enter Email Address Page")
      ("I am presented with the ECP Check Your Answers Page")
      ("I click ECPSubmit on ECP Check Your Answers Page")
      ("I am presented with the ECP Confirmation Page")
    }

    Scenario("5. User on post (with verified email in ETMP), changing to email unsuccessfully (email locked)") {
      ("I enter redirect URL on Auth Login Stub Page for Email Contact Preference")
      ("I enter CredID cred0 on Auth Login Stub Page")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP1002100211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the How Would You Like To Be Contacted Page")
      ("I select radio button Email me  I have a digital message on How Would You Like To Be Contacted Page")
      ("I click continue button on How Would You Like To Be Contacted Page")
      ("I am presented with the ECP Existing Email Page")
      ("I select radio button No, I want to use a different email on ECP Existing Email Page")
      ("I click continue button on ECP Existing Email Page")
      ("I am presented with the Enter Email Address Page")
      ("I enter jane.doe@example.com on Enter Email Address Page")
      ("I click continue button on Enter Email Address Page")
      ("I am presented with the ECP Confirmation Code Limit Page")
    }

    Scenario("6. User on email, updating email (enters same email as existing one)") {
      ("I enter CredID cred0 on Auth Login Stub Page")
      ("I enter redirect URL on Auth Login Stub Page for Email Update")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP0002100211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the ECP Existing Email Page")
      ("I select radio button No, I want to use a different email on ECP Existing Email Page")
      ("I click continue button on ECP Existing Email Page")
      ("I am presented with the Enter Email Address Page")
      ("I enter john.doe@example.com on Enter Email Address Page")
      ("I click continue button on Enter Email Address Page")
      ("I am presented with the ECP Check Your Answers Page")
      ("I click ECPSubmit on ECP Check Your Answers Page")
      ("I am presented with the ECP Confirmation Email Page")
    }

    Scenario("7. Email Contact preference Journey - User on Post  changing to new email address") {
      ("I enter redirect URL on Auth Login Stub Page for Email Contact Preference")
      ("I enter CredID cred0 on Auth Login Stub Page")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP9002100211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the How Would You Like To Be Contacted Page")
      ("I select radio button Email me  I have a digital message on How Would You Like To Be Contacted Page")
      ("I click continue button on How Would You Like To Be Contacted Page")
      ("I am presented with the Enter Email Address Page")
      ("I enter john.doe@example.com on Enter Email Address Page")
      ("I click continue button on Enter Email Address Page")
      ("I am presented with the ECP Check Your Answers Page")
      ("I click ECPSubmit on ECP Check Your Answers Page")
      ("I am presented with the ECP Confirmation Page")
    }

    Scenario("8. Bounced email") {
      ("I enter CredID cred0 on Auth Login Stub Page")
      ("I enter redirect URL on Auth Login Stub Page for Email Bounce")
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP3002100211 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the ECP Email Error Page")
      ("I click continue button on ECP Email Error Page")
      ("I am presented with the Enter Email Address Page")
      ("I enter jane.doe2@example.com on Enter Email Address Page")
      ("I click continue button on Enter Email Address Page")
      ("I am presented with the ECP Check Your Answers Page")
      ("I click ECPSubmit on ECP Check Your Answers Page")
      ("I am presented with the ECP Confirmation Page")
    }
  }
}
