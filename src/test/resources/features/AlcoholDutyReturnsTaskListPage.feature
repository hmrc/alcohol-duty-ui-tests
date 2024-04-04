@Test @AlcoholToDeclare @TaskListPage
Feature: Alcohol Duty Returns Journey - Task List Page

  Background: : Common Steps - Alcohol Duty Returns Journey
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

  @ZAP @a11y
  Scenario: 1. To verify the status of the submission changes from 'Not started' to 'Completed' if the answer is set to 'No' at the Declare Alcohol Duty Question Page
    When I select radio button "No" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you don’t need to declare duty |
      | Completed                                     |


  Scenario: 2. To verify the status of the submission changes to 'Not started' if the journey is incomplete
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click back button on "Product Entry Guidance Page"
    And I click back button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your products |
      | Completed                               | Not started                 |


  Scenario: 3. To verify the status of the submission to 'In progress' if the user not selects any options at the Product List Page
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "9" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 331                     |
      | Wine, tax type code 333                     |
      | Other fermented products, tax type code 334 |
      | Spirits, tax type code 335                  |
    When I select radio button "Wine, tax type code 333" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Duty Due Page"
    When I click continue button on "Duty Due Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Tax type code | Volume     | Pure alcohol | Duty rate        | Duty due |
      | TestName | 9% ABV           | 333           | 100 litres | 9 litres     | £28.50 per litre | £256.50  |
    When I click save and continue button on "Check Your Answers Page"
    Then I am presented with the "Product List Page"
    When I enter redirect url for "Task List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Change the products you’ve told us about |
      | Completed                               | In progress                              |


  Scenario: 4. To verify the status of the submission to 'Completed' if the user completes the journey
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "25" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 341                     |
      | Wine, tax type code 343                     |
      | Other fermented products, tax type code 344 |
      | Spirits, tax type code 345                  |
    When I select radio button "Spirits, tax type code 345" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Duty Due Page"
    When I click continue button on "Duty Due Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Tax type code | Volume     | Pure alcohol | Duty rate        | Duty due |
      | TestName | 25% ABV          | 345           | 100 litres | 25 litres    | £31.64 per litre | £791.00  |
    When I click save and continue button on "Check Your Answers Page"
    Then I am presented with the "Product List Page"
    When I select radio button "No" on "Product List Page"
    And I click save and continue button on "Product List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Change the products you’ve told us about |
      | Completed                               | Completed                                |