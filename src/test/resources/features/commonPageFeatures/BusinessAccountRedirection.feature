@AllTests @Test @BusinessTaxAccount
Feature: Alcohol Duty Returns Redirection to Business Account

  Scenario: To verify that the alcohol duty journey is redirected to Business Tax Account
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Business Tax Account Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Business Tax Account Page"