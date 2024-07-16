@Test @ViewPastReturnsPage
Feature: View Past Returns Journey

  Scenario: 1. ADR Journey - To verify the details on View Past Returns Page when there is 1 Due, multiple Overdue and multiple Completed returns
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    And I enter redirect url for "View Past Returns Page"
    Then I am presented with the "View Past Returns Page"
    And I should verify the table header displayed
      | Outstanding returns |
      | Completed returns   |
    Then I should verify the outstanding returns details on "View Past Returns Page"
    And I should verify the completed returns details on "View Past Returns Page"

  Scenario: 2. ADR Journey - To verify the details of a specific return on View Specific Return Page in case of successful return with multiple regimes
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0030100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    And I enter redirect url for "View Past Returns Page"
    Then I am presented with the "View Past Returns Page"
    And I should verify the table header displayed
      | Outstanding returns |
      | Completed returns   |
    And I should verify the outstanding returns details on "View Past Returns Page"
    And I should verify the completed returns details on "View Past Returns Page"
    When I click on View Return link for one of the completed returns on "View Past Returns Page"
    Then I am presented with the "View Specific Return Page"
    And I should verify the text for the return date on "View Specific Return Page"
    And I should verify the table header displayed
      | Alcohol declared     |
      | Adjustments declared |
      | Total                |
#   This verifies the details of alcohol declared section
    And I should verify the details of the table 1 on "View Specific Return Page"
      | Description | Litres of pure alcohol (Lpa) | Duty rate (per litre) | Duty value  |
      | 301         | 443.45 l                     | £1.20 per litre       | £532.14     |
      | 312         | 7,654.20 l                   | £9.27 per litre       | £70,954.43  |
      | 313         | 300.00 l                     | £19.08 per litre      | £5,724.00   |
      | 315         | 43,456.45 l                  | £8.17 per litre       | £355,039.19 |
#  This verifies the details of total declared duty value section
    And I should verify the details of the table 2 on "View Specific Return Page"
      | Total declared duty value | £432,249.76 |
#  This verifies the details of total adjustments declared section
    And I should verify the details of the table 3 on "View Specific Return Page"
      | Adjustment     | Description | Litres of pure alcohol (Lpa) | Duty rate (per litre) | Duty value |
      | Under-declared | 313         | 12.56 l                      | £19.08 per litre      | £239.65    |
      | Over-declared  | 301         | 34.56 l                      | £1.20 per litre       | −£41.48    |
      | Repackaged     | 302         | 100.07 l                     | £2.28 per litre       | £64.05     |
      | Spoilt         | 315         | 1,000.00 l                   | £8.17 per litre       | −£8,170.00 |
      | Drawback       | 300         | 311.51 l                     | £2.20 per litre       | −£685.32   |
      | Drawback       | 301         | 1,000.00 l                   | £1.20 per litre       | −£1,200.00 |
#  This verifies the details of total adjustments duty value section
    And I should verify the details of the table 4 on "View Specific Return Page"
      | Total adjustments duty value | −£9,793.10 |
#  This verifies the details of total duty value section
    And I should verify the details of the table 5 on "View Specific Return Page"
      | Total duty value | £422,456.66 |

  Scenario: 2. ADR Journey - To verify the details of a specific return on View Specific Return Page in case of Nil return
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0010100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    And I enter redirect url for "View Past Returns Page"
    Then I am presented with the "View Past Returns Page"
    And I should verify the table header displayed
      | Outstanding returns |
      | Completed returns   |
    And I should verify the outstanding returns details on "View Past Returns Page"
    And I should verify the completed returns details on "View Past Returns Page"
    When I click on View Return link for one of the completed returns on "View Past Returns Page"
    Then I am presented with the "View Specific Return Page"
    And I should verify the text for the return date on "View Specific Return Page"
    And I should verify the table header displayed
      | Alcohol declared     |
      | Adjustments declared |
      | Total                |
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
