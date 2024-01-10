@Test @DutySuspendedDeliveries
Feature: Alcohol Duty Returns - Declare Duty Suspended Deliveries - Error Messages

  Background: Alcohol Duty Returns Journey - Common Steps
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  Scenario Outline:1- Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - Error message validations
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
#   Then I am presented with the "DSD Guidance Page"

    Examples:
      | errorMessageHeader | errorMessage1                                                   |
      | There is a problem | Select yes if you need to declare any Duty Suspended Deliveries |

  Scenario Outline:2- Alcohol Duty Returns - Declare Duty Suspended Deliveries Outside UK Page - Error Message Validations
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I enter "<invalidCharacters>" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage2>"
    When I enter "<numberTooBig>" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage3>"
    When I enter "<numberTooLow>" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage4>"
    When I enter "<tooManyDecimals>" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage5>"
    When I enter "<correctVolume>" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"

    Examples:
      | errorMessageHeader | invalidCharacters | numberTooBig | numberTooLow | correctVolume | tooManyDecimals | errorMessage1                                    | errorMessage2                                               | errorMessage3                                                           | errorMessage4                                                   | errorMessage5                                                                   |
      | There is a problem | test              | 9999999999   | -0.01        | 150           | 0.0001          | Enter how much you have delivered duty suspended | How much you have delivered duty suspended must be a number | How much you have delivered duty suspended must be 999999999.99 or less | How much you have delivered duty suspended must be 0.00 or more | How much you have delivered duty suspended must be a number to 2 decimal places |

  Scenario Outline:3- Alcohol Duty Returns - Declare Duty Suspended Deliveries Inside UK Page - Error Message Validations
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page"
    When I enter "<correctVolume>" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I enter "<invalidCharacters>" on "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage2>"
    When I enter "<numberTooBig>" on "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage3>"
    When I enter "<numberTooLow>" on "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage4>"
    When I enter "<tooManyDecimals>" on "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage5>"
    When I enter "<correctVolume>" on "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
#   Then I am presented with the "Duty Suspense Page"

    Examples:
      | errorMessageHeader | invalidCharacters | numberTooBig | numberTooLow | correctVolume | tooManyDecimals | errorMessage1                                    | errorMessage2                                               | errorMessage3                                                           | errorMessage4                                                   | errorMessage5                                                                   |
      | There is a problem | test              | 9999999999   | -0.01        | 150           | 0.0001          | Enter how much you have delivered duty suspended | How much you have delivered duty suspended must be a number | How much you have delivered duty suspended must be 999999999.99 or less | How much you have delivered duty suspended must be 0.00 or more | How much you have delivered duty suspended must be a number to 2 decimal places |

  Scenario Outline:4- Alcohol Duty Returns - Declare Duty Suspended Received Page - Error Message Validations
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page"
    When I enter "<correctVolume>" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page"
    When I enter "<correctVolume>" on "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Received Page"
    Then I am presented with the "Declare Duty Suspended Received Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I enter "<invalidCharacters>" on "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Received Page"
    Then I am presented with the "Declare Duty Suspended Received Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage2>"
    When I enter "<numberTooBig>" on "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Received Page"
    Then I am presented with the "Declare Duty Suspended Received Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage3>"
    When I enter "<numberTooLow>" on "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Received Page"
    Then I am presented with the "Declare Duty Suspended Received Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage4>"
    When I enter "<tooManyDecimals>" on "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Received Page"
    Then I am presented with the "Declare Duty Suspended Received Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage5>"
    When I enter "<correctVolume>" on "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
#   Then I am presented with the "DSD check answers"

    Examples:
      | errorMessageHeader | invalidCharacters | numberTooBig | numberTooLow | correctVolume | tooManyDecimals | errorMessage1                                   | errorMessage2                                              | errorMessage3                                                          | errorMessage4                                                  | errorMessage5                                                                  |
      | There is a problem | test              | 9999999999   | -0.01        | 150           | 0.0001          | Enter how much you have received duty suspended | How much you have received duty suspended must be a number | How much you have received duty suspended must be 999999999.99 or less | How much you have received duty suspended must be 0.00 or more | How much you have received duty suspended must be a number to 2 decimal places |