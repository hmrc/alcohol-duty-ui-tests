@Test @ZAP @@a11y
Feature: Alcohol Duty Returns Journey

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"

  Scenario: Alcohol Duty Returns Journey - Happy Path
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "5" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Page"
    When I select radio button "Yes" on "Draught Relief Page"
    And I click save and continue button on "Draught Relief Page"
    Then I am presented with the "Small Relief Producer Page"
    When I click back button on "Small Relief Producer Page"
    Then I am presented with the "Draught Relief Page"
    When I select radio button "No" on "Draught Relief Page"
    And I click save and continue button on "Draught Relief Page"
    Then I am presented with the "Small Relief Producer Page"
    When I select radio button "Yes" on "Small Relief Producer Page"
    And I click save and continue button on "Small Relief Producer Page"
#   Then I am presented with the "Tax Type Page"

  Scenario: Alcohol Duty Returns Journey - Product Volume Page
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    When I enter redirect url for "Product Volume Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
#   Then I am presented with the "Pure Alcohol Page"

  Scenario: Alcohol Duty Returns Journey - Declare Duty Suspended Deliveries Page - With option 'Yes'
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    When I enter redirect url for "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
#   Then I am presented with the "DSD Guidance Page"

  Scenario: Alcohol Duty Returns Journey - Declare Duty Suspended Deliveries Page - With option 'No'
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    When I enter redirect url for "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
#   Then I am presented with the "Task List Page"