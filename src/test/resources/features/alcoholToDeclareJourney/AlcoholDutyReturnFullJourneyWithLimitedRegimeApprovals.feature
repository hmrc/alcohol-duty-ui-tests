@AllTests @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey with Limited Regime Approvals

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    
  @Test
  Scenario:1. Alcohol Duty Returns Journey - user with only Beer regime approval
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000178208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.5555" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 945.55 litres  |
      | Pure alcohol | 55.5555 litres |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£533.88"
    And I should see the following product details
      | Description                                                    | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) | 55.5555                      | £9.61                 | £533.88    | Change |
    When I click save and continue button on "Duty Due Beer Page"
    Then I am presented with the "Task List Page"
    #Adjustment journey- nothing to declare
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "No" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Task List Page"
    #Duty suspended journey
    When I click on "Tell us if you have delivered or received finished products in duty suspense" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Beer Page"
    When I enter "2000.75" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "150.5500" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    And I should see the following details
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in this beer |
      | 2,000.75 litres                           | 150.5500 litres                                 |
    When I click continue button on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Task List Page"
    #Return summary page
    When I click on "Check duty payable and send your return" hyperlink on "Task List Page"
    Then I am presented with the "Return Summary Page" "£533.88"
    And I should see the following details
      | Beer declared | Adjustments to previous returns | Duty suspended alcohol |
      | £533.88       | Nil                             | Declared               |
    And I verify 3 change links present on "Return Summary Page"
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"

