@Test @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey - Error Messages

  Background: Alcohol Duty Returns Journey - Common Steps
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  Scenario Outline:1- Alcohol Duty Returns - Error Message Validations - Declare Spirits Total Page
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    When I enter redirect url for "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page"
    When I click save and continue button on "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I enter "<numberTooBig>" on "Declare Spirits Total Page"
    And I click save and continue button on "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage2>"
    When I enter "<numberTooLow>" on "Declare Spirits Total Page"
    And I click save and continue button on "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage3>"
    When I enter "<invalidCharacters>" on "Declare Spirits Total Page"
    And I click save and continue button on "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage4>"
    When I enter "<tooManyDecimals>" on "Declare Spirits Total Page"
    And I click save and continue button on "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage5>"

    Examples:
      | errorMessageHeader  | invalidCharacters | numberTooBig | numberTooLow | tooManyDecimals | errorMessage1                                         | errorMessage2                                                    | errorMessage3                                                       | errorMessage4                                                        | errorMessage5                                                                 |
      | There is a problem  | test              | 99998788899.89          | -1 | 0.0001          | Enter the volume of spirits you need to declare for this quarter | The volume of spirits you need to declare must be 999999999.99 or less | The volume of spirits you need to declare must be 0.00 or more | The volume of spirits you need to declare must be a number | The volume of spirits you need to declare must be a number to 2 decimal places |
