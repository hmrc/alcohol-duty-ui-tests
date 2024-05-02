@Test @QuarterlySpiritsQuestions
Feature: Quarterly Spirits Questions Journey - Error Messages

  Scenario Outline: Quarterly Spirits Questions - Error Message Validations
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if you need to declare any spirits or ingredients used this quarter"
    When I select radio button "Yes" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Total Of All Spirits Page"
    And I click save and continue button on "Total Of All Spirits Page"
    Then I am presented with the "Total Of All Spirits Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of spirits you need to declare for this quarter"
    When I enter "99" on "Total Of All Spirits Page"
    And I click save and continue button on "Total Of All Spirits Page"
    Then I am presented with the "Declare Whiskey Page"
    When I click save and continue button on "Declare Whiskey Page"
    Then I am presented with the "Declare Whiskey Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much Scotch Whisky you need to declare this quarter"
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much Irish Whiskey you need to declare this quarter"
    When I enter "10.55" for "Scotch Whisky" on "Declare Whiskey Page"
    And I enter "20.67" for "Irish Whiskey" on "Declare Whiskey Page"
    And I click save and continue button on "Declare Whiskey Page"
    Then I am presented with the "Which Of These Spirits Have You Made Page"
    And I click save and continue button on "Which Of These Spirits Have You Made Page"
    Then I am presented with the "Which Of These Spirits Have You Made Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select the spirits you have made this quarter"
    When I select checkbox "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other" on "Which Of These Spirits Have You Made Page"
    And I click save and continue button on "Which Of These Spirits Have You Made Page"
    Then I am presented with the "Declare Other Spirits Produced Page"
    And I click save and continue button on "Declare Other Spirits Produced Page"
    Then I am presented with the "Declare Other Spirits Produced Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the other spirits you produced"
    When I enter "Test Spirits" on "Declare Other Spirits Produced Page"
    And I click save and continue button on "Declare Other Spirits Produced Page"
#    Then I am presented with the "How Much Grain Have You Used This Quarter Page"
    When I enter redirect url for "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page"
    And I click save and continue button on "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much rye you have used"
    When I enter "25" on "How Much Rye Have You Used Page"
    And I click save and continue button on "How Much Rye Have You Used Page"
    When I enter redirect url for "How Much Malted Barley Have You Used Page"
    Then I am presented with the "How Much Malted Barley Have You Used Page"
    And I click save and continue button on "How Much Malted Barley Have You Used Page"
    Then I am presented with the "How Much Malted Barley Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much malted barley you have used"
    When I enter "50" on "How Much Malted Barley Have You Used Page"
    And I click save and continue button on "How Much Malted Barley Have You Used Page"
    When I enter redirect url for "How Much Unmalted Grain Have You Used Page"
    Then I am presented with the "How Much Unmalted Grain Have You Used Page"
    And I click save and continue button on "How Much Unmalted Grain Have You Used Page"
    Then I am presented with the "How Much Unmalted Grain Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much unmalted grain you have used"
    When I enter redirect url for "How Much Wheat Have You Used Page"
    Then I am presented with the "How Much Wheat Have You Used Page"
    And I click save and continue button on "How Much Wheat Have You Used Page"
    Then I am presented with the "How Much Wheat Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much wheat you have used"
    When I enter redirect url for "How Much Ethylene Gas Have You Used Page"
    Then I am presented with the "How Much Ethylene Gas Have You Used Page"
    And I click save and continue button on "How Much Ethylene Gas Have You Used Page"
    Then I am presented with the "How Much Ethylene Gas Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much ethylene gas you have used"
    When I enter redirect url for "Declare Other Malted Grains Page"
    Then I am presented with the "Declare Other Malted Grains Page"
    And I click save and continue button on "Declare Other Malted Grains Page"
    Then I am presented with the "Declare Other Malted Grains Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter other malted grains"
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much other malted grains you have used"
    When I enter "Test Grains" for "Other Malted Grains Types" on "Declare Other Malted Grains Page"
    And I enter "156.54" for "Other Malted Grains Quantity" on "Declare Other Malted Grains Page"
    And I click save and continue button on "Declare Other Malted Grains Page"
    When I enter redirect url for "How Much Alcohol Have You Used Page"
    Then I am presented with the "How Much Alcohol Have You Used Page"
    And I click save and continue button on "How Much Alcohol Have You Used Page"
    Then I am presented with the "How Much Alcohol Have You Used Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much Beer you have used"
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much Wine you have used"
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much Made-wine you have used"
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much Cider or perry you have used"
#   Then I am presented with the "How Much Ethylene Gas Or Molasses Have You Used Page"

    Examples:
      | errorMessageHeader |
      | There is a problem |
