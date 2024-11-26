@Test @AllTests @QuarterlySpiritsQuestions
Feature: Quarterly Spirits Questions Journey - Error Messages

  Scenario Outline: Quarterly Spirits Questions - Error Message Validations
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Have you produced spirits from raw materials?" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if you have made any spirits from raw ingredients in the past 3 months"
    When I select radio button "Yes" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Total Of All Spirits Page"
    And I click save and continue button on "Total Of All Spirits Page"
    Then I am presented with the "Total Of All Spirits Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the total volume of spirits taken in litres of pure alcohol"
    When I enter "99" on "Total Of All Spirits Page"
    And I click save and continue button on "Total Of All Spirits Page"
    Then I am presented with the "Declare Whiskey Page"
    And I enter "20.67" for "Irish Whiskey" on "Declare Whiskey Page"
    When I click save and continue button on "Declare Whiskey Page"
    Then I am presented with the "Declare Whiskey Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of Scotch Whisky produced"
    When I enter "10.55" for "Scotch Whisky" on "Declare Whiskey Page"
    And I click save and continue button on "Declare Whiskey Page"
    Then I am presented with the "Which Of These Spirits Have You Produced Page"
    And I click save and continue button on "Which Of These Spirits Have You Produced Page"
    Then I am presented with the "Which Of These Spirits Have You Produced Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select the spirits you have produced"
    When I "select" checkbox "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits" on "Which Of These Spirits Have You Produced Page"
    And I click save and continue button on "Which Of These Spirits Have You Produced Page"
    Then I am presented with the "Declare Other Spirits Produced Page"
    And I click save and continue button on "Declare Other Spirits Produced Page"
    Then I am presented with the "Declare Other Spirits Produced Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the other types of spirits you have produced"
    When I enter "Test Spirits" on "Declare Other Spirits Produced Page"
    And I click save and continue button on "Declare Other Spirits Produced Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"

    Examples:
      | errorMessageHeader |
      | There is a problem |
