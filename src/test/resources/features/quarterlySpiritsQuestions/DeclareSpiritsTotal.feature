@Test @ZAP @@a11y @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"

  Scenario: Alcohol Duty Returns - Declare Spirits Total Page
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    When I enter redirect url for "Declare Spirits Total Page"
    Then I am presented with the "Declare Spirits Total Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
#   Then I am presented with the "DSD Guidance Page"

  Scenario: Alcohol Duty Returns Journey - Product Volume Page
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    When I enter redirect url for "Product Volume Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
#   Then I am presented with the "Pure Alcohol Page"