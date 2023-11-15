@Test
Feature: Auth login page

  Scenario: To test auth login page
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"
    #Then I am presented with the "Alcohol Duty Returns Frontend"

