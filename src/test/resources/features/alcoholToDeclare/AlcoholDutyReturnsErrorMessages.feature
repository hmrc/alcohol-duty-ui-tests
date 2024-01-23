@Test @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey - Error Messages

  Background: Alcohol Duty Returns Journey - Common Steps
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  Scenario Outline:1- Alcohol Duty Returns Journey - Error Message Validations
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Declare Alcohol Duty Question Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if you need to declare duty on any alcoholic products"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I click save and continue button on "Product Name Page"
    Then I am presented with the "Product Name Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the name you want to give this product"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Alcohol By Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter this product^s Alcohol by Volume (ABV) strength"
    When I enter "15" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Draught Relief Question Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if this product is eligible for Draught Relief"
    When I select radio button "No" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if this product is eligible for Small Producer Relief"
    When I select radio button "No" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Tax Type Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select this product^s tax type"
    When I select radio button "Beer, tax type code 331" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Product Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much of this product you need to declare"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
#   Then I am presented with the "Pure Alcohol Page"

    Examples:
      | errorMessageHeader |
      | There is a problem |