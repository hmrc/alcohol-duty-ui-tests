@Test @DutySuspendedDeliveries
Feature: Alcohol Duty Return - Duty Suspended Deliveries

  Background: : Common Steps - Duty Suspended Deliveries
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

  @ZAP @a11y
  Scenario: Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - With option 'Yes'
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Beer Page"
    When I enter "2000.75" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "150.55" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Cider Page"
    When I enter "9999.99" for "Total Cider" on "Duty Suspended Cider Page"
    And I enter "99.19" for "Pure Alcohol In Cider" on "Duty Suspended Cider Page"
    And I click save and continue button on "Duty Suspended Cider Page"
#   Then I am presented with the "Duty Suspended Wine Page"

  Scenario: Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - With option 'No'
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"
