@Test @QuarterlySpiritsQuestions
Feature: Quarterly Spirits Questions Journey - Error Messages

  Background: Common Steps - Quarterly Spirits Questions Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  Scenario Outline:1- Quarterly Spirits Questions - Error Message Validations - Declare Spirits Total Page
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
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
      | errorMessageHeader | invalidCharacters | numberTooBig   | numberTooLow | tooManyDecimals | errorMessage1                                                    | errorMessage2                                                          | errorMessage3                                                  | errorMessage4                                              | errorMessage5                                                                  |
      | There is a problem | test              | 99998788899.89 | -1           | 0.0001          | Enter the volume of spirits you need to declare for this quarter | The volume of spirits you need to declare must be 999999999.99 or less | The volume of spirits you need to declare must be 0.00 or more | The volume of spirits you need to declare must be a number | The volume of spirits you need to declare must be a number to 2 decimal places |

  Scenario Outline:2- Quarterly Spirits Questions - Error Message Validations - Declare Scotch Whisky Page
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page"
    When I enter "5" on "Declare Spirits Total Page"
    And I click save and continue button on "Declare Spirits Total Page"
    Then I am presented with the "Declare Scotch Whisky Page"
    When I click save and continue button on "Declare Scotch Whisky Page"
    Then I am presented with the "Declare Scotch Whisky Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I enter "<numberTooBig>" on "Declare Scotch Whisky Page"
    And I click save and continue button on "Declare Scotch Whisky Page"
    Then I am presented with the "Declare Scotch Whisky Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage2>"
    When I enter "<numberTooLow>" on "Declare Scotch Whisky Page"
    And I click save and continue button on "Declare Scotch Whisky Page"
    Then I am presented with the "Declare Scotch Whisky Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage3>"
    When I enter "<invalidCharacters>" on "Declare Scotch Whisky Page"
    And I click save and continue button on "Declare Scotch Whisky Page"
    Then I am presented with the "Declare Scotch Whisky Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage4>"
    When I enter "<tooManyDecimals>" on "Declare Scotch Whisky Page"
    And I click save and continue button on "Declare Scotch Whisky Page"
    Then I am presented with the "Declare Scotch Whisky Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage5>"

    Examples:
      | errorMessageHeader | invalidCharacters | numberTooBig   | numberTooLow | tooManyDecimals | errorMessage1                                                 | errorMessage2                                                                | errorMessage3                                                        | errorMessage4                                                    | errorMessage5                                                                        |
      | There is a problem | test              | 99998788899.89 | -1           | 0.0001          | Enter how much Scotch Whisky you need to declare this quarter | The volume of Scotch Whisky you need to declare must be 999999999.99 or less | The volume of Scotch Whisky you need to declare must be 0.00 or more | The volume of Scotch Whisky you need to declare must be a number | The volume of Scotch Whisky you need to declare must be a number to 2 decimal places |

  Scenario Outline:3- Quarterly Spirits Questions - Error Message Validations - Declare Irish Whiskey Page
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page"
    When I enter "5" on "Declare Spirits Total Page"
    And I click save and continue button on "Declare Spirits Total Page"
    Then I am presented with the "Declare Scotch Whisky Page"
    When I enter "10" on "Declare Scotch Whisky Page"
    And I click save and continue button on "Declare Scotch Whisky Page"
    Then I am presented with the "Declare Irish Whiskey Page"
    When I click save and continue button on "Declare Irish Whiskey Page"
    Then I am presented with the "Declare Irish Whiskey Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I enter "<numberTooBig>" on "Declare Irish Whiskey Page"
    And I click save and continue button on "Declare Irish Whiskey Page"
    Then I am presented with the "Declare Irish Whiskey Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage2>"
    When I enter "<numberTooLow>" on "Declare Irish Whiskey Page"
    And I click save and continue button on "Declare Irish Whiskey Page"
    Then I am presented with the "Declare Irish Whiskey Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage3>"
    When I enter "<invalidCharacters>" on "Declare Irish Whiskey Page"
    And I click save and continue button on "Declare Irish Whiskey Page"
    Then I am presented with the "Declare Irish Whiskey Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage4>"
    When I enter "<tooManyDecimals>" on "Declare Irish Whiskey Page"
    And I click save and continue button on "Declare Irish Whiskey Page"
    Then I am presented with the "Declare Irish Whiskey Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage5>"

    Examples:
      | errorMessageHeader | invalidCharacters | numberTooBig   | numberTooLow | tooManyDecimals | errorMessage1                                                 | errorMessage2                                                                | errorMessage3                                                        | errorMessage4                                                    | errorMessage5                                                                        |
      | There is a problem | test              | 99998788899.89 | -1           | 0.0001          | Enter how much Irish Whiskey you need to declare this quarter | The volume of Irish Whiskey you need to declare must be 999999999.99 or less | The volume of Irish Whiskey you need to declare must be 0.00 or more | The volume of Irish Whiskey you need to declare must be a number | The volume of Irish Whiskey you need to declare must be a number to 2 decimal places |

  Scenario Outline:4- Quarterly Spirits Questions - Error Message Validations - How much Rye Used
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    And I click continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Declare Spirits Total Page"
    When I enter "5" on "Declare Spirits Total Page"
    And I click save and continue button on "Declare Spirits Total Page"
    Then I am presented with the "Declare Scotch Whisky Page"
    When I enter "10" on "Declare Scotch Whisky Page"
    And I click save and continue button on "Declare Scotch Whisky Page"
    Then I am presented with the "Declare Irish Whiskey Page"
    When I enter "10" on "Declare Irish Whiskey Page"
#   And I click save and continue button on "Declare Irish Whiskey Page"
    When I enter redirect url for "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page"
    And I click save and continue button on "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I enter "test123" on "How Much Rye Have You Used Page"
    And I click save and continue button on "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage2>"
    When I enter "9999999999.99" on "How Much Rye Have You Used Page"
    And I click save and continue button on "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage3>"
    When I enter "-0.01" on "How Much Rye Have You Used Page"
    And I click save and continue button on "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage4>"
    When I enter "0.001" on "How Much Rye Have You Used Page"
    And I click save and continue button on "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage5>"

    Examples:
      | errorMessageHeader | errorMessage1                    | errorMessage2                               | errorMessage3                                           | errorMessage4                                   | errorMessage5                                                   |
      | There is a problem | Enter how much rye you have used | How much rye you have used must be a number | How much rye you have used must be 999999999.99 or less | How much rye you have used must be 0.00 or more | How much rye you have used must be a number to 2 decimal places |