@Test @AllTests @ViewPastPayments
Feature: View Past Payments Journey

  Scenario: 1. ADR Journey - To verify the status and details of all payments on View Past Payments Page
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Payments Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0002100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Payments Page"
    And I should verify the table header displayed
      | Outstanding payments     |
      | Unallocated payments     |
      | Cleared payments in 2024 |
    Then I verify the due amount displayed as "You owe £3,325.44" on "View Past Payments Page"
    And I should verify the "Outstanding" payment details of the table 1 on "View Past Payments Page"
    And I should verify the "Unallocated" payment details of the table 2 on "View Past Payments Page"
    And I should verify the "Historical" payment details of the table 3 on "View Past Payments Page"

  Scenario: 2. ADR Journey - To verify the View Past Payments Page in case of no outstanding payments
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Payments Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000000211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Payments Page"
    Then I verify the due amount displayed as "You have nothing to pay." on "View Past Payments Page"
