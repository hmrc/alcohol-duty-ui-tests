@Test @QuarterlySpiritsQuestions
Feature: Quarterly Spirits Questions Journey - Error Messages

  Background: Common Steps - Quarterly Spirits Questions Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  Scenario Outline: Quarterly Spirits Questions - Error Message Validations - Declare Spirits Total Page
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page"
    When I click save and continue button on "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of spirits you need to declare for this quarter"
    When I enter "555" on "Declare Spirits Total Page"
    And I click save and continue button on "Declare Spirits Total Page"
    Then I am presented with the "Declare Scotch Whisky Page"
    When I click save and continue button on "Declare Scotch Whisky Page"
    Then I am presented with the "Declare Scotch Whisky Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much Scotch Whisky you need to declare this quarter"
    When I enter "666" on "Declare Scotch Whisky Page"
    And I click save and continue button on "Declare Scotch Whisky Page"
    Then I am presented with the "Declare Irish Whiskey Page"
    When I click save and continue button on "Declare Irish Whiskey Page"
    Then I am presented with the "Declare Irish Whiskey Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much Irish Whiskey you need to declare this quarter"
    When I enter "777" on "Declare Irish Whiskey Page"
#   And I click save and continue button on "Declare Irish Whiskey Page"
    When I enter redirect url for "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page"
    And I click save and continue button on "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much rye you have used"

    Examples:
      | errorMessageHeader |
      | There is a problem |
      | errorMessageHeader | errorMessage1                    | errorMessage2                               | errorMessage3                                           | errorMessage4                                   | errorMessage5                                                   |
      | There is a problem | Enter how much rye you have used | How much rye you have used must be a number | How much rye you have used must be 999999999.99 or less | How much rye you have used must be 0.00 or more | How much rye you have used must be a number to 2 decimal places |

  Scenario Outline:5- Quarterly Spirits Questions - Error Message Validations - Which of these spirits have you made Page
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
    And I click save and continue button on "Declare Irish Whiskey Page"
    Then I am presented with the "Which Of These Spirits Have You Made Page"
    And I click save and continue button on "Which Of These Spirits Have You Made Page"
    Then I am presented with the "Which Of These Spirits Have You Made Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"

    Examples:
      | errorMessageHeader |  errorMessage1                                                    |
      | There is a problem  | Select the spirits you have made this quarter |