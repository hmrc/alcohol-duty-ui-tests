@Test @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
#    Once we have the unauthorised page developed, need to add tests with Affinity Type Agent and Individual
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000000208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"

  @ZAP @a11y
  Scenario: Alcohol Duty Returns Journey - When Draught Relief, Small Producer Relief, and Product List Page are set to NO
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "1.1" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "No" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I select radio button "No" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I verify the ABV value displayed as "1.1% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Wine, tax type code 301                     |
      | Other fermented products, tax type code 301 |
      | Beer, tax type code 301                     |
      | Cider, tax type code 301                    |
      | Spirits, tax type code 301                  |
    When I select radio button "Other fermented products, tax type code 301" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 1.1 |
      | you need to declare 100 litres of this entry              |
    And I can see below text for "duty due"
      | the entry having 1.1 litres of pure alcohol (Lpa)                  |
      | the duty rate for this entry being £0.00 per litre of pure alcohol |
    When I click continue button on "Duty Due Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate       | Duty due |
      | TestName | 1.1% ABV         | No                          | No                                 | 301           | 100 litres | 1.1 litres   | £0.00 per litre | £0.00    |
    When I click save and continue button on "Check Your Answers Page"
    Then I am presented with the "Product List Page"
    And I should see the following product details
      | Name     | Duty due | Action        |
      | TestName | £0.00    | Change Remove |
    When I select radio button "No" on "Product List Page"
    And I click save and continue button on "Product List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Change the products you’ve told us about | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed                                | Not started                                  | Not started                                |


  Scenario: Alcohol Duty Returns Journey - When Draught Relief is set to YES & Small Producer Relief is set to NO, and Product List Page is set to YES
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "2.5" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I select radio button "No" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I verify the ABV value displayed as "2.5% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 351                     |
      | Cider, tax type code 352                    |
      | Wine, tax type code 353                     |
      | Other fermented products, tax type code 354 |
      | Spirits, tax type code 355                  |
    When I select radio button "Cider, tax type code 352" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 2.5 |
      | you need to declare 100 litres of this entry              |
    And I can see below text for "duty due"
      | the entry having 2.5 litres of pure alcohol (Lpa)                  |
      | the duty rate for this entry being £8.42 per litre of pure alcohol |
    When I click continue button on "Duty Due Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate       | Duty due |
      | TestName | 2.5% ABV         | Yes                         | No                                 | 352           | 100 litres | 2.5 litres   | £8.42 per litre | £21.05   |
    When I click save and continue button on "Check Your Answers Page"
    Then I am presented with the "Product List Page"
    And I should see the following product details
      | Name     | Duty due | Action        |
      | TestName | £21.05   | Change Remove |
    When I select radio button "Yes" on "Product List Page"
    And I click save and continue button on "Product List Page"
    Then I am presented with the "Product Name Page"
    When I enter "Product2" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "1.5" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I select radio button "No" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I verify the ABV value displayed as "1.5% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 351                     |
      | Cider, tax type code 352                    |
      | Wine, tax type code 353                     |
      | Other fermented products, tax type code 354 |
      | Spirits, tax type code 355                  |
    When I select radio button "Cider, tax type code 352" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Product Volume Page"
    When I enter "200" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 1.5 |
      | you need to declare 200 litres of this entry              |
    And I can see below text for "duty due"
      | the entry having 3 litres of pure alcohol (Lpa)                    |
      | the duty rate for this entry being £8.42 per litre of pure alcohol |
    When I click continue button on "Duty Due Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate       | Duty due |
      | Product2 | 1.5% ABV         | Yes                         | No                                 | 352           | 200 litres | 3 litres     | £8.42 per litre | £25.26   |
    When I click save and continue button on "Check Your Answers Page"
    Then I am presented with the "Product List Page"
    And I should see the following product details
      | Name     | Duty due | Action        |
      | TestName | £21.05   | Change Remove |
      | Product2 | £25.26   | Change Remove |


  Scenario: Alcohol Duty Returns Journey - When Draught Relief is set to NO & Small Producer Relief is set to YES
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "3.5" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "No" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I select radio button "Yes" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I verify the ABV value displayed as "3.5% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 366                     |
      | Cider, tax type code 367                    |
      | Wine, tax type code 368                     |
      | Other fermented products, tax type code 369 |
      | Spirits, tax type code 370                  |
    When I select radio button "Spirits, tax type code 370" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Declare Small Producer Relief Duty Rate Page"
    When I enter "50" on "Declare Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Declare Small Producer Relief Duty Rate Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 3.5 |
      | you need to declare 100 litres of this entry              |
    And I can see below text for "duty due"
      | the entry having 3.5 litres of pure alcohol (Lpa)                   |
      | the duty rate for this entry being £50.00 per litre of pure alcohol |
    When I click continue button on "Duty Due Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate        | Duty due |
      | TestName | 3.5% ABV         | No                          | Yes                                | 370           | 100 litres | 3.5 litres   | £50.00 per litre | £175.00  |
    When I click save and continue button on "Check Your Answers Page"
    Then I am presented with the "Product List Page"
    And I should see the following product details
      | Name     | Duty due | Action        |
      | TestName | £175.00  | Change Remove |
    When I select radio button "Yes" on "Product List Page"
    And I click save and continue button on "Product List Page"
    Then I am presented with the "Product Name Page"


  Scenario: Alcohol Duty Returns Journey - When Draught Relief & Small Producer Relief are set to YES
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "5" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I select radio button "Yes" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I verify the ABV value displayed as "5% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 376                     |
      | Cider, tax type code 377                    |
      | Wine, tax type code 378                     |
      | Other fermented products, tax type code 379 |
      | Spirits, tax type code 380                  |
    When I select radio button "Wine, tax type code 378" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Declare Small Producer Relief Duty Rate Page"
    When I enter "50" on "Declare Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Declare Small Producer Relief Duty Rate Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 5 |
      | you need to declare 100 litres of this entry            |
    And I can see below text for "duty due"
      | the entry having 5 litres of pure alcohol (Lpa)                     |
      | the duty rate for this entry being £50.00 per litre of pure alcohol |
    When I click continue button on "Duty Due Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate        | Duty due |
      | TestName | 5% ABV           | Yes                         | Yes                                | 378           | 100 litres | 5 litres     | £50.00 per litre | £250.00  |
    When I click save and continue button on "Check Your Answers Page"
    Then I am presented with the "Product List Page"
    And I should see the following product details
      | Name     | Duty due | Action        |
      | TestName | £250.00  | Change Remove |
    When I select radio button "No" on "Product List Page"
    And I click save and continue button on "Product List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Change the products you’ve told us about | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed                                | Not started                                  | Not started                                |


  Scenario: Alcohol Duty Returns Journey - verifying change link functionality on Product List Page
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "5" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I select radio button "Yes" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I verify the ABV value displayed as "5% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 376                     |
      | Cider, tax type code 377                    |
      | Wine, tax type code 378                     |
      | Other fermented products, tax type code 379 |
      | Spirits, tax type code 380                  |
    When I select radio button "Wine, tax type code 378" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Declare Small Producer Relief Duty Rate Page"
    When I enter "50" on "Declare Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Declare Small Producer Relief Duty Rate Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 5 |
      | you need to declare 100 litres of this entry            |
    And I can see below text for "duty due"
      | the entry having 5 litres of pure alcohol (Lpa)                     |
      | the duty rate for this entry being £50.00 per litre of pure alcohol |
    When I click continue button on "Duty Due Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate        | Duty due |
      | TestName | 5% ABV           | Yes                         | Yes                                | 378           | 100 litres | 5 litres     | £50.00 per litre | £250.00  |
    When I click save and continue button on "Check Your Answers Page"
    Then I am presented with the "Product List Page"
    And I should see the following product details
      | Name     | Duty due | Action        |
      | TestName | £250.00  | Change Remove |
    When I click "Change Hyperlink" on "Product List Page"
    Then I am presented with the "Check Your Answers Page" with new url

  Scenario: Alcohol Duty Returns Journey - Remove Product on Product List Page
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "5" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I select radio button "Yes" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I verify the ABV value displayed as "5% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 376                     |
      | Cider, tax type code 377                    |
      | Wine, tax type code 378                     |
      | Other fermented products, tax type code 379 |
      | Spirits, tax type code 380                  |
    When I select radio button "Wine, tax type code 378" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Declare Small Producer Relief Duty Rate Page"
    When I enter "50" on "Declare Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Declare Small Producer Relief Duty Rate Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 5 |
      | you need to declare 100 litres of this entry            |
    And I can see below text for "duty due"
      | the entry having 5 litres of pure alcohol (Lpa)                     |
      | the duty rate for this entry being £50.00 per litre of pure alcohol |
    When I click continue button on "Duty Due Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate        | Duty due |
      | TestName | 5% ABV           | Yes                         | Yes                                | 378           | 100 litres | 5 litres     | £50.00 per litre | £250.00  |
    When I click save and continue button on "Check Your Answers Page"
    Then I am presented with the "Product List Page"
    And I should see the following product details
      | Name     | Duty due | Action        |
      | TestName | £250.00  | Change Remove |
    When I click "Remove Hyperlink" on "Product List Page"
    Then I am presented with the "Delete Product Page"
    When I select radio button "No" on "Delete Product Page"
    And I click save and continue button on "Delete Product Page"
    Then I am presented with the "Product List Page"
    When I click "Remove Hyperlink" on "Product List Page"
    Then I am presented with the "Delete Product Page"
    When I select radio button "Yes" on "Delete Product Page"
    And I click save and continue button on "Delete Product Page"
    Then I am presented with the "Product List Page"
    And I should see the following product details
      | Name | Duty due | Action |


