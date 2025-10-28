@Test @AllTests @ViewPastPayments
Feature: View Past Payments Journey

  Scenario: 1. ADR Journey - Verify that past year payments can be accessed under cleared payments section
    Given I clear the data to view Past Payments
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Payments Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0002900211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Payments Page"
    When I click on "View 2024 payments" hyperlink on "View Past Payments Page"
    Then I am presented with the "Past Payments Page"
    When I click on "Back to payments" hyperlink on "Past Payments Page"
    Then I am presented with the "View Past Payments Page"

  Scenario: 2. ADR Central Assessment - Manage central assessment charge and pay central assessment charge
    Given I clear the data to view Past Payments
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Payments Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0002900211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Payments Page"
    When I click on "Manage" link on "View Past Payments Page"
    Then I am presented with the dynamic url "Manage Central Assessment Page"
    When I select radio button "Pay central assessment charge" on "Manage Central Assessment Page"
    And I click continue button on "Manage Central Assessment Page"
    Then I am presented with the dynamic url "Pay Central Assessment Charge Page"
    And I verify the button "Pay now" is displayed on "Pay Central Assessment Charge Page"
