@Test @AlcoholToDeclare @NilReturn
Feature: Alcohol Duty Return Journey - Nil Return Summary

  Scenario: To verify the Nil Return Summary Page
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    And  I verify the return due date for "Latest Month Selected" on "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "No" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
# The returns summary is work in progress and therefore only the ADR scenario is added
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Nil Return Summary Page"
    And I should see the following details at the returns summary page
      | Declared duty | Nil | Change |