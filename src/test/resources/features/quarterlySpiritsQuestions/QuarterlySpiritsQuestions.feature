@Test @QuarterlySpiritsQuestions
Feature: Quarterly Spirits Questions

  Background: : Common Steps - Quarterly Spirits Questions Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  @ZAP @a11y
  Scenario: Quarterly Spirits Questions Journey- Happy path
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
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

