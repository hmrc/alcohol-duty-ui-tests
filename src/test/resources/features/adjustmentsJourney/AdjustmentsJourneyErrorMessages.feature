@Test @AdjustmentsErrorMessage
Feature: Adjustments Journey - Error Messages

  Background: Adjustments Journey - Common Steps
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  Scenario Outline: Adjustments Journey - Error Message Validations
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Adjustment Question Page"
    Then I am presented with the "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Declare Adjustment Question Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if you need to enter an adjustment."
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Adjustment Type Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select the adjustment you need to make"
    When I enter redirect url for "Adjustment Alcohol By Volume Page"
    Then I am presented with the "Adjustment Alcohol By Volume Page"
    And I click save and continue button on "Adjustment Alcohol By Volume Page"
    Then I am presented with the "Adjustment Alcohol By Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the ABV of this adjustment"
    When I enter redirect url for "Adjustment Volume Page"
    Then I am presented with the "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of this adjustment"

    Examples:
      | errorMessageHeader |
      | There is a problem |