@Test @AllTests @ViewPastReturns
Feature: View Past Returns Journey

  Scenario: 1. ADR Journey - To verify the details on View Past Returns Page when there is 1 Due, multiple Overdue and multiple Completed returns
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Returns Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Returns Page"
    And I should verify the table header displayed
      | Outstanding returns |
      | Completed returns   |
    Then I should verify the outstanding returns details on "View Past Returns Page"
    And I should verify the completed returns details on "View Past Returns Page"

  Scenario: 2. ADR Journey - To verify the View Past Returns Page when there is no outstanding returns or in case of NOT_FOUND error
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Returns Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100206" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Returns Page"
    And I verify the content "No outstanding returns" on "View Past Returns Page"

  Scenario: 3. ADR Journey - To verify the details of a specific return on View Specific Return Page in case of successful return with multiple regimes
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Returns Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0030100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Returns Page"
    And I should verify the table header displayed
      | Outstanding returns |
      | Completed returns   |
    And I should verify the outstanding returns details on "View Past Returns Page"
    And I should verify the completed returns details on "View Past Returns Page"
    When I redirect to a URL with Spirits section on "View Past Returns Page"
    Then The page header is "SpiritsPeriod Alcohol Duty Return"
    And I should verify the table header displayed
      | Alcohol declared                        |
      | Adjustments declared                    |
      | Duty suspended deliveries               |
      | Spirits production in the last 3 months |
#   This verifies the details of alcohol declared section
    And I should verify the details of the table 1 on "View Specific Return Page"
      | Description                                         | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value      |
      | Non-draught beer between 1.3% and 3.4% ABV (311)    | 443,784.4567                 | £1.20                 | £236,159,028.82 |
      | Non-draught cider between 1.3% and 3.4% ABV (312)   | 7,654.2000                   | £9.27                 | £70,954.43      |
      | Non-draught wine between 1.3% and 3.4% ABV (313)    | 300.0532                     | £19.08                | £5,725.02       |
      | Non-draught spirits between 1.3% and 3.4% ABV (315) | 43,456.4584                  | £8.17                 | £355,039.26     |
#  This verifies the details of total declared duty value section
# Added axtra comment to pick up changes in branch
    And the view returns page contains duty "£236,590,747.53"
#  This verifies the details of total adjustments declared section
    And I should verify the details of the table 3 on "View Specific Return Page"
      | Adjustment     | Description                                                                                                        | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value |
      | Under-declared | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)                    | 12.5690                      | £19.08                | £239.82    |
      | Over-declared  | Non-draught beer between 3.5% and 8.4% ABV (321)                                                                   | 34.5625                      | £1.20                 | −£41.48    |
      | Repackaged     | Non-draught wine between 8.5% and 22% ABV (333)                                                                    | 100.0681                     | £2.28                 | £64.05     |
      | Spoilt         | Other fermented products                                                                                           | 1,000.0000                   | not applicable        | −£8,170.00 |
      | Drawback       | Non-draught sparkling cider between 5.6% and 8.4% ABV and other fermented products between 3.5% and 8.4% ABV (324) | 1,000.0000                   | £1.20                 | −£1,200.00 |
      | Drawback       | Non-draught spirits between 3.5% and 8.4% ABV (325)                                                                | 311.5100                     | £2.20                 | −£685.32   |
#  This verifies the details of total adjustments duty value section
    And the view returns page contains duty "−£9,792.93"
#  This verifies the details of total duty value section
    And the view returns page contains duty for adjustment "£236,580,913.12"
#  This verifies the details of duty suspended deliveries section
    And I should verify the details of the table 3 on "View Specific Return Page"
      | Description              | Total volume (litres) | Litres of pure alcohol (LPA) |
      | Beer                     | 43,444,444.96         | 454,655.4248                 |
      | Cider                    | 0.38                  | 43,534.0379                  |
      | Spirits                  | 0.02                  | 0.2492                       |
      | Wine                     | 645,465.48            | 0.5965                       |
      | Other fermented products | 0.02                  | 0.1894                       |
#  This verifies the details of spirits section section
    And I should verify the details of the table 4 on "View Specific Return Page"
      | Description             | Total volume (LPA) |
      | Total volume of spirits | 0.05               |
      | Scotch whisky           | 0.26               |
      | Irish whiskey           | 0.16               |
    And I should verify the details of the table 5 on "View Specific Return Page"
      | Types of spirits produced            |
      | Neutral spirit (agricultural origin) |

  Scenario: 4. ADR Journey - To verify the details of a specific return on View Specific Return Page in case of Nil return
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Returns Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0010100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Returns Page"
    And I should verify the table header displayed
      | Outstanding returns |
      | Completed returns   |
    And I should verify the outstanding returns details on "View Past Returns Page"
    And I should verify the completed returns details on "View Past Returns Page"
    When I redirect to a URL with Spirits section on "View Past Returns Page"
    Then The page header is "SpiritsPeriod Alcohol Duty Return"
    And I should verify the table header displayed
      | Alcohol declared                        |
      | Adjustments declared                    |
      | Total                                   |
      | Duty suspended deliveries               |
      | Spirits production in the last 3 months |
#  This verifies the details of alcohol declared section
    And I should verify the details of the table 1 on "View Specific Return Page"
      | Description         | Duty value |
      | No alcohol declared | Nil        |
#  This verifies the details of total adjustments declared section
    And I should verify the details of the table 2 on "View Specific Return Page"
      | Description             | Duty value |
      | No adjustments declared | Nil        |
#  This verifies the details of total duty value section
    And I should verify the details of the table 3 on "View Specific Return Page"
      | Total duty value | Nil |
#  This verifies the details of duty suspended deliveries section
    And I should verify the details of the table 4 on "View Specific Return Page"
      | Description      |
      | Nothing declared |
#  This verifies the details of duty spirits production section
    And I should verify the details of the table 5 on "View Specific Return Page"
      | Description      |
      | Nothing declared |
