@Test @QuarterlySpiritsQuestions
Feature: Quarterly Spirits Questions

  @ZAP @a11y
  Scenario: Quarterly Spirits Questions Journey- Happy path - With option 'Yes'
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "Yes" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Total Of All Spirits Page"
    When I enter "99" on "Total Of All Spirits Page"
    And I click save and continue button on "Total Of All Spirits Page"
    Then I am presented with the "Declare Scotch Whisky Page"
    When I enter "10" on "Declare Scotch Whisky Page"
    And I click save and continue button on "Declare Scotch Whisky Page"
    Then I am presented with the "Declare Irish Whiskey Page"
    When I enter "10" on "Declare Irish Whiskey Page"
    And I click save and continue button on "Declare Irish Whiskey Page"
    Then I am presented with the "Which Of These Spirits Have You Made Page"
    When I select checkbox "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer" on "Which Of These Spirits Have You Made Page"
    And I click save and continue button on "Which Of These Spirits Have You Made Page"
#   Then I am presented with the "Spirits Ingredients"
    When I enter redirect url for "How Much Rye Have You Used Page"
    Then I am presented with the "How Much Rye Have You Used Page"
    When I enter "25" on "How Much Rye Have You Used Page"
    And I click save and continue button on "How Much Rye Have You Used Page"
    When I enter redirect url for "How Much Malted Barley Have You Used Page"
    Then I am presented with the "How Much Malted Barley Have You Used Page"
    When I enter "50" on "How Much Malted Barley Have You Used Page"
    And I click save and continue button on "How Much Malted Barley Have You Used Page"
    When I enter redirect url for "How Much Unmalted Grain Have You Used Page"
    Then I am presented with the "How Much Unmalted Grain Have You Used Page"
    When I enter "75" on "How Much Unmalted Grain Have You Used Page"
    And I click save and continue button on "How Much Unmalted Grain Have You Used Page"
    When I enter redirect url for "How Much Wheat Have You Used Page"
    Then I am presented with the "How Much Wheat Have You Used Page"
    When I enter "68.75" on "How Much Wheat Have You Used Page"
    And I click save and continue button on "How Much Wheat Have You Used Page"
    When I enter redirect url for "How Much Ethylene Gas Have You Used Page"
    Then I am presented with the "How Much Ethylene Gas Have You Used Page"
    When I enter "100" on "How Much Ethylene Gas Have You Used Page"
    And I click save and continue button on "How Much Ethylene Gas Have You Used Page"
#   Then I am presented with the "Check your answers"

  Scenario: Quarterly Spirits Questions Journey- Happy path - With option 'No'
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "No" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
