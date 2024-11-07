@Test @AllTests @ClaimEnrolmentJourney
Feature: Claim Enrolment Journey

  Scenario: Claim Enrolment Journey - Happy path - When user does not have APPA ID
    Given I enter the url for Claim Enrolment journey
    Then I am presented with the "Do You Have Appa Id Page"
    When I select radio button "No" on "Do You Have Appa Id Page"
    And I click continue button on "Do You Have Appa Id Page"
    Then I am presented with the "You Need An Appa Id Page"
    When I click back button on "You Need An Appa Id Page"
    Then I am presented with the "Do You Have Appa Id Page"
    When I select radio button "Yes" on "Do You Have Appa Id Page"
    And I click continue button on "Do You Have Appa Id Page"
#    Then I am presented with the "Request Access For Manage Alcohol Duty Page"
#  The above line has been commented currently. Once we have enrolment-management-frontend added to our service manager, will add this page

  Scenario Outline: Claim Enrolment Journey - Error Message Validation
    Given I enter the url for Claim Enrolment journey
    Then I am presented with the "Do You Have Appa Id Page"
    And I click continue button on "Do You Have Appa Id Page"
    Then I am presented with the "Do You Have Appa Id Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if you have an Alcoholic Products Producer approval ID"

    Examples:
      | errorMessageHeader |
      | There is a problem |


