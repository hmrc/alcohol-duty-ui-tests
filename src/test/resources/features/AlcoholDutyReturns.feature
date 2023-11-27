@Test @ZAP @@a11y
Feature: Alcohol Duty Returns Journey

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"

  Scenario: Alcohol Duty Returns Journey - Happy Path
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Relief Producer Question Page"
    When I click back button on "Small Relief Producer Question Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "No" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Relief Producer Question Page"
    When I select radio button "Yes" on "Small Relief Producer Question Page"
    And I click save and continue button on "Small Relief Producer Question Page"
#   Then I am presented with the "Tax Type Page"
