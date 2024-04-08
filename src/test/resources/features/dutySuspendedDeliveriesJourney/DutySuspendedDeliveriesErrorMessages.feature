@Test @DutySuspendedDeliveries
Feature: Alcohol Duty Returns - Declare Duty Suspended Deliveries - Error Messages

  Scenario Outline: Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - Error message validations
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Alcohol to declare |
    And I should see the following status of the submission journey
      | Do you need to declare duty? |
      | Not started                  |
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if you need to declare any Duty Suspended Deliveries"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Outside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much you have delivered duty suspended"
    When I enter "777" on "Declare Duty Suspended Deliveries Outside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Outside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Inside UK Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much you have delivered duty suspended"
    When I enter "888" on "Declare Duty Suspended Deliveries Inside UK Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Inside UK Page"
    Then I am presented with the "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Received Page"
    Then I am presented with the "Declare Duty Suspended Received Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter how much you have received duty suspended"
    When I enter "999" on "Declare Duty Suspended Received Page"
    And I click save and continue button on "Declare Duty Suspended Received Page"
    Then I am presented with the "Duty Suspended Deliveries CheckYour Answers Page"

    Examples:
      | errorMessageHeader |
      | There is a problem |
