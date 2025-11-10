import org.scalatest.matchers.should.Matchers
import org.scalatest.featurespec.AnyFeatureSpec

class AlcoholDutyReturnFullJourneyWithLimitedRegimeApprovalsSpec extends AnyFeatureSpec with Matchers {

  Feature("Alcohol Duty Returns Journey with Limited Regime Approvals") {

    Scenario("1. Alcohol Duty Returns Journey - user with only Beer regime approval") {
      ("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID  Identifier Value XMADP0000178208 on Auth Login Stub Page")
      ("I click submit button on Auth Login Stub Page")
      ("I am presented with the Before You Start Page")
      ("I click continue button on Before You Start Page")
      ("I am presented with the Task List Page")
      ("I click on Tell us if you have alcoholic products to declare hyperlink on Task List Page")
      ("I am presented with the Declare Alcohol Duty Question Page")
      ("I select radio button Yes on Declare Alcohol Duty Question Page")
      ("I click save  continue button on Declare Alcohol Duty Question Page")
      ("I am presented with the What Do You Need To Declare Beer Page")
      ("I select checkbox Beer between 1.3%  3.4% ABV (tax type code 311) on What Do You Need To Declare Beer Page")
      ("I click save  continue button on What Do You Need To Declare Beer Page")
      ("I am presented with the How Much You Need To Declare Beer Page")
      ("I enter 945.55 for Stard beer between 1.3%  3.4% ABV - Total litres on How Much You Need To Declare Beer Page at first input box")
      ("I enter 55.5555 for Stard beer between 1.3%  3.4% ABV - Pure alcohol on How Much You Need To Declare Beer Page at first input box")
      ("I click save  continue button on How Much You Need To Declare Beer Page")
      ("I am presented with the Check Your Answers Returns Beer Page")
      ("I click save  continue button on Check Your Answers Returns Beer Page")
      ("I am presented with the Duty Due Beer Page")
      ("I click save  continue button on Duty Due Beer Page")
      ("I am presented with the Task List Page")
      ("I click on Tell us if you have adjustments to declare hyperlink on Task List Page")
      ("I am presented with the Declare Adjustment Question Page")
      ("I select radio button No on Declare Adjustment Question Page")
      ("I click save  continue button on Declare Adjustment Question Page")
      ("I am presented with the Task List Page")
      ("I click on Tell us if you have delivered or received finished products in duty suspense hyperlink on Task List Page")
      ("I am presented with the Declare Duty Suspended Deliveries Page")
      ("I select radio button Yes on Declare Duty Suspended Deliveries Page")
      ("I click save  continue button on Declare Duty Suspended Deliveries Page")
      ("I am presented with the Duty Suspended Deliveries Guidance Page")
      ("I click continue button on Duty Suspended Deliveries Guidance Page")
      ("I am presented with the Duty Suspended Beer Page")
      ("I enter 2000.75 for Total Beer on Duty Suspended Beer Page")
      ("I enter 150.5500 for Pure Alcohol In Beer on Duty Suspended Beer Page")
      ("I click save  continue button on Duty Suspended Beer Page")
      ("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
      ("I click continue button on Duty Suspended Deliveries Check Your Answers Page")
      ("I am presented with the Task List Page")
      ("I click on Check duty payable  send your return hyperlink on Task List Page")
      ("I am presented with the Return Summary Page")
      ("I click on Agree  send return button Return Summary Page")
      ("I am presented with the Return Submitted Page")
    }
  }
}
