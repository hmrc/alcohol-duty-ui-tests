@Test @AlcoholToDeclareChangeLinks
Feature: Alcohol Duty Returns Journey - Change Links - CYA Page

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
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
    Then I am presented with the "Pure Alcohol Page" "1.1"
    And I can see below text on the "Pure Alcohol Page"
      | this product is 1.1% Alcohol by Volume (ABV) strength |
      | you need to declare 100 litres of this product        |
    When I click continue button on "Pure Alcohol Page"
    Then I am presented with the "Product Duty Rate Page" "£0.00"
    And I can see below text on the "Product Duty Rate Page"
      | Litres of pure alcohol: 1.1 |
      | Tax type: 301               |
      | Duty rate per litre: £0.00  |
    When I click continue button on "Product Duty Rate Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate       | Duty due |
      | TestName | 1.1% ABV         | No                          | No                                 | 301           | 100 litres | 1.1 litres   | £0.00 per litre | £0.00    |


  Scenario: 1. To verify 'Change' link functionality for Product Name
    When I click "Change Name" on "Check Your Answers Page"
    Then I am presented with the "Product Name Page" with new url
    When I enter "TestNameNew" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name        | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate       | Duty due |
      | TestNameNew | 1.1% ABV         | No                          | No                                 | 301           | 100 litres | 1.1 litres   | £0.00 per litre | £0.00    |


  Scenario: 2. To verify 'Change' link functionality for Alcohol Strength
    When I click "Change Alcohol Strength" on "Check Your Answers Page"
    Then I am presented with the "Alcohol By Volume Page" with new url
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Check Your Answers Page"
    When I click "Change Alcohol Strength" on "Check Your Answers Page"
    When I enter "5" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "No" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I select radio button "No" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I verify the ABV value displayed as "5% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 321                     |
      | Cider, tax type code 322                    |
      | Wine, tax type code 323                     |
      | Other fermented products, tax type code 324 |
      | Spirits, tax type code 325                  |
    When I select radio button "Beer, tax type code 321" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Pure Alcohol Page" "5"
    And I can see below text on the "Pure Alcohol Page"
      | this product is 5% Alcohol by Volume (ABV) strength |
      | you need to declare 100 litres of this product      |
    When I click continue button on "Pure Alcohol Page"
    Then I am presented with the "Product Duty Rate Page" "£105.05"
    And I can see below text on the "Product Duty Rate Page"
      | Litres of pure alcohol: 5   |
      | Tax type: 321               |
      | Duty rate per litre: £21.01 |
    When I click continue button on "Product Duty Rate Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate        | Duty due |
      | TestName | 5% ABV           | No                          | No                                 | 321           | 100 litres | 5 litres     | £21.01 per litre | £105.05  |


  Scenario: 3. To verify 'Change' link functionality for Eligible for Draught Relief
    When I click "Change Eligible for Draught Relief" on "Check Your Answers Page"
    Then I am presented with the "Draught Relief Question Page" with new url
    When I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Check Your Answers Page"
    When I click "Change Eligible for Draught Relief" on "Check Your Answers Page"
    Then I am presented with the "Draught Relief Question Page" with new url
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Producer Relief Question Page"
    When I select radio button "No" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I verify the ABV value displayed as "1.1% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 351                     |
      | Cider, tax type code 352                    |
      | Wine, tax type code 353                     |
      | Other fermented products, tax type code 354 |
      | Spirits, tax type code 355                  |
    When I select radio button "Spirits, tax type code 355" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Pure Alcohol Page" "1.1"
    And I can see below text on the "Pure Alcohol Page"
      | this product is 1.1% Alcohol by Volume (ABV) strength |
      | you need to declare 100 litres of this product        |
    When I click continue button on "Pure Alcohol Page"
    Then I am presented with the "Product Duty Rate Page" "£9.26"
    And I can see below text on the "Product Duty Rate Page"
      | Litres of pure alcohol: 1.1 |
      | Tax type: 355               |
      | Duty rate per litre: £8.42  |
    When I click continue button on "Product Duty Rate Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate       | Duty due |
      | TestName | 1.1% ABV         | Yes                         | No                                 | 355           | 100 litres | 1.1 litres   | £8.42 per litre | £9.26    |


  Scenario: 4. To verify 'Change' link functionality for Small Producer Relief and Duty Rate
    When I click "Change Eligible for Small Producer Relief" on "Check Your Answers Page"
    Then I am presented with the "Small Producer Relief Question Page" with new url
    When I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Check Your Answers Page"
    When I click "Change Eligible for Small Producer Relief" on "Check Your Answers Page"
    Then I am presented with the "Small Producer Relief Question Page" with new url
    When I select radio button "Yes" on "Small Producer Relief Question Page"
    And I click save and continue button on "Small Producer Relief Question Page"
    Then I am presented with the "Tax Type Page"
    And I verify the ABV value displayed as "1.1% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 361                     |
      | Cider, tax type code 362                    |
      | Wine, tax type code 363                     |
      | Other fermented products, tax type code 364 |
      | Spirits, tax type code 365                  |
    When I select radio button "Wine, tax type code 363" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Declare Small Producer Relief Duty Rate Page"
    When I enter "50" on "Declare Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Declare Small Producer Relief Duty Rate Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Pure Alcohol Page" "1.1"
    And I can see below text on the "Pure Alcohol Page"
      | this product is 1.1% Alcohol by Volume (ABV) strength |
      | you need to declare 100 litres of this product        |
    When I click continue button on "Pure Alcohol Page"
    Then I am presented with the "Product Duty Rate Page" "£55.00"
    And I can see below text on the "Product Duty Rate Page"
      | Litres of pure alcohol: 1.1 |
      | Tax type: 363               |
      | Duty rate per litre: £50.00 |
    When I click continue button on "Product Duty Rate Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate        | Duty due |
      | TestName | 1.1% ABV         | No                          | Yes                                | 363           | 100 litres | 1.1 litres   | £50.00 per litre | £55.00   |
# verify change link functionality for Duty rate
    When I click "Change Duty Rate" on "Check Your Answers Page"
    Then I am presented with the "Declare Small Producer Relief Duty Rate Page" with new url
    When I click save and continue button on "Declare Small Producer Relief Duty Rate Page"
    Then I am presented with the "Check Your Answers Page"
    When I click "Change Duty Rate" on "Check Your Answers Page"
    Then I am presented with the "Declare Small Producer Relief Duty Rate Page" with new url
    When I enter "100" on "Declare Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Declare Small Producer Relief Duty Rate Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Pure Alcohol Page" "1.1"
    And I can see below text on the "Pure Alcohol Page"
      | this product is 1.1% Alcohol by Volume (ABV) strength |
      | you need to declare 100 litres of this product        |
    When I click continue button on "Pure Alcohol Page"
    Then I am presented with the "Product Duty Rate Page" "£110.00"
    And I can see below text on the "Product Duty Rate Page"
      | Litres of pure alcohol: 1.1  |
      | Tax type: 363                |
      | Duty rate per litre: £100.00 |
    When I click continue button on "Product Duty Rate Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate         | Duty due |
      | TestName | 1.1% ABV         | No                          | Yes                                | 363           | 100 litres | 1.1 litres   | £100.00 per litre | £110.00  |


  Scenario: 5. To verify 'Change' link functionality for Tax Type Code
    When I click "Change Tax Type Code" on "Check Your Answers Page"
    Then I am presented with the "Tax Type Page" with new url
    When I click save and continue button on "Tax Type Page"
    Then I am presented with the "Check Your Answers Page"
    When I click "Change Tax Type Code" on "Check Your Answers Page"
    Then I am presented with the "Tax Type Page" with new url
    And I verify the ABV value displayed as "1.1% Alcohol by Volume (ABV) strength" on "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Wine, tax type code 301                     |
      | Other fermented products, tax type code 301 |
      | Beer, tax type code 301                     |
      | Cider, tax type code 301                    |
      | Spirits, tax type code 301                  |
    When I select radio button "Cider, tax type code 301" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Pure Alcohol Page" "1.1"
    And I can see below text on the "Pure Alcohol Page"
      | this product is 1.1% Alcohol by Volume (ABV) strength |
      | you need to declare 100 litres of this product        |
    When I click continue button on "Pure Alcohol Page"
    Then I am presented with the "Product Duty Rate Page" "£0.00"
    And I can see below text on the "Product Duty Rate Page"
      | Litres of pure alcohol: 1.1 |
      | Tax type: 301               |
      | Duty rate per litre: £0.00  |
    When I click continue button on "Product Duty Rate Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate       | Duty due |
      | TestName | 1.1% ABV         | No                          | No                                 | 301           | 100 litres | 1.1 litres   | £0.00 per litre | £0.00    |


  Scenario: 6. To verify 'Change' link functionality for Product Volume
    When I click "Change Volume" on "Check Your Answers Page"
    Then I am presented with the "Product Volume Page" with new url
    When I click save and continue button on "Product Volume Page"
    Then I am presented with the "Check Your Answers Page"
    When I click "Change Volume" on "Check Your Answers Page"
    Then I am presented with the "Product Volume Page" with new url
    When I enter "200" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Pure Alcohol Page" "2.2"
    And I can see below text on the "Pure Alcohol Page"
      | this product is 1.1% Alcohol by Volume (ABV) strength |
      | you need to declare 200 litres of this product        |
    When I click continue button on "Pure Alcohol Page"
    Then I am presented with the "Product Duty Rate Page" "£0.00"
    And I can see below text on the "Product Duty Rate Page"
      | Litres of pure alcohol: 2.2 |
      | Tax type: 301               |
      | Duty rate per litre: £0.00  |
    When I click continue button on "Product Duty Rate Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Eligible for Draught Relief | Eligible for Small Producer Relief | Tax type code | Volume     | Pure alcohol | Duty rate       | Duty due |
      | TestName | 1.1% ABV         | No                          | No                                 | 301           | 200 litres | 2.2 litres   | £0.00 per litre | £0.00    |