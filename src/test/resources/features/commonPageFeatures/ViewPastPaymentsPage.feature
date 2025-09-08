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
    And I should see the below details at "Unallocated" section on "View Past Payments Page" with "FullDate"
      | Payment date  | Description | Amount     | Action       |
      | 1CurrentMonth | Payment     | −£1,000.00 | Claim refund |
      | 1Minus1Months | Payment     | −£500.00   | Claim refund |
    And I should see the below details at "Outstanding" section on "View Past Payments Page" with "FullDate"
      | To be paid by       | Description                     | Left to pay | Status         | Action       |
      | 25Plus1Months       | Payment for Alcohol Duty return | £237.44     | Due            | Pay now      |
      | CurrentDateAndMonth | Late payment interest charge    | £20.56      | Due            | Pay now      |
      | 25Minus2Months      | Payment for Alcohol Duty return | £4,577.44   | Overdue        | Pay now      |
      | 25Minus3Months      | Payment for Alcohol Duty return | £2,577.44   | Overdue        | Pay now      |
      | 25Minus4Months      | Credit for Alcohol Duty return  | −£2,577.44  | Nothing to pay | Claim refund |
      | 1Minus5Months       | Refund payment interest charge  | −£20.56     | Nothing to pay | Claim refund |
      | 1Minus6Months       | Late payment interest charge    | £10.56      | Overdue        | Pay now      |
#      | To be paid by       | Description                     | Left to pay | Status         | Action       |
#      | 25Plus1Months       | Payment for Alcohol Duty return | £237.44     | Due            | Pay nowamount of £237.44 due 25Plus1Months|
#      | CurrentDateAndMonth | Late payment interest charge    | £20.56      | Due            | Pay nowamount of £20.56 due CurrentDateAndMonth|
#      | 25Minus2Months      | Payment for Alcohol Duty return | £4,577.44   | Overdue        | Pay nowamount of £4,577.44 due 25Minus2Months|
#      | 25Minus3Months      | Payment for Alcohol Duty return | £2,577.44   | Overdue        | Pay nowamount of £2,577.44 due 25Minus3Months|
#      | 25Minus4Months      | Credit for Alcohol Duty return  | −£2,577.44  | Nothing to pay | Claim refundof £2577.44|
#      | 1Minus5Months       | Refund payment interest charge  | −£20.56     | Nothing to pay | Claim refundof £20.56|
#      | 1Minus6Months       | Late payment interest charge    | £10.56      | Overdue        | Pay nowamount of £10.56 due 1Minus6Months|
    And I should see the below details at "Historical" section on "View Past Payments Page" with "MonthYear"
      | Return period       | Description                                   | Amount    |
      | CurrentDateAndMonth | Cleared late payment interest charge payments | £20.56    |
      | 1Minus3Months       | Cleared Alcohol Duty payments                 | £4,577.44 |
      | 1Minus4Months       | Cleared Alcohol Duty payments                 | £2,000.00 |
      | 1Minus6Months       | Cleared late payment interest charge payments | £10.00    |

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
#    And I should see the below details at "Historical" section on "View Past Payments Page" with "MonthYear"
#      | Return period       | Description                                   | Amount    |
#      | September 2025      | Cleared Alcohol Duty payments                 | £1,234.44 |
#      | CurrentDateAndMonth | Cleared Alcohol Duty payments                 | £237.44   |
#      | 1Minus1Months       | Cleared late payment interest charge payments | £20.56    |
#      | November 2024       | Cleared Alcohol Duty payments                 | £2,307.44 |
# Only current month will be verified each time as the rest is stubbed data
    And I should see the below details at "Historical" section on "View Past Payments Page" with "MonthYear"
      | Return period       | Description                                   | Amount    |
      | currentMonth      | Cleared Alcohol Duty payments                 | £237.44   |
    When I click on "View 2024 payments" hyperlink on "View Past Payments Page"
    Then I am presented with the "Past Payments Page"

  Scenario: 3. ADR Journey - To verify the View Past Payments Page in case of no outstanding payments or NOT_FOUND error
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Payments Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000500211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Payments Page"
    Then I verify the due amount displayed as "You have nothing to pay." on "View Past Payments Page"
