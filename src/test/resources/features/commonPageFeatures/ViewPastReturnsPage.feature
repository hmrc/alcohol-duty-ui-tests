@Test @ViewPastReturnsPage @check
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
    Then I should verify the completed returns details on "View Past Returns Page"

  Scenario: 2. ADR Journey - To verify the details of a specific return on View Specific Return Page
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
    And I should verify the outstanding returns details on "View Past Returns Page"
    And I should verify the completed returns details on "View Past Returns Page"
    When I click on View Return link for one of the completed returns on "View Past Returns Page"
    Then I am presented with the "View Specific Return Page"
    Then I should verify the text for the return date on "View Specific Return Page"
    And I should verify the table header displayed
      | Alcohol declared     |
      | Adjustments declared |
      | Total                |
    And I should verify the details of the "Alcohol declared section" on "View Specific Return Page"
      | Description | Litres of pure alcohol (Lpa) | Duty rate (per litre) | Duty value |
      | 301         | 12,041.00 l                  | £5.27 per litre       | £63,456.07 |
    And I should verify the details of the "Total declared duty value section" on "View Specific Return Page"
      | Total declared duty value | £63,456.07 |
    And I should verify the details of the "Adjustments declared section" on "View Specific Return Page"
      | Adjustment     | Description | Litres of pure alcohol (Lpa) | Duty rate (per litre) | Duty value |
      | Under-declared | 301         | 989.00 l                     | £5.27 per litre       | £5,212.03  |
      | Over-declared  | 302         | 100.58 l                     | £3.56 per litre       | −£358.07   |
      | Repackaged     | 304         | 100.81 l                     | £12.76 per litre      | £1,221.82  |
      | Spoilt         | 305         | 1,000.94 l                   | £1.75 per litre       | −£1,751.65 |
      | Drawback       | 309         | 1,301.11 l                   | £5.12 per litre       | −£6,661.69 |
    And I should verify the details of the "Total adjustments duty value section" on "View Specific Return Page"
      | Total adjustments duty value | −£2,337.56 |
    And I should verify the details of the "Total duty value section" on "View Specific Return Page"
      | Total duty value | £61,118.51 |

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
    Then I should verify the text for the return date on "View Specific Return Page"
    And I should verify the table header displayed
      | Alcohol declared     |
      | Adjustments declared |
      | Total                |
    And I should verify the details of the "Alcohol declared section" on "View Specific Return Page"
      | Description                 | Duty value |
      | No alcohol declared         | Nil        |
    And I should verify the details of the "Adjustments declared section" on "View Specific Return Page"
      | Description             | Duty value |
      | No adjustments declared | Nil        |
    And I should verify the details of the "Total duty value section" on "View Specific Return Page"
      | Total duty value        | Nil        |
