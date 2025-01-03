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
      | Outstanding payments              |
      | Unallocated payments              |
      | Cleared payments in [currentYear] |
    Then I verify the due amount displayed as "You owe £3,325.44" on "View Past Payments Page"
    And I should verify the "Outstanding" payment details of the table 1 on "View Past Payments Page"
    And I should verify the "Unallocated" payment details of the table 2 on "View Past Payments Page"
    And I should verify the "Historical" payment details of the table 3 on "View Past Payments Page"

  Scenario: 2. ADR Journey - Verify that year 2025 data is visible under historical payments section
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Payments Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0002900211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Payments Page"
    And I should verify the table header displayed
      | Outstanding payments              |
      | Unallocated payments              |
      | Cleared payments in [currentYear] |
    Then I verify the due amount displayed as "You owe £43,556.88" on "View Past Payments Page"
#    For the below step, two values under return period are dynamic and the rest of the two values are static
    And I should see the below details at "Historical" section on "View Past Payments Page"
      | Return period  | Description                                   | Amount    |
      | September 2025 | Cleared Alcohol Duty payments                 | £1,234.44 |
      | currentMonth   | Cleared Alcohol Duty payments                 | £237.44   |
      | minus1Months   | Cleared late payment interest charge payments | £20.56    |
      | November 2024  | Cleared Alcohol Duty payments                 | £2,307.44 |

  Scenario: 3. ADR Journey - To verify the View Past Payments Page in case of no outstanding payments or NOT_FOUND error
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Payments Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000500211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Payments Page"
    Then I verify the due amount displayed as "You have nothing to pay." on "View Past Payments Page"
