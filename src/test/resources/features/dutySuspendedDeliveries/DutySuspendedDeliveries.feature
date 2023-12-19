@Test @DutySuspendedDeliveries
Feature: Alcohol Duty Return - Duty Suspended Deliveries

  Background: : Common Steps - Duty Suspended Deliveries
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"

  @ZAP @a11y
  Scenario: Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - With option 'Yes'
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    When I enter redirect url for "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page"
    When I enter "150" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page"
    When I enter "999" on "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Declare Duty Suspended Received Page"
    When I enter "500" on "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Received Page"
    Then I am presented with the "Duty Suspended Deliveries CheckYour Answers Page"
    And I should see the following details
      | Amount delivered duty suspended outside the UK | Amount delivered duty suspended in the UK | Amount received duty suspended |
      | 150 litres                                     | 999 litres                                | 500 litres                     |

  Scenario: Alcohol Duty Returns - Declare Duty Suspended Deliveries - Verify 'Change' links at Check your answer page
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    When I enter redirect url for "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page"
    When I enter "150" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page"
    When I enter "999" on "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Declare Duty Suspended Received Page"
    When I enter "500" on "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Received Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    And I should see the following details
      | Amount delivered duty suspended outside the UK | Amount delivered duty suspended in the UK | Amount received duty suspended |
      | 150 litres                                     | 999 litres                                | 500 litres                     |
    When I click "Change amount delivered duty suspended outside the UK" on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page" with new url
    When I enter "555" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    When I click "Change amount delivered duty suspended in the UK" on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page" with new url
    When I enter "666" on "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    When I click "Change amount received duty suspended" on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Declare Duty Suspended Received Page" with new url
    When I enter "777" on "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Received Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    And I should see the following details
      | Amount delivered duty suspended outside the UK | Amount delivered duty suspended in the UK | Amount received duty suspended |
      | 555 litres                                     | 666 litres                                | 777 litres                     |

  Scenario: Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - With option 'No'
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    When I enter redirect url for "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
#   Then I am presented with the "Task List Page"
