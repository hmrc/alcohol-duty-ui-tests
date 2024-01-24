@Test @QuarterlySpiritsQuestions
Feature: Quarterly Spirits Questions

  Background: : Common Steps - Quarterly Spirits Questions Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  @ZAP @a11y
  Scenario: Quarterly Spirits Questions Journey- Happy path
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
    When I select checkbox "Malt spirits" on "Which Of These Spirits Have You Made Page"
    And I select checkbox "Neutral spirits of agricultural origin" on "Which Of These Spirits Have You Made Page"
    And I select checkbox "Spirits produced from beer" on "Which Of These Spirits Have You Made Page"
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
    When I enter redirect url for "How Much Unmalted Barley Have You Used Page"
    Then I am presented with the "How Much Unmalted Barley Have You Used Page"
    When I enter "75" on "How Much Unmalted Barley Have You Used Page"
    And I click save and continue button on "How Much Unmalted Barley Have You Used Page"
#   Then I am presented with the "Check your answers"


