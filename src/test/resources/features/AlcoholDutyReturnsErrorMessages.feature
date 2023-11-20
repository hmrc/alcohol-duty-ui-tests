@Test
Feature: Alcohol Duty Returns Journey - Error Messages

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"

  Scenario: Alcohol Duty Returns Journey - Error Message Validations
    Then I am presented with the "Draught Relief Question Page"
    When I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Draught Relief Question Page" error page
    And The error summary title is "There is a problem" and the error message is "Select yes if this product is eligible for Draught Relief"
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Relief Producer Question Page"
