@Test @ViewPastReturnsPage
Feature: View Past Returns Journey

  Scenario: 1. ADR Journey - To verify the details on View Past Returns Page when there is 1 Due, multiple Overdue and multiple Completed returns
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter redirectURL for "View Past Returns Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Returns Page"
    And I should verify the table header displayed
      | Outstanding returns |
      | Completed returns   |
    Then I should verify the outstanding returns details on "View Past Returns Page"
    Then I should verify the completed returns details on "View Past Returns Page"
@check
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
    When I click on View Return link for one of the completed returns on "View Past Returns Page"
    Then I am presented with the "View Specific Return Page"
  And I should verify the table header displayed
    | Alcohol declared |
    | Adjustments      |

