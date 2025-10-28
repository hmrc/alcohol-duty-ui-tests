@Test @AllTests @ViewPastReturns
Feature: View Past Returns Journey

  Scenario: 1. ADR Journey - View Completed Returns from previous years
    Given I cleared the data to view completed returns from previous years
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL for "View Past Returns Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "View Past Returns Page"
    When I click the link to view completed returns from the previous year on "View Past Returns Page"
    Then I am presented with the "View Completed Returns Page"
    And I click on the first "View return" link on "View Completed Returns Page"
    Then I am presented with the "View Specific Return Page"
    And I click back button on "View Completed Returns Page"
    Then I am presented with the "View Completed Returns Page"
    When I click on "Back to current returns" hyperlink on "View Completed Returns Page"
    Then I am presented with the "View Past Returns Page"
