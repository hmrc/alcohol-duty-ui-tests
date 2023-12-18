@Test @ZAP @@a11y @AlcoholToDeclare
Feature: Alcohol Duty Returns - Spirits Total

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  Scenario: Alcohol Duty Returns - Declare Spirits Total Page
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    When I enter redirect url for "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page"
    When I enter "5" on "Declare Spirits Total Page"
    And I click save and continue button on "Declare Spirits Total Page"
