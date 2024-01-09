@Test @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  @ZAP @a11y
  Scenario: Alcohol Duty Returns Journey - Happy Path
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "5" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I click back button on "Small Producer Relief Question Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "No" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I select radio button "Yes" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
#   Then I am presented with the "Tax Type Page"
    When I enter redirect url for "Declare Small Producer Relief Duty Rate Page"
    Then I am presented with the "Declare Small Producer Relief Duty Rate Page"
    When I enter "50" on "Declare Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Declare Small Producer Relief Duty Rate Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
#   Then I am presented with the "Pure Alcohol Page"