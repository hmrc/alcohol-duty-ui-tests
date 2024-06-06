@Test @NoApprovalId
Feature: No Approval Id Journey

  @ZAP @a11y
  Scenario: No Approval Id Journey - Happy path - When user does not have APPA ID
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for No Approval Id journey on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "No Approval Id Page"
#    This test needs to be updated once Do you have an APPA ID page is implemented

