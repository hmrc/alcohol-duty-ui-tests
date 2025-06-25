@AllTests @AlcoholToDeclareChangeLinks @wip
Feature: Alcohol Duty Returns Journey - Change Links - CYA Page

  Background: Common Steps - Alcohol Duty Returns
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"

  @Test
  Scenario: Beer- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality
    When I click on "Declare beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.5500" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "77.5500" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "66.3400" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "999.19" for "Standard beer at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "99.1300" for "Standard beer at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "887.54" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "66.4400" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I enter "66.8900" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page"
    When I enter "888.88" for "Non-draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "99.4500" for "Non-draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "15" for "Non-draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "776.45" for "Non-draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "78.9000" for "Non-draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "18" for "Non-draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "776.89" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "99.9900" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "15" for "Draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "889.65" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I enter "66.5400" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I enter "20" for "Draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311)     |
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 321)     |
      | Non-draught beer between 8.5% and 22% ABV (tax type code 331)      |
      | Non-draught beer at or above 22.1% ABV (tax type code 341)         |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 351)         |
      | Draught beer between 3.5% and 8.4% ABV (tax type code 356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (tax type code 376 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 999.19 litres  |
      | Pure alcohol  | 99.1300 litres |
      | Total volume  | 945.55 litres  |
      | Pure alcohol  | 55.5500 litres |
      | Total volume  | 667.32 litres  |
      | Pure alcohol  | 66.3400 litres |
      | Total volume  | 898.34 litres  |
      | Pure alcohol  | 77.5500 litres |
      | Total volume  | 699.45 litres  |
      | Pure alcohol  | 66.8900 litres |
      | Total volume  | 887.54 litres  |
      | Pure alcohol  | 66.4400 litres |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.4500 litres |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9000 litres |
      | SPR duty rate | £18.00         |
      | Total volume  | 776.89 litres  |
      | Pure alcohol  | 99.9900 litres |
      | SPR duty rate | £15.00         |
      | Total volume  | 889.65 litres  |
      | Pure alcohol  | 66.5400 litres |
      | SPR duty rate | £20.00         |
#To verify 'Change' link functionality for Beer to declare
    When I click "Change Beer to declare" on "Check Your Answers Returns Beer Page"
    Then I am presented with the "What Do You Need To Declare Beer Page" with new url
    When I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    When I click "Change Beer to declare" on "Check Your Answers Returns Beer Page"
    Then I am presented with the "What Do You Need To Declare Beer Page" with new url
    When I "unselect" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "77.5500" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "66.3400" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "999.19" for "Standard beer at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "99.1300" for "Standard beer at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "887.54" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "66.4400" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "66.8900" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page"
    When I enter "888.88" for "Non-draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "99.4500" for "Non-draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "15" for "Non-draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "776.45" for "Non-draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "78.9000" for "Non-draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "18" for "Non-draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "776.89" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "99.9900" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "15" for "Draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "889.65" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I enter "66.5400" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I enter "20" for "Draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 321)     |
      | Non-draught beer between 8.5% and 22% ABV (tax type code 331)      |
      | Non-draught beer at or above 22.1% ABV (tax type code 341)         |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 351)         |
      | Draught beer between 3.5% and 8.4% ABV (tax type code 356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (tax type code 376 SPR)     |
    And I check the page source for the following key-value pairs:
      | Total volume  | 945.55 litres  |
      | Pure alcohol  | 55.5500 litres |
      | Total volume  | 667.32 litres  |
      | Pure alcohol  | 66.3400 litres |
      | Total volume  | 898.34 litres  |
      | Pure alcohol  | 77.5500 litres |
      | Total volume  | 699.45 litres  |
      | Pure alcohol  | 66.8900 litres |
      | Total volume  | 887.54 litres  |
      | Pure alcohol  | 66.4400 litres |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.4500 litres |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9000 litres |
      | SPR duty rate | £18.00         |
      | Total volume  | 776.89 litres  |
      | Pure alcohol  | 99.9900 litres |
      | SPR duty rate | £15.00         |
      | Total volume  | 889.65 litres  |
      | Pure alcohol  | 66.5400 litres |
      | SPR duty rate | £20.00         |
#To verify 'Change' link functionality for Beer duty
    When I click "Change Beer duty" on "Check Your Answers Returns Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page" with new url
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    When I click "Change Beer duty" on "Check Your Answers Returns Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page" with new url
    And I enter "999.99" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "99.9900" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 321)     |
      | Non-draught beer between 8.5% and 22% ABV (tax type code 331)      |
      | Non-draught beer at or above 22.1% ABV (tax type code 341)         |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 351)         |
      | Draught beer between 3.5% and 8.4% ABV (tax type code 356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (tax type code 376 SPR)     |
    And I check the page source for the following key-value pairs:
      | Total volume  | 999.99 litres  |
      | Pure alcohol  | 99.9900 litres |
      | Total volume  | 667.32 litres  |
      | Pure alcohol  | 66.3400 litres |
      | Total volume  | 898.34 litres  |
      | Pure alcohol  | 77.5500 litres |
      | Total volume  | 699.45 litres  |
      | Pure alcohol  | 66.8900 litres |
      | Total volume  | 887.54 litres  |
      | Pure alcohol  | 66.4400 litres |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.4500 litres |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9000 litres |
      | SPR duty rate | £18.00         |
      | Total volume  | 776.89 litres  |
      | Pure alcohol  | 99.9900 litres |
      | SPR duty rate | £15.00         |
      | Total volume  | 889.65 litres  |
      | Pure alcohol  | 66.5400 litres |
      | SPR duty rate | £20.00         |
#To verify 'Change' link functionality for Beer eligible for Small Producer Relief
    When I click "Change Beer eligible for Small Producer Relief" on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page" with new url
    And I click save and continue button on "Single Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    When I click "Change Beer eligible for Small Producer Relief" on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page" with new url
    When I enter "9999.99" for "Non-draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "999.9900" for "Non-draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "99.99" for "Non-draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I click save and continue button on "Single Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I check the page source for the following key-value pairs:
      | Total volume  | 999.99 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | Total volume  | 667.32 litres   |
      | Pure alcohol  | 66.3400 litres  |
      | Total volume  | 898.34 litres   |
      | Pure alcohol  | 77.5500 litres  |
      | Total volume  | 699.45 litres   |
      | Pure alcohol  | 66.8900 litres  |
      | Total volume  | 887.54 litres   |
      | Pure alcohol  | 66.4400 litres  |
      | Total volume  | 9,999.99 litres |
      | Pure alcohol  | 999.9900 litres |
      | SPR duty rate | £99.99          |
      | Total volume  | 776.45 litres   |
      | Pure alcohol  | 78.9000 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 776.89 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 889.65 litres   |
      | Pure alcohol  | 66.5400 litres  |
      | SPR duty rate | £20.00          |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£113,432.75"
#At the 'Action' section, currently the UI tests are pulling hidden text too. This method will be improved at later stage
    And I should see the following product details
      | Description                                                        | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 321)     | 99.9900                      | £21.78                | £2,177.78  | Change |
      | Non-draught beer between 8.5% and 22% ABV (tax type code 331)      | 66.3400                      | £29.54                | £1,959.68  | Change |
      | Non-draught beer at or above 22.1% ABV (tax type code 341)         | 99.1300                      | £32.79                | £3,250.47  | Change |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 351)         | 66.4400                      | £8.28                 | £550.12    | Change |
      | Draught beer between 3.5% and 8.4% ABV (tax type code 356)         | 66.8900                      | £18.76                | £1,254.85  | Change |
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 361 SPR) | 999.9900                     | £99.99                | £99,989.00 | Change |
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 366 SPR) | 78.9000                      | £18.00                | £1,420.20  | Change |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 371 SPR)     | 99.9900                      | £15.00                | £1,499.85  | Change |
      | Draught beer between 3.5% and 8.4% ABV (tax type code 376 SPR)     | 66.5400                      | £20.00                | £1,330.80  | Change |
#At Duty due page, all the change links are designed to redirect to Check your answers page so I am checking a couple of random links
    When I click on change link 1 on "Duty Due Beer Page" for alcohol type "Beer"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£113,432.75"
    When I click on change link 5 on "Duty Due Beer Page" for alcohol type "Beer"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£113,432.75"

  @Test
  Scenario: Beer- Alcohol Duty Returns Journey - When Multiple SPR is set to 'Yes' - Change link functionality
    When I click on "Declare beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.5500" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "77.5500" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "66.3400" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "999.19" for "Standard beer at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "99.1300" for "Standard beer at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "887.54" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "66.4400" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I enter "66.8900" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page"
    When I select radio button "Non-draught beer between 1.3% and 3.4% ABV (361 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "9999.99" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "89.9900" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "19" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                                        | Total beer      | Total pure alcohol | Duty rate        |
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 361 SPR) | 9,999.99 litres | 89.9900 LPA        | £19.00 per litre |
#To verify 'Change' link functionality at Check Your Answers SPR Beer Page. All the links are set to redirect to the same page so checking only one link
    When I click "Change Description" on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" with url suffix as "#taxType"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    When I click "Change Description" on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" with url suffix as "#taxType"
    When I select radio button "Non-draught beer between 3.5% and 8.4% ABV (366 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                                        | Total beer      | Total pure alcohol | Duty rate        |
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 366 SPR) | 9,999.99 litres | 89.9900 LPA        | £19.00 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                                        | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 366 SPR) | 9,999.99                       | 89.9900                      | £19.00                | Change Remove |
#To verify 'Change' link functionality at Multiple SPR List Question Beer Page
    When I click "Change hyperlink" on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" with existing url suffix as "?index=0"
    When I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    When I click "Change hyperlink" on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" with existing url suffix as "?index=0"
    When I select radio button "Draught beer between 1.3% and 3.4% ABV (371 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "8888.88" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "88.8800" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "22" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page" with url suffix as "?index=0"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                                    | Total beer      | Total pure alcohol | Duty rate        |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 371 SPR) | 8,888.88 litres | 88.8800 LPA        | £22.00 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                                    | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 371 SPR) | 8,888.88                       | 88.8800                      | £22.00                | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Beer Page"
    And I click save and continue button on "Multiple SPR List Question Beer Page"
    Then I am presented with the "You Have Some Missing Details Page"
    And I select radio button "Delete these declarations from this return" on "You Have Some Missing Details Page"
    When I click save and continue button on "You Have Some Missing Details Page"
    Then I am presented with the "Are You Sure You Want To Delete These Declarations From Your Return Page"
    And  I select radio button "Yes, delete these declarations" on "Are You Sure You Want To Delete These Declarations From Your Return Page"
    When I click confirm and continue button on "Are You Sure You Want To Delete These Declarations From Your Return Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311)     |
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 321)     |
      | Non-draught beer between 8.5% and 22% ABV (tax type code 331)      |
      | Non-draught beer at or above 22.1% ABV (tax type code 341)         |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 351)         |
      | Draught beer between 3.5% and 8.4% ABV (tax type code 356)         |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 371 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 945.55 litres   |
      | Pure alcohol | 55.5500 litres  |
      | Total volume | 898.34 litres   |
      | Pure alcohol | 77.5500 litres  |
      | Total volume | 667.32 litres   |
      | Pure alcohol | 66.3400 litres  |
      | Total volume | 999.19 litres   |
      | Pure alcohol | 99.1300 litres  |
      | Total volume | 887.54 litres   |
      | Pure alcohol | 66.4400 litres  |
      | Total volume | 699.45 litres   |
      | Pure alcohol | 66.8900 litres  |
      | Total volume | 8,888.88 litres |
      | Pure alcohol | 88.8800 litres  |

  @AllTests
  Scenario: Cider- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality
    When I click on "Declare cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I "select" checkbox "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR),Cider between 1.3% and 3.4% ABV (tax type code 372 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page"
    When I enter "789.44" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "43.4400" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "898.12" for "Standard cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "22.2200" for "Standard cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "999.99" for "Standard sparkling between 5.6% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "99.9900" for "Standard sparkling between 5.6% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "787.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I enter "33.2100" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I enter "889.12" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "fifth" input box
    And I enter "22.4500" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "fifth" input box
    And I enter "888.88" for "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "sixth" input box
    And I enter "888.8800" for "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page"
    When I enter "656.66" for "Non-draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "66.6600" for "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "14" for "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "999.99" for "Non-draught cider between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "98.9900" for "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "12.45" for "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "6666.66" for "Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "666.6600" for "Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "36" for "Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "887.21" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "fourth" input box
    And I enter "45.5600" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "fourth" input box
    And I enter "16" for "Draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "fourth" input box
    And I enter "653.11" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "fifth" input box
    And I enter "33.3300" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "fifth" input box
    And I enter "18" for "Draught cider between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "fifth" input box
    And I enter "777.77" for "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "sixth" input box
    And I enter "77.7700" for "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "sixth" input box
    And I enter "17" for "Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "sixth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322)     |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 324)                                         |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357)         |
      | Draught sparkling cider between 5.6% and 8.4% ABV (tax type code 359)                                             |
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR) |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR)                                     |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 372 SPR)                                                   |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR)     |
      | Draught sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)                                         |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 789.44 litres   |
      | Pure alcohol  | 43.4400 litres  |
      | Total volume  | 898.12 litres   |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 999.99 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | Total volume  | 889.12 litres   |
      | Pure alcohol  | 22.4500 litres  |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 888.8800 litres |
      | Total volume  | 787.77 litres   |
      | Pure alcohol  | 33.2100 litres  |
      | Total volume  | 656.66 litres   |
      | Pure alcohol  | 66.6600 litres  |
      | SPR duty rate | £14.00          |
      | Total volume  | 999.99 litres   |
      | Pure alcohol  | 98.9900 litres  |
      | SPR duty rate | £12.45          |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 666.6600 litres |
      | SPR duty rate | £36.00          |
      | Total volume  | 887.21 litres   |
      | Pure alcohol  | 45.5600 litres  |
      | SPR duty rate | £16.00          |
      | Total volume  | 653.11 litres   |
      | Pure alcohol  | 33.3300 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 777.77 litres   |
      | Pure alcohol  | 77.7700 litres  |
      | SPR duty rate | £17.00          |
#To verify 'Change' link functionality for cider to declare
    When I click "Change Cider to declare" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "What Do You Need To Declare Cider Page" with new url
    When I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I click "Change Cider to declare" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "What Do You Need To Declare Cider Page" with new url
    When I "unselect" checkbox "Sparkling cider between 5.6% and 8.4% ABV (tax type code 359)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page"
    When I enter "789.44" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "43.4400" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "898.12" for "Standard cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "22.2200" for "Standard cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "999.99" for "Standard sparkling between 5.6% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "99.9900" for "Standard sparkling between 5.6% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "787.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I enter "33.2100" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I enter "889.12" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "fifth" input box
    And I enter "22.4500" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "fifth" input box
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page"
    When I enter "656.66" for "Non-draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "66.6600" for "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "14" for "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "999.99" for "Non-draught cider between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "98.9900" for "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "12.45" for "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "6666.66" for "Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "666.6600" for "Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "36" for "Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "887.21" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "fourth" input box
    And I enter "45.5600" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "fourth" input box
    And I enter "16" for "Draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "fourth" input box
    And I enter "653.11" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "fifth" input box
    And I enter "33.3300" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "fifth" input box
    And I enter "18" for "Draught cider between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "fifth" input box
    And I enter "777.77" for "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "sixth" input box
    And I enter "77.7700" for "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "sixth" input box
    And I enter "17" for "Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "sixth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322)     |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 324)                                         |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357)         |
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR) |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR)                                     |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 372 SPR)                                                   |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR)     |
      | Draught sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)                                         |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 789.44 litres   |
      | Pure alcohol  | 43.4400 litres  |
      | Total volume  | 898.12 litres   |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 999.99 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | Total volume  | 889.12 litres   |
      | Pure alcohol  | 22.4500 litres  |
      | Total volume  | 787.77 litres   |
      | Pure alcohol  | 33.2100 litres  |
      | Total volume  | 656.66 litres   |
      | Pure alcohol  | 66.6600 litres  |
      | SPR duty rate | £14.00          |
      | Total volume  | 999.99 litres   |
      | Pure alcohol  | 98.9900 litres  |
      | SPR duty rate | £12.45          |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 666.6600 litres |
      | SPR duty rate | £36.00          |
      | Total volume  | 887.21 litres   |
      | Pure alcohol  | 45.5600 litres  |
      | SPR duty rate | £16.00          |
      | Total volume  | 653.11 litres   |
      | Pure alcohol  | 33.3300 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 777.77 litres   |
      | Pure alcohol  | 77.7700 litres  |
      | SPR duty rate | £17.00          |
#To verify 'Change' link functionality for Cider to duty
    When I click "Change Cider duty" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page" with new url
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I click "Change Cider duty" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page" with new url
    When I enter "999.99" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "99.9900" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322)     |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 324)                                         |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357)         |
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR) |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR)                                     |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 372 SPR)                                                   |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR)     |
      | Draught sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)                                         |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 999.99 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | Total volume  | 898.12 litres   |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 999.99 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | Total volume  | 889.12 litres   |
      | Pure alcohol  | 22.4500 litres  |
      | Total volume  | 787.77 litres   |
      | Pure alcohol  | 33.2100 litres  |
      | Total volume  | 656.66 litres   |
      | Pure alcohol  | 66.6600 litres  |
      | SPR duty rate | £14.00          |
      | Total volume  | 999.99 litres   |
      | Pure alcohol  | 98.9900 litres  |
      | SPR duty rate | £12.45          |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 666.6600 litres |
      | SPR duty rate | £36.00          |
      | Total volume  | 887.21 litres   |
      | Pure alcohol  | 45.5600 litres  |
      | SPR duty rate | £16.00          |
      | Total volume  | 653.11 litres   |
      | Pure alcohol  | 33.3300 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 777.77 litres   |
      | Pure alcohol  | 77.7700 litres  |
      | SPR duty rate | £17.00          |
#To verify 'Change' link functionality for Cider eligible for Small Producer Relief
    When I click "Change Cider eligible for Small Producer Relief" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page" with new url
    And I click save and continue button on "Single Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I click "Change Cider eligible for Small Producer Relief" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page" with new url
    And I enter "777.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "77.7700" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "7.7" for "Draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I click save and continue button on "Single Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322)     |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 324)                                         |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357)         |
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR) |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR)                                     |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 372 SPR)                                                   |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR)     |
      | Draught sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)                                         |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 999.99 litres  |
      | Pure alcohol  | 99.9900 litres |
      | Total volume  | 898.12 litres  |
      | Pure alcohol  | 22.2200 litres |
      | Total volume  | 999.99 litres  |
      | Pure alcohol  | 99.9900 litres |
      | Total volume  | 889.12 litres  |
      | Pure alcohol  | 22.4500 litres |
      | Total volume  | 787.77 litres  |
      | Pure alcohol  | 33.2100 litres |
      | Total volume  | 656.66 litres  |
      | Pure alcohol  | 66.6600 litres |
      | SPR duty rate | £14.00         |
      | Total volume  | 999.99 litres  |
      | Pure alcohol  | 98.9900 litres |
      | SPR duty rate | £12.45         |
      | Total volume  | 777.77 litres  |
      | Pure alcohol  | 77.7700 litres |
      | SPR duty rate | £7.70          |
      | Total volume  | 887.21 litres  |
      | Pure alcohol  | 45.5600 litres |
      | SPR duty rate | £16.00         |
      | Total volume  | 653.11 litres  |
      | Pure alcohol  | 33.3300 litres |
      | SPR duty rate | £18.00         |
      | Total volume  | 777.77 litres  |
      | Pure alcohol  | 77.7700 litres |
      | SPR duty rate | £17.00         |
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£9,634.46"
    And I should see the following product details
      | Description                                                                                                       | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312)                                                   | 99.9900                      | £9.61                 | £960.90    | Change |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322)     | 22.2200                      | £10.02                | £222.64    | Change |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 324)                                         | 99.9900                      | £25.67                | £2,566.74  | Change |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 352)                                                       | 33.2100                      | £8.28                 | £274.97    | Change |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357)         | 22.4500                      | £8.63                 | £193.74    | Change |
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 362 SPR)                                               | 66.6600                      | £14.00                | £933.24    | Change |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR) | 98.9900                      | £12.45                | £1,232.42  | Change |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR)                                     | 77.7700                      | £7.70                 | £598.82    | Change |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 372 SPR)                                                   | 45.5600                      | £16.00                | £728.96    | Change |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR)     | 33.3300                      | £18.00                | £599.94    | Change |
      | Draught sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)                                         | 77.7700                      | £17.00                | £1,322.09  | Change |
    When I click on change link 3 on "Duty Due Cider Page" for alcohol type "Cider"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£9,634.46"
    When I click on change link 4 on "Duty Due Cider Page" for alcohol type "Cider"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£9,634.46"

  @AllTests
  Scenario: Cider- Alcohol Duty Returns Journey - When Multiple SPR is set to 'Yes' - Change link functionality
    When I click on "Declare cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I "select" checkbox "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR),Cider between 1.3% and 3.4% ABV (tax type code 372 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page"
    When I enter "789.44" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "43.4400" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "898.12" for "Standard cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "22.2200" for "Standard cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "999.99" for "Standard sparkling between 5.6% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "99.9900" for "Standard sparkling between 5.6% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "787.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I enter "33.2100" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I enter "889.12" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "fifth" input box
    And I enter "22.4500" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "fifth" input box
    And I enter "888.88" for "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "sixth" input box
    And I enter "888.8800" for "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page"
    When I select radio button "Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR)" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "7999.99" for "Total litres" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "77.9900" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "20.99" for "Duty rate" on "Multiple Small Producer Relief Rate Cider Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers SPR Cider Page"
    And I should see following details at the "Check Your Answers SPR Cider Page"
      | Description                                                                                                       | Total cider     | Total pure alcohol | Duty rate        |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR) | 7,999.99 litres | 77.9900 LPA        | £20.99 per litre |
  #To verify 'Change' link functionality at Check Your Answers SPR Cider Page. All the links are set to redirect to the same page so checking only one link
    When I click "Change Total cider" on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page" with url suffix as "#totalLitres"
    And I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers SPR Cider Page"
    When I click "Change Total cider" on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page" with url suffix as "#totalLitres"
    When I select radio button "Draught cider between 1.3% and 3.4% ABV (372 SPR)" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "8888.88" for "Total litres" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "88.8800" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "8.88" for "Duty rate" on "Multiple Small Producer Relief Rate Cider Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers SPR Cider Page"
    And I should see following details at the "Check Your Answers SPR Cider Page"
      | Description                                                     | Total cider     | Total pure alcohol | Duty rate       |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 372 SPR) | 8,888.88 litres | 88.8800 LPA        | £8.88 per litre |
    When I click continue button on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple SPR List Question Cider Page"
    And I should see the following product details
      | Description                                                     | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 372 SPR) | 8,888.88                       | 88.8800                      | £8.88                 | Change Remove |
 #To verify 'Change' link functionality at Multiple SPR List Question Cider Page
    When I click "Change hyperlink" on "Multiple SPR List Question Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page" with existing url suffix as "?index=0"
    When I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    Then I am presented with the "Multiple SPR List Question Cider Page"
    When I click "Change hyperlink" on "Multiple SPR List Question Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page" with existing url suffix as "?index=0"
    When I select radio button "Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR)" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "8888.88" for "Total litres" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "88.8800" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "8.88" for "Duty rate" on "Multiple Small Producer Relief Rate Cider Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers SPR Cider Page" with url suffix as "?index=0"
    And I should see following details at the "Check Your Answers SPR Cider Page"
      | Description                                                                                                   | Total cider     | Total pure alcohol | Duty rate       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR) | 8,888.88 litres | 88.8800 LPA        | £8.88 per litre |
    When I click continue button on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple SPR List Question Cider Page"
    And I should see the following product details
      | Description                                                                                                   | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR) | 8,888.88                       | 88.8800                      | £8.88                 | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Cider Page"
    And I click save and continue button on "Multiple SPR List Question Cider Page"
    Then I am presented with the "You Have Some Missing Details Cider Page"
    And I select radio button "Delete these declarations from this return" on "You Have Some Missing Details Cider Page"
    When I click save and continue button on "You Have Some Missing Details Cider Page"
    Then I am presented with the "Are You Sure You Want To Delete These Declarations From Your Return Cider Page"
    And  I select radio button "Yes, delete these declarations" on "Are You Sure You Want To Delete These Declarations From Your Return Cider Page"
    When I click confirm and continue button on "Are You Sure You Want To Delete These Declarations From Your Return Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322)     |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 324)                                         |
      | Draught cider between 1.3% and 3.4% ABV (tax type code 352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357)         |
      | Draught sparkling cider between 5.6% and 8.4% ABV (tax type code 359)                                             |
#      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 362 SPR)                                               |
#      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR) |
#      | Non-draught sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR)                                     |
#      | Draught cider between 1.3% and 3.4% ABV (tax type code 372 SPR)                                                   |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR)     |
#      | Draught sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)                                         |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 789.44 litres   |
      | Pure alcohol | 43.4400 litres  |
      | Total volume | 898.12 litres   |
      | Pure alcohol | 22.2200 litres  |
      | Total volume | 999.99 litres   |
      | Pure alcohol | 99.9900 litres  |
      | Total volume | 787.77 litres   |
      | Pure alcohol | 33.2100 litres  |
      | Total volume | 889.12 litres   |
      | Pure alcohol | 22.4500 litres  |
      | Total volume | 8,888.88 litres |
      | Pure alcohol | 88.8800 litres  |
      | Total volume | 8,888.88 litres |
      | Pure alcohol | 88.8800 litres  |

  @AllTests
  Scenario: Wine- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality
    When I click on "Declare wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I "select" checkbox "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363 SPR),Wine between 3.5% and 8.4% ABV (tax type code 368 SPR),Wine between 1.3% and 3.4% ABV (tax type code 373 SPR),Wine between 3.5% and 8.4% ABV (tax type code 378 SPR)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "35.5500" for "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "88.8800" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "22.2200" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "990.01" for "Standard wine at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "82.2200" for "Standard wine at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "895.22" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "22.3300" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "569.33" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "sixth" input box
    And I enter "24.5500" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page"
    When I enter "888.88" for "Non-draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "99.4500" for "Non-draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "15" for "Non-draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "776.45" for "Non-draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "78.9000" for "Non-draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "18" for "Non-draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "776.89" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "99.9900" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "15" for "Draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "889.65" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I enter "66.5400" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I enter "20" for "Draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 323)     |
      | Non-draught wine between 8.5% and 22% ABV (tax type code 333)      |
      | Non-draught wine at or above 22.1% ABV (tax type code 343)         |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 353)         |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 3,698.52 litres |
      | Pure alcohol  | 88.8800 litres  |
      | Total volume  | 8,974.23 litres |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 1,234.55 litres |
      | Pure alcohol  | 35.5500 litres  |
      | Total volume  | 990.01 litres   |
      | Pure alcohol  | 82.2200 litres  |
      | Total volume  | 895.22 litres   |
      | Pure alcohol  | 22.3300 litres  |
      | Total volume  | 569.33 litres   |
      | Pure alcohol  | 24.5500 litres  |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 99.4500 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 776.45 litres   |
      | Pure alcohol  | 78.9000 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 776.89 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 889.65 litres   |
      | Pure alcohol  | 66.5400 litres  |
      | SPR duty rate | £20.00          |
#To verify 'Change' link functionality for cider to declare
    When I click "Change Wine to declare" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "What Do You Need To Declare Wine Page" with new url
    When I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I click "Change Wine to declare" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "What Do You Need To Declare Wine Page" with new url
    When I "unselect" checkbox "Wine at or above 22.1% ABV (tax type code 343)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "35.5500" for "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "88.8800" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "22.2200" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "895.22" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "22.3300" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "569.33" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "24.5500" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page"
    When I enter "888.88" for "Non-draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "99.4500" for "Non-draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "15" for "Non-draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "776.45" for "Non-draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "78.9000" for "Non-draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "18" for "Non-draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "776.89" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "99.9900" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "15" for "Draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "889.65" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I enter "66.5400" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I enter "20" for "Draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 323)     |
      | Non-draught wine between 8.5% and 22% ABV (tax type code 333)      |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 353)         |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 1,234.55 litres |
      | Pure alcohol  | 35.5500 litres  |
      | Total volume  | 3,698.52 litres |
      | Pure alcohol  | 88.8800 litres  |
      | Total volume  | 8,974.23 litres |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 895.22 litres   |
      | Pure alcohol  | 22.3300 litres  |
      | Total volume  | 569.33 litres   |
      | Pure alcohol  | 24.5500 litres  |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 99.4500 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 776.45 litres   |
      | Pure alcohol  | 78.9000 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 776.89 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 889.65 litres   |
      | Pure alcohol  | 66.5400 litres  |
      | SPR duty rate | £20.00          |
#To verify 'Change' link functionality for Wine to duty
    When I click "Change Wine duty" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page" with new url
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I click "Change Wine duty" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page" with new url
    And I enter "555.55" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "55.5500" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 323)     |
      | Non-draught wine between 8.5% and 22% ABV (tax type code 333)      |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 353)         |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 1,234.55 litres |
      | Pure alcohol  | 35.5500 litres  |
      | Total volume  | 3,698.52 litres |
      | Pure alcohol  | 88.8800 litres  |
      | Total volume  | 8,974.23 litres |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 895.22 litres   |
      | Pure alcohol  | 22.3300 litres  |
      | Total volume  | 555.55 litres   |
      | Pure alcohol  | 55.5500 litres  |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 99.4500 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 776.45 litres   |
      | Pure alcohol  | 78.9000 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 776.89 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 889.65 litres   |
      | Pure alcohol  | 66.5400 litres  |
      | SPR duty rate | £20.00          |
#To verify 'Change' link functionality for Wine eligible for Small Producer Relief
    When I click "Change Wine eligible for Small Producer Relief" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page" with new url
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I click "Change Wine eligible for Small Producer Relief" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page" with new url
    And I enter "444.44" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "44.4400" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "15" for "Draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 323)     |
      | Non-draught wine between 8.5% and 22% ABV (tax type code 333)      |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 353)         |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 1,234.55 litres |
      | Pure alcohol  | 35.5500 litres  |
      | Total volume  | 3,698.52 litres |
      | Pure alcohol  | 88.8800 litres  |
      | Total volume  | 8,974.23 litres |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 895.22 litres   |
      | Pure alcohol  | 22.3300 litres  |
      | Total volume  | 555.55 litres   |
      | Pure alcohol  | 55.5500 litres  |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 99.4500 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 776.45 litres   |
      | Pure alcohol  | 78.9000 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 444.44 litres   |
      | Pure alcohol  | 44.4400 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 889.65 litres   |
      | Pure alcohol  | 66.5400 litres  |
      | SPR duty rate | £20.00          |
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£9,415.89"
    And I should see the following product details
      | Description                                                        | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 313)     | 35.5500                      | £9.61                 | £341.63    | Change |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 323)     | 88.8800                      | £25.67                | £2,281.54  | Change |
      | Non-draught wine between 8.5% and 22% ABV (tax type code 333)      | 22.2200                      | £29.54                | £656.37    | Change |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 353)         | 22.3300                      | £8.28                 | £184.89    | Change |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 358)         | 55.5500                      | £18.76                | £1,042.11  | Change |
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 363 SPR) | 99.4500                      | £15.00                | £1,491.75  | Change |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 368 SPR) | 78.9000                      | £18.00                | £1,420.20  | Change |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR)     | 44.4400                      | £15.00                | £666.60    | Change |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 378 SPR)     | 66.5400                      | £20.00                | £1,330.80  | Change |
  #At Duty due page, all the change links are designed to redirect to Check your answers page so I am checking a couple of random links
    When I click on change link 3 on "Duty Due Wine Page" for alcohol type "Wine"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£9,415.89"
    When I click on change link 6 on "Duty Due Wine Page" for alcohol type "Wine"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£9,415.89"

  @AllTests
  Scenario: Wine- Alcohol Duty Returns Journey - When Multiple SPR is set to 'Yes' - Change link functionality
    When I click on "Declare wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I "select" checkbox "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363 SPR),Wine between 3.5% and 8.4% ABV (tax type code 368 SPR),Wine between 1.3% and 3.4% ABV (tax type code 373 SPR),Wine between 3.5% and 8.4% ABV (tax type code 378 SPR)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "35.5500" for "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "88.8800" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "22.2200" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "990.01" for "Standard wine at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "82.2200" for "Standard wine at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "895.22" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "22.3300" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "569.33" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "sixth" input box
    And I enter "24.5500" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page"
    When I select radio button "Non-draught wine between 3.5% and 8.4% ABV (368 SPR)" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "678.99" for "Total litres" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "66.4300" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "15.65" for "Duty rate" on "Multiple Small Producer Relief Rate Wine Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers SPR Wine Page"
    And I should see following details at the "Check Your Answers SPR Wine Page"
      | Description                                                        | Total wine    | Total pure alcohol | Duty rate        |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 368 SPR) | 678.99 litres | 66.4300 LPA        | £15.65 per litre |
  #To verify 'Change' link functionality at Check Your Answers SPR Wine Page. All the links are set to redirect to the same page so checking only one link
    When I click "Change Duty rate" on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page" with url suffix as "#dutyRate"
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers SPR Wine Page"
    When I click "Change Duty rate" on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page" with url suffix as "#dutyRate"
    When I select radio button "Draught wine between 1.3% and 3.4% ABV (373 SPR)" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "999.99" for "Total litres" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "88.8800" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "7.77" for "Duty rate" on "Multiple Small Producer Relief Rate Wine Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers SPR Wine Page"
    And I should see following details at the "Check Your Answers SPR Wine Page"
      | Description                                                    | Total wine    | Total pure alcohol | Duty rate       |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR) | 999.99 litres | 88.8800 LPA        | £7.77 per litre |
    When I click continue button on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple SPR List Question Wine Page"
    And I should see the following product details
      | Description                                                    | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR) | 999.99                         | 88.8800                      | £7.77                 | Change Remove |
 #To verify 'Change' link functionality at Multiple SPR List Question Cider Page
    When I click "Change hyperlink" on "Multiple SPR List Question Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page" with existing url suffix as "?index=0"
    When I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Multiple SPR List Question Wine Page"
    When I click "Change hyperlink" on "Multiple SPR List Question Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page" with existing url suffix as "?index=0"
    When I select radio button "Draught wine between 3.5% and 8.4% ABV (378 SPR)" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "999.99" for "Total litres" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "88.8800" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "7.77" for "Duty rate" on "Multiple Small Producer Relief Rate Wine Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers SPR Wine Page" with url suffix as "?index=0"
    And I should see following details at the "Check Your Answers SPR Wine Page"
      | Description                                                    | Total wine    | Total pure alcohol | Duty rate       |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 378 SPR) | 999.99 litres | 88.8800 LPA        | £7.77 per litre |
    When I click continue button on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple SPR List Question Wine Page"
    And I should see the following product details
      | Description                                                    | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 378 SPR) | 999.99                         | 88.8800                      | £7.77                 | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Wine Page"
    And I click save and continue button on "Multiple SPR List Question Wine Page"
    Then I am presented with the "You Have Some Missing Details Wine Page"
    And I select radio button "Delete these declarations from this return" on "You Have Some Missing Details Wine Page"
    When I click save and continue button on "You Have Some Missing Details Wine Page"
    Then I am presented with the "Are You Sure You Want To Delete These Declarations From Your Return Wine Page"
    And  I select radio button "Yes, delete these declarations" on "Are You Sure You Want To Delete These Declarations From Your Return Wine Page"
    When I click confirm and continue button on "Are You Sure You Want To Delete These Declarations From Your Return Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 323)     |
      | Non-draught wine between 8.5% and 22% ABV (tax type code 333)      |
      | Non-draught wine at or above 22.1% ABV (tax type code 343)         |
      | Draught wine between 1.3% and 3.4% ABV (tax type code 353)         |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 358)         |
#      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 363 SPR) |
#      | Non-draught wine between 3.5% and 8.4% ABV (tax type code 368 SPR) |
#      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (tax type code 378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 1,234.55 litres |
      | Pure alcohol | 35.5500 litres  |
      | Total volume | 3,698.52 litres |
      | Pure alcohol | 88.8800 litres  |
      | Total volume | 8,974.23 litres |
      | Pure alcohol | 22.2200 litres  |
      | Total volume | 990.01 litres   |
      | Pure alcohol | 82.2200 litres  |
      | Total volume | 895.22 litres   |
      | Pure alcohol | 22.3300 litres  |
      | Total volume | 569.33 litres   |
      | Pure alcohol | 24.5500 litres  |
      | Total volume | 999.99 litres   |
      | Pure alcohol | 88.8800 litres  |

  @AllTests
  Scenario: Spirits- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality
    When I click on "Declare spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    When I "select" checkbox "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365 SPR),Spirits between 3.5% and 8.4% ABV (tax type code 370 SPR),Spirits between 1.3% and 3.4% ABV (tax type code 375 SPR),Spirits between 3.5% and 8.4% ABV (tax type code 380 SPR)" on "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page"
    When I enter "8888.66" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "88.8000" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "7777.77" for "Standard spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "77.7700" for "Standard spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "6666.66" for "Standard spirits between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "66.6600" for "Standard spirits between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "5555.55" for "Standard spirits at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "55.5500" for "Standard spirits at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "4444.44" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "44.4400" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "3333.33" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I enter "33.3300" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page"
    When I enter "888.88" for "Non-draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "99.4500" for "Non-draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "15" for "Non-draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "776.45" for "Non-draught spirits between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "78.9000" for "Non-draught spirits between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "18" for "Non-draught spirits between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "776.89" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "99.9900" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "15" for "Draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "889.65" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "fourth" input box
    And I enter "66.5400" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "fourth" input box
    And I enter "20" for "Draught spirits between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 325)     |
      | Non-draught spirits between 8.5% and 22% ABV (tax type code 335)      |
      | Non-draught spirits at or above 22.1% ABV (tax type code 345)         |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 355)         |
      | Draught spirits between 3.5% and 8.4% ABV (tax type code 360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 375 SPR)     |
      | Draught spirits between 3.5% and 8.4% ABV (tax type code 380 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 8,888.66 litres |
      | Pure alcohol  | 88.8000 litres  |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 66.6600 litres  |
      | Total volume  | 5,555.55 litres |
      | Pure alcohol  | 55.5500 litres  |
      | Total volume  | 7,777.77 litres |
      | Pure alcohol  | 77.7700 litres  |
      | Total volume  | 4,444.44 litres |
      | Pure alcohol  | 44.4400 litres  |
      | Total volume  | 3,333.33 litres |
      | Pure alcohol  | 33.3300 litres  |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 99.4500 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 776.45 litres   |
      | Pure alcohol  | 78.9000 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 776.89 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 889.65 litres   |
      | Pure alcohol  | 66.5400 litres  |
      | SPR duty rate | £20.00          |
#To verify 'Change' link functionality for spirits to declare
    When I click "Change Spirits to declare" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page" with new url
    When I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I click "Change Spirits to declare" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page" with new url
    When I "unselect" checkbox "Spirits between 3.5% and 8.4% ABV (tax type code 380 SPR)" on "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page"
    When I enter "8888.66" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "88.8000" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "7777.77" for "Standard spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "77.7700" for "Standard spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "6666.66" for "Standard spirits between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "66.6600" for "Standard spirits between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "5555.55" for "Standard spirits at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "55.5500" for "Standard spirits at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "4444.44" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "44.4400" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "3333.33" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I enter "33.3300" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page"
    When I enter "888.88" for "Non-draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "99.4500" for "Non-draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "15" for "Non-draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "776.45" for "Non-draught spirits between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "78.9000" for "Non-draught spirits between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "18" for "Non-draught spirits between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "776.89" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "99.9900" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "15" for "Draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I click save and continue button on "Single Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 325)     |
      | Non-draught spirits between 8.5% and 22% ABV (tax type code 335)      |
      | Non-draught spirits at or above 22.1% ABV (tax type code 345)         |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 355)         |
      | Draught spirits between 3.5% and 8.4% ABV (tax type code 360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 375 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 8,888.66 litres |
      | Pure alcohol  | 88.8000 litres  |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 66.6600 litres  |
      | Total volume  | 5,555.55 litres |
      | Pure alcohol  | 55.5500 litres  |
      | Total volume  | 7,777.77 litres |
      | Pure alcohol  | 77.7700 litres  |
      | Total volume  | 4,444.44 litres |
      | Pure alcohol  | 44.4400 litres  |
      | Total volume  | 3,333.33 litres |
      | Pure alcohol  | 33.3300 litres  |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 99.4500 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 776.45 litres   |
      | Pure alcohol  | 78.9000 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 776.89 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | SPR duty rate | £15.00          |
  #To verify 'Change' link functionality for Spirits to duty
    When I click "Change Spirits duty" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page" with new url
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I click "Change Spirits duty" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page" with new url
    When I enter "3636.36" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "36.3600" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 325)     |
      | Non-draught spirits between 8.5% and 22% ABV (tax type code 335)      |
      | Non-draught spirits at or above 22.1% ABV (tax type code 345)         |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 355)         |
      | Draught spirits between 3.5% and 8.4% ABV (tax type code 360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 375 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 3,636.36 litres |
      | Pure alcohol  | 36.3600 litres  |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 66.6600 litres  |
      | Total volume  | 5,555.55 litres |
      | Pure alcohol  | 55.5500 litres  |
      | Total volume  | 7,777.77 litres |
      | Pure alcohol  | 77.7700 litres  |
      | Total volume  | 4,444.44 litres |
      | Pure alcohol  | 44.4400 litres  |
      | Total volume  | 3,333.33 litres |
      | Pure alcohol  | 33.3300 litres  |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 99.4500 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 776.45 litres   |
      | Pure alcohol  | 78.9000 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 776.89 litres   |
      | Pure alcohol  | 99.9900 litres  |
      | SPR duty rate | £15.00          |
#To verify 'Change' link functionality for Spirits eligible for Small Producer Relief
    When I click "Change Spirits eligible for Small Producer Relief" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page" with new url
    And I click save and continue button on "Single Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I click "Change Spirits eligible for Small Producer Relief" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page" with new url
    And I enter "888.88" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "88.8800" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "8.88" for "Draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I click save and continue button on "Single Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 325)     |
      | Non-draught spirits between 8.5% and 22% ABV (tax type code 335)      |
      | Non-draught spirits at or above 22.1% ABV (tax type code 345)         |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 355)         |
      | Draught spirits between 3.5% and 8.4% ABV (tax type code 360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 375 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 3,636.36 litres |
      | Pure alcohol  | 36.3600 litres  |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 66.6600 litres  |
      | Total volume  | 5,555.55 litres |
      | Pure alcohol  | 55.5500 litres  |
      | Total volume  | 7,777.77 litres |
      | Pure alcohol  | 77.7700 litres  |
      | Total volume  | 4,444.44 litres |
      | Pure alcohol  | 44.4400 litres  |
      | Total volume  | 3,333.33 litres |
      | Pure alcohol  | 33.3300 litres  |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 99.4500 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 776.45 litres   |
      | Pure alcohol  | 78.9000 litres  |
      | SPR duty rate | £18.00          |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 88.8800 litres  |
      | SPR duty rate | £8.88           |
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£10,830.80"
#At the 'Action' section, currently the UI tests are pulling hidden text too. This method will be improved at later stage
    And I should see the following product details
      | Description                                                           | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 315)     | 36.3600                      | £9.61                 | £349.41    | Change |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 325)     | 77.7700                      | £25.67                | £1,996.35  | Change |
      | Non-draught spirits between 8.5% and 22% ABV (tax type code 335)      | 66.6600                      | £29.54                | £1,969.13  | Change |
      | Non-draught spirits at or above 22.1% ABV (tax type code 345)         | 55.5500                      | £32.79                | £1,821.48  | Change |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 355)         | 44.4400                      | £8.28                 | £367.96    | Change |
      | Draught spirits between 3.5% and 8.4% ABV (tax type code 360)         | 33.3300                      | £18.76                | £625.27    | Change |
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 365 SPR) | 99.4500                      | £15.00                | £1,491.75  | Change |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 370 SPR) | 78.9000                      | £18.00                | £1,420.20  | Change |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 375 SPR)     | 88.8800                      | £8.88                 | £789.25    | Change |
  #At Duty due page, all the change links are designed to redirect to Check your answers page so I am checking a couple of random links
    When I click on change link 2 on "Duty Due Spirits Page" for alcohol type "Spirits"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£10,830.80"
    When I click on change link 4 on "Duty Due Spirits Page" for alcohol type "Spirits"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£10,830.80"

  @AllTests
  Scenario: Spirits- Alcohol Duty Returns Journey - When Multiple SPR is set to 'YES' - Change link functionality
    When I click on "Declare spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    When I "select" checkbox "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365 SPR),Spirits between 3.5% and 8.4% ABV (tax type code 370 SPR),Spirits between 1.3% and 3.4% ABV (tax type code 375 SPR),Spirits between 3.5% and 8.4% ABV (tax type code 380 SPR)" on "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    When I enter "8888.66" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "88.8000" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "7777.77" for "Standard spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "77.7700" for "Standard spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "6666.66" for "Standard spirits between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "66.6600" for "Standard spirits between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "5555.55" for "Standard spirits at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "55.5500" for "Standard spirits at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "4444.44" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "44.4400" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "3333.33" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I enter "33.3300" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Spirits Page"
    When I select radio button "Draught spirits between 3.5% and 8.4% ABV (380 SPR)" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "789.99" for "Total litres" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "55.5500" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "20" for "Duty rate" on "Multiple Small Producer Relief Rate Spirits Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers SPR Spirits Page"
    And I should see following details at the "Check Your Answers SPR Spirits Page"
      | Description                                                       | Total spirits | Total pure alcohol | Duty rate        |
      | Draught spirits between 3.5% and 8.4% ABV (tax type code 380 SPR) | 789.99 litres | 55.5500 LPA        | £20.00 per litre |
#To verify 'Change' link functionality at Check Your Answers SPR Spirits Page. All the links are set to redirect to the same page so checking only one link
    When I click "Change Total pure alcohol" on "Check Your Answers SPR Spirits Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Spirits Page" with url suffix as "#pureAlcohol"
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers SPR Spirits Page"
    When I click "Change Total pure alcohol" on "Check Your Answers SPR Spirits Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Spirits Page" with url suffix as "#pureAlcohol"
    And I enter "88.9900" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Spirits Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers SPR Spirits Page"
    And I should see following details at the "Check Your Answers SPR Spirits Page"
      | Description                                                       | Total spirits | Total pure alcohol | Duty rate        |
      | Draught spirits between 3.5% and 8.4% ABV (tax type code 380 SPR) | 789.99 litres | 88.9900 LPA        | £20.00 per litre |
    When I click continue button on "Check Your Answers SPR Spirits Page"
    Then I am presented with the "Multiple SPR List Question Spirits Page"
    And I should see the following product details
      | Description                                                       | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Draught spirits between 3.5% and 8.4% ABV (tax type code 380 SPR) | 789.99                         | 88.9900                      | £20.00                | Change Remove |
 #To verify 'Change' link functionality at Multiple SPR List Question Cider Page
    When I click "Change hyperlink" on "Multiple SPR List Question Spirits Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Spirits Page" with existing url suffix as "?index=0"
    When I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Multiple SPR List Question Spirits Page"
    When I click "Change hyperlink" on "Multiple SPR List Question Spirits Page"
    And I select radio button "Non-draught spirits between 3.5% and 8.4% ABV (370 SPR)" on "Multiple Small Producer Relief Rate Spirits Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers SPR Spirits Page" with url suffix as "?index=0"
    And I should see following details at the "Check Your Answers SPR Spirits Page"
      | Description                                                           | Total spirits | Total pure alcohol | Duty rate        |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 370 SPR) | 789.99 litres | 88.9900 LPA        | £20.00 per litre |
    When I click continue button on "Check Your Answers SPR Spirits Page"
    And I should see the following product details
      | Description                                                           | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 370 SPR) | 789.99                         | 88.9900                      | £20.00                | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Spirits Page"
    And I click save and continue button on "Multiple SPR List Question Spirits Page"
    Then I am presented with the "You Have Some Missing Details Spirits Page"
    And I select radio button "Delete these declarations from this return" on "You Have Some Missing Details Spirits Page"
    When I click save and continue button on "You Have Some Missing Details Spirits Page"
    Then I am presented with the "Are You Sure You Want To Delete These Declarations From Your Return Spirits Page"
    And  I select radio button "Yes, delete these declarations" on "Are You Sure You Want To Delete These Declarations From Your Return Spirits Page"
    When I click confirm and continue button on "Are You Sure You Want To Delete These Declarations From Your Return Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 325)     |
      | Non-draught spirits between 8.5% and 22% ABV (tax type code 335)      |
      | Non-draught spirits at or above 22.1% ABV (tax type code 345)         |
      | Draught spirits between 1.3% and 3.4% ABV (tax type code 355)         |
      | Draught spirits between 3.5% and 8.4% ABV (tax type code 360)         |
#      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (tax type code 370 SPR) |
#      | Draught spirits between 1.3% and 3.4% ABV (tax type code 375 SPR)     |
#      | Draught spirits between 3.5% and 8.4% ABV (tax type code 380 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 8,888.66 litres |
      | Pure alcohol | 88.8000 litres  |
      | Total volume | 6,666.66 litres |
      | Pure alcohol | 66.6600 litres  |
      | Total volume | 5,555.55 litres |
      | Pure alcohol | 55.5500 litres  |
      | Total volume | 7,777.77 litres |
      | Pure alcohol | 77.7700 litres  |
      | Total volume | 4,444.44 litres |
      | Pure alcohol | 44.4400 litres  |
      | Total volume | 3,333.33 litres |
      | Pure alcohol | 33.3300 litres  |
      | Total volume | 789.99 litres   |
      | Pure alcohol | 88.9900 litres  |

  @AllTests
  Scenario: Other Fermented Products- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality
    When I click on "Declare other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I "select" checkbox "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364 SPR),Other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR),Other fermented products between 1.3% and 3.4% ABV (tax type code 374 SPR),Other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page"
    When I enter "2233.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "33.3300" for "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "3322.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "second" input box
    And I enter "22.2200" for "Standard other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "second" input box
    And I enter "4433.44" for "Standard other fermented products between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "third" input box
    And I enter "44.4400" for "Standard other fermented products between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "third" input box
    And I enter "5544.55" for "Standard other fermented products at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "fourth" input box
    And I enter "55.5500" for "Standard other fermented products at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "fourth" input box
    And I enter "6666.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "fifth" input box
    And I enter "66.6600" for "Draught other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "fifth" input box
    And I enter "7865.12" for "Draught other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I enter "34.5500" for "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Other Fermented Product Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    Then I am presented with the "Single Small Producer Relief Rate Other Fermented Product Page"
    When I enter "777.77" for "Non-draught other fermented product between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "77.7700" for "Non-draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "15" for "Non-draught other fermented product between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "888.88" for "Non-draught other fermented product between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "second" input box
    And I enter "88.8800" for "Non-draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "second" input box
    And I enter "16" for "Non-draught other fermented product between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "second" input box
    And I enter "667.88" for "Draught other fermented product between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "third" input box
    And I enter "78.7700" for "Draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "third" input box
    And I enter "20" for "Draught other fermented product between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "third" input box
    And I enter "678.44" for "Draught other fermented product between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "fourth" input box
    And I enter "99.2300" for "Draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "fourth" input box
    And I enter "19" for "Draught other fermented product between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I should see the following text on the page
      | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 314)     |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (tax type code 324)     |
      | Non-draught other fermented products between 8.5% and 22% ABV (tax type code 334)      |
      | Non-draught other fermented products at or above 22.1% ABV (tax type code 344)         |
      | Draught other fermented products between 1.3% and 3.4% ABV (tax type code 354)         |
      | Draught other fermented products between 3.5% and 8.4% ABV (tax type code 359)         |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 364 SPR) |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR) |
      | Draught other fermented products between 1.3% and 3.4% ABV (tax type code 374 SPR)     |
      | Draught other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 3,322.22 litres |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 4,433.44 litres |
      | Pure alcohol  | 44.4400 litres  |
      | Total volume  | 2,233.33 litres |
      | Pure alcohol  | 33.3300 litres  |
      | Total volume  | 5,544.55 litres |
      | Pure alcohol  | 55.5500 litres  |
      | Total volume  | 7,865.12 litres |
      | Pure alcohol  | 34.5500 litres  |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 66.6600 litres  |
      | Total volume  | 777.77 litres   |
      | Pure alcohol  | 77.7700 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 88.8800 litres  |
      | SPR duty rate | £16.00          |
      | Total volume  | 667.88 litres   |
      | Pure alcohol  | 78.7700 litres  |
      | SPR duty rate | £20.00          |
      | Total volume  | 678.44 litres   |
      | Pure alcohol  | 99.2300 litres  |
      | SPR duty rate | £19.00          |
#To verify 'Change' link functionality for Other Fermented Product to declare
    When I click "Change Other Fermented Product to declare" on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page" with new url
    When I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    When I click "Change Other Fermented Product to declare" on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page" with new url
    When I "select" checkbox "Other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page"
    When I enter "2233.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "33.3300" for "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "3322.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "second" input box
    And I enter "22.2200" for "Standard other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "second" input box
    And I enter "4433.44" for "Standard other fermented products between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "third" input box
    And I enter "44.4400" for "Standard other fermented products between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "third" input box
    And I enter "5544.55" for "Standard other fermented products at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "fourth" input box
    And I enter "55.5500" for "Standard other fermented products at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "fourth" input box
    And I enter "6666.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "fifth" input box
    And I enter "66.6600" for "Draught other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "fifth" input box
    And I enter "7865.12" for "Draught other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I enter "34.5500" for "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Other Fermented Product Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    Then I am presented with the "Single Small Producer Relief Rate Other Fermented Product Page"
    When I enter "777.77" for "Non-draught other fermented product between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "77.7700" for "Non-draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "15" for "Non-draught other fermented product between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "888.88" for "Non-draught other fermented product between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "second" input box
    And I enter "88.8800" for "Non-draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "second" input box
    And I enter "16" for "Non-draught other fermented product between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "second" input box
    And I enter "667.88" for "Draught other fermented product between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "third" input box
    And I enter "78.7700" for "Draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "third" input box
    And I enter "20" for "Draught other fermented product between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "third" input box
    And I click save and continue button on "Single Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I should see the following text on the page
      | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 314)     |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (tax type code 324)     |
      | Non-draught other fermented products between 8.5% and 22% ABV (tax type code 334)      |
      | Non-draught other fermented products at or above 22.1% ABV (tax type code 344)         |
      | Draught other fermented products between 1.3% and 3.4% ABV (tax type code 354)         |
      | Draught other fermented products between 3.5% and 8.4% ABV (tax type code 359)         |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 364 SPR) |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR) |
      | Draught other fermented products between 1.3% and 3.4% ABV (tax type code 374 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 3,322.22 litres |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 4,433.44 litres |
      | Pure alcohol  | 44.4400 litres  |
      | Total volume  | 2,233.33 litres |
      | Pure alcohol  | 33.3300 litres  |
      | Total volume  | 5,544.55 litres |
      | Pure alcohol  | 55.5500 litres  |
      | Total volume  | 7,865.12 litres |
      | Pure alcohol  | 34.5500 litres  |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 66.6600 litres  |
      | Total volume  | 777.77 litres   |
      | Pure alcohol  | 77.7700 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 88.8800 litres  |
      | SPR duty rate | £16.00          |
      | Total volume  | 667.88 litres   |
      | Pure alcohol  | 78.7700 litres  |
      | SPR duty rate | £20.00          |
#To verify 'Change' link functionality for Other fermented products duty
    When I click "Change Other Fermented Product duty" on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page" with new url
    And I click save and continue button on "How Much You Need To Declare Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    When I click "Change Other Fermented Product duty" on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page" with new url
    And I enter "9999.99" for "Draught other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I enter "99.9900" for "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 2,233.33 litres |
      | Pure alcohol  | 33.3300 litres  |
      | Total volume  | 3,322.22 litres |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 4,433.44 litres |
      | Pure alcohol  | 44.4400 litres  |
      | Total volume  | 5,544.55 litres |
      | Pure alcohol  | 55.5500 litres  |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 66.6600 litres  |
      | Total volume  | 9,999.99 litres |
      | Pure alcohol  | 99.9900 litres  |
      | Total volume  | 777.77 litres   |
      | Pure alcohol  | 77.7700 litres  |
      | SPR duty rate | £15.00          |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 88.8800 litres  |
      | SPR duty rate | £16.00          |
      | Total volume  | 667.88 litres   |
      | Pure alcohol  | 78.7700 litres  |
      | SPR duty rate | £20.00          |
#To verify 'Change' link functionality for Other Fermented Product eligible for Small Producer Relief
    When I click "Change Other Fermented Product eligible for Small Producer Relief" on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "Single Small Producer Relief Rate Other Fermented Product Page" with new url
    And I click save and continue button on "Single Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    When I click "Change Other Fermented Product eligible for Small Producer Relief" on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "Single Small Producer Relief Rate Other Fermented Product Page" with new url
    When I enter "6969.69" for "Non-draught other fermented product between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "69.6900" for "Non-draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "69" for "Non-draught other fermented product between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I click save and continue button on "Single Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I check the page source for the following key-value pairs:
      | key           | value           |
      | Total volume  | 2,233.33 litres |
      | Pure alcohol  | 33.3300 litres  |
      | Total volume  | 3,322.22 litres |
      | Pure alcohol  | 22.2200 litres  |
      | Total volume  | 4,433.44 litres |
      | Pure alcohol  | 44.4400 litres  |
      | Total volume  | 5,544.55 litres |
      | Pure alcohol  | 55.5500 litres  |
      | Total volume  | 6,666.66 litres |
      | Pure alcohol  | 66.6600 litres  |
      | Total volume  | 9,999.99 litres |
      | Pure alcohol  | 99.9900 litres  |
      | Total volume  | 6,969.69 litres |
      | Pure alcohol  | 69.6900 litres  |
      | SPR duty rate | £69.00          |
      | Total volume  | 888.88 litres   |
      | Pure alcohol  | 88.8800 litres  |
      | SPR duty rate | £16.00          |
      | Total volume  | 667.88 litres   |
      | Pure alcohol  | 78.7700 litres  |
      | SPR duty rate | £20.00          |
    When I click save and continue button on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "Duty Due Other Fermented Product Page" "£14,258.75"
    And I should see the following product details
      | Description                                                                            | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 314)     | 33.3300                      | £9.61                 | £320.30    | Change |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (tax type code 324)     | 22.2200                      | £25.67                | £570.38    | Change |
      | Non-draught other fermented products between 8.5% and 22% ABV (tax type code 334)      | 44.4400                      | £29.54                | £1,312.75  | Change |
      | Non-draught other fermented products at or above 22.1% ABV (tax type code 344)         | 55.5500                      | £32.79                | £1,821.48  | Change |
      | Draught other fermented products between 1.3% and 3.4% ABV (tax type code 354)         | 66.6600                      | £8.28                 | £551.94    | Change |
      | Draught other fermented products between 3.5% and 8.4% ABV (tax type code 359)         | 99.9900                      | £18.76                | £1,875.81  | Change |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 364 SPR) | 69.6900                      | £69.00                | £4,808.61  | Change |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR) | 88.8800                      | £16.00                | £1,422.08  | Change |
      | Draught other fermented products between 1.3% and 3.4% ABV (tax type code 374 SPR)     | 78.7700                      | £20.00                | £1,575.40  | Change |

  @AllTests
  Scenario: Other Fermented Products- Alcohol Duty Returns Journey - When Multiple SPR is set to 'Yes' - Change link functionality
    When I click on "Declare other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I "select" checkbox "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364 SPR),Other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR),Other fermented products between 1.3% and 3.4% ABV (tax type code 374 SPR),Other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page"
    When I enter "2233.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "33.3300" for "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "3322.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "second" input box
    And I enter "22.2200" for "Standard other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "second" input box
    And I enter "4433.44" for "Standard other fermented products between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "third" input box
    And I enter "44.4400" for "Standard other fermented products between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "third" input box
    And I enter "5544.55" for "Standard other fermented products at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "fourth" input box
    And I enter "55.5500" for "Standard other fermented products at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "fourth" input box
    And I enter "6666.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "fifth" input box
    And I enter "66.6600" for "Draught other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "fifth" input box
    And I enter "7865.12" for "Draught other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I enter "34.5500" for "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Other Fermented Product Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Other Fermented Product Page"
    When I select radio button "Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR)" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "999.99" for "Total litres" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "99.9900" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "20" for "Duty rate" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers SPR Other Fermented Product Page"
    And I should see following details at the "Check Your Answers SPR Other Fermented Product Page"
      | Description                                                                            | Total other fermented products | Total pure alcohol | Duty rate        |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR) | 999.99 litres                  | 99.9900 LPA        | £20.00 per litre |
#To verify 'Change' link functionality at Check Your Answers SPR Other Fermented Product Page. All the links are set to redirect to the same page so checking only one link
    When I click "Change Description" on "Check Your Answers SPR Other Fermented Product Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Other Fermented Product Page" with url suffix as "#taxType"
    And I click save and continue button on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers SPR Other Fermented Product Page"
    When I click "Change Description" on "Check Your Answers SPR Other Fermented Product Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Other Fermented Product Page" with url suffix as "#taxType"
    When I select radio button "Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (379 SPR)" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers SPR Other Fermented Product Page"
    And I should see following details at the "Check Your Answers SPR Other Fermented Product Page"
      | Description                                                                        | Total other fermented products | Total pure alcohol | Duty rate        |
      | Draught other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR) | 999.99 litres                  | 99.9900 LPA        | £20.00 per litre |
    When I click continue button on "Check Your Answers SPR Other Fermented Product Page"
    Then I am presented with the "Multiple SPR List Question Other Fermented Product Page"
    And I should see the following product details
      | Description                                                                        | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Draught other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR) | 999.99                         | 99.9900                      | £20.00                | Change Remove |
#To verify 'Change' link functionality at Multiple SPR List Question Other Fermented Product Page
    When I click "Change hyperlink" on "Multiple SPR List Question Other Fermented Product Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Other Fermented Product Page" with existing url suffix as "?index=0"
    When I click save and continue button on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Multiple SPR List Question Other Fermented Product Page"
    When I click "Change hyperlink" on "Multiple SPR List Question Other Fermented Product Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Other Fermented Product Page" with existing url suffix as "?index=0"
    And I enter "8888.88" for "Total litres" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "888.8800" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "88" for "Duty rate" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers SPR Other Fermented Product Page" with url suffix as "?index=0"
    And I should see following details at the "Check Your Answers SPR Other Fermented Product Page"
      | Description                                                                        | Total other fermented products | Total pure alcohol | Duty rate        |
      | Draught other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR) | 8,888.88 litres                | 888.8800 LPA       | £88.00 per litre |
    When I click continue button on "Check Your Answers SPR Other Fermented Product Page"
    Then I am presented with the "Multiple SPR List Question Other Fermented Product Page"
    And I should see the following product details
      | Description                                                                        | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Draught other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR) | 8,888.88                       | 888.8800                     | £88.00                | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Other Fermented Product Page"
    And I click save and continue button on "Multiple SPR List Question Other Fermented Product Page"
    Then I am presented with the "You Have Some Missing Details Other Fermented Product Page"
    And I select radio button "Delete these declarations from this return" on "You Have Some Missing Details Other Fermented Product Page"
    When I click save and continue button on "You Have Some Missing Details Other Fermented Product Page"
    Then I am presented with the "Are You Sure You Want To Delete These Declarations From Your Return Other Fermented Product Page"
    And  I select radio button "Yes, delete these declarations" on "Are You Sure You Want To Delete These Declarations From Your Return Other Fermented Product Page"
    When I click confirm and continue button on "Are You Sure You Want To Delete These Declarations From Your Return Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I should see the following text on the page
      | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 314)     |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (tax type code 324)     |
      | Non-draught other fermented products between 8.5% and 22% ABV (tax type code 334)      |
      | Non-draught other fermented products at or above 22.1% ABV (tax type code 344)         |
      | Draught other fermented products between 1.3% and 3.4% ABV (tax type code 354)         |
      | Draught other fermented products between 3.5% and 8.4% ABV (tax type code 359)         |
#      | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 364 SPR) |
#      | Non-draught other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR) |
#      | Draught other fermented products between 1.3% and 3.4% ABV (tax type code 374 SPR)     |
      | Draught other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 2,233.33 litres |
      | Pure alcohol | 33.3300 litres  |
      | Total volume | 3,322.22 litres |
      | Pure alcohol | 22.2200 litres  |
      | Total volume | 4,433.44 litres |
      | Pure alcohol | 44.4400 litres  |
      | Total volume | 5,544.55 litres |
      | Pure alcohol | 55.5500 litres  |
      | Total volume | 6,666.66 litres |
      | Pure alcohol | 66.6600 litres  |
      | Total volume | 7,865.12 litres |
      | Pure alcohol | 34.5500 litres  |
      | Total volume | 8,888.88 litres |
      | Pure alcohol | 888.8800 litres |

  @AllTests
  Scenario: To verify the change link functionalities from the Return Summary Page
#Beer - When Multiple SPR is set to 'No'
    When I click on "Declare beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer at or above 22.1% ABV (tax type code 341)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    And I enter "999.19" for "Standard beer at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "99.1300" for "Standard beer at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer at or above 22.1% ABV (tax type code 341) |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 999.19 litres  |
      | Pure alcohol | 99.1300 litres |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£3,250.47"
    And I should see the following product details
      | Description                                                | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught beer at or above 22.1% ABV (tax type code 341) | 99.1300                      | £32.79                | £3,250.47  | Change |
    When I click save and continue button on "Duty Due Beer Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider   | Declare wine    | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us if you have delivered or received finished products in duty suspense | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Not yet started | Not yet started | Not yet started | Not yet started                  | Not yet started                            | Not yet started                                                              | Not yet started                                         |
#Cider - When Multiple SPR is set to 'No'
    When I click on "Declare cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I "select" checkbox "Cider between 1.3% and 3.4% ABV (tax type code 312)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page"
    When I enter "789.44" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "43.4400" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312) |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 789.44 litres  |
      | Pure alcohol | 43.4400 litres |
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£417.45"
    And I should see the following product details
      | Description                                                     | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312) | 43.4400                      | £9.61                 | £417.45    | Change |
    When I click save and continue button on "Duty Due Cider Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine    | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us if you have delivered or received finished products in duty suspense | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Not yet started | Not yet started | Not yet started                  | Not yet started                            | Not yet started                                                              | Not yet started                                         |
#Wine - When Multiple SPR is set to 'No'
    When I click on "Declare wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I "select" checkbox "Wine between 1.3% and 3.4% ABV (tax type code 313)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "35.5500" for "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 313) |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 1,234.55 litres |
      | Pure alcohol | 35.5500 litres  |
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£341.63"
    And I should see the following product details
      | Description                                                    | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught wine between 1.3% and 3.4% ABV (tax type code 313) | 35.5500                      | £9.61                 | £341.63    | Change |
    When I click save and continue button on "Duty Due Wine Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us if you have delivered or received finished products in duty suspense | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Not yet started | Not yet started                  | Not yet started                            | Not yet started                                                              | Not yet started                                         |
#Spirits - When Multiple SPR is set to 'No'
    When I click on "Declare spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    When I "select" checkbox "Spirits between 1.3% and 3.4% ABV (tax type code 315)" on "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page"
    When I enter "8888.66" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "88.8000" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 315) |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 8,888.66 litres |
      | Pure alcohol | 88.8000 litres  |
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£853.36"
    And I should see the following product details
      | Description                                                       | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught spirits between 1.3% and 3.4% ABV (tax type code 315) | 88.8000                      | £9.61                 | £853.36    | Change |
    When I click save and continue button on "Duty Due Spirits Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us if you have delivered or received finished products in duty suspense | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Not yet started                  | Not yet started                            | Not yet started                                                              | Not yet started                                         |
#Other Fermented Products - When Multiple SPR is set to 'No'
    When I click on "Declare other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I "select" checkbox "Other fermented products between 1.3% and 3.4% ABV (tax type code 314)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page"
    When I enter "2233.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "33.3300" for "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I should see the following text on the page
      | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 314) |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 2,233.33 litres |
      | Pure alcohol | 33.3300 litres  |
    When I click save and continue button on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "Duty Due Other Fermented Product Page" "£320.30"
    And I should see the following product details
      | Description                                                                        | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 314) | 33.3300                      | £9.61                 | £320.30    | Change |
    When I click save and continue button on "Duty Due Other Fermented Product Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us if you have delivered or received finished products in duty suspense | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Not yet started                            | Not yet started                                                              | Not yet started                                         |
#Adjustments Journey - Beer - Under-declaration - Without SPR
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"
    When I select radio button "Under-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Page" "Under-declaration"
    When I enter month "09" and year "2023" on "Adjustment Return Date Page"
    And I click save and continue button on "Adjustment Return Date Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "311" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "123.45" for "Total Litres" on "Adjustment Volume Page"
    And I enter "5.5000" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "£50.98"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment     | Original return period | Tax type                                                       | Volume                                            | Duty value |
      | Under-declared | September 2023         | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) | 123.45 litres,5.5000 litres of pure alcohol (LPA) | £50.98     |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                    | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) | £50.98     | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Cider - Under-declaration - Without SPR
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Over-declaration"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "312" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "222.22" for "Total Litres" on "Adjustment Volume Page"
    And I enter "22.2200" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£205.97"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                                        | Volume                                             | Duty value |
      | Over-declared | October 2023           | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312) | 222.22 litres,22.2200 litres of pure alcohol (LPA) | −£205.97   |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                     | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311)  | £50.98     | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312) | −£205.97   | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Wine - Repackaged Draught Products - With SPR
    When I select radio button "Repackaged draught products" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Repackaged draught products"
    When I enter month "11" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code For Repackaged Page"
    When I enter "373" on "Adjustment Tax Type Code For Repackaged Page"
    And I click save and continue button on "Adjustment Tax Type Code For Repackaged Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "New Tax Type Code Page"
    When I enter "363" on "New Tax Type Code Page"
    And I click save and continue button on "New Tax Type Code Page"
    Then I am presented with the "New Spr Duty Rate Page"
    When I enter "11.5" on "New Spr Duty Rate Page"
    And I click save and continue button on "New Spr Duty Rate Page"
    Then I am presented with the "Adjustment Duty Value Page" "£425.93"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Original tax type                                              | New tax type                                                       | SPR duty rate | Volume                                                | Duty value |
      | Repackaged | November 2023          | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR) | Non-draught wine between 1.3% and 3.4% ABV (tax type code 363 SPR) | £11.50        | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | £425.93    |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                     | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311)  | £50.98     | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312) | −£205.97   | Change Remove |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR)  | £425.93    | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Spirits - Spoilt
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Spoilt Alcohol Type Page"
    When I select radio button "Spirits" on "Spoilt Alcohol Type Page"
    And I click save and continue button on "Spoilt Alcohol Type Page"
    Then I am presented with the "Spoilt Alcohol Volume Page"
    When I enter "3000.75" for "Total Litres" on "Spoilt Alcohol Volume Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Spoilt Alcohol Volume Page"
    And I enter "3255.55" for "Duty Paid" on "Spoilt Alcohol Volume Page"
    And I click save and continue button on "Spoilt Alcohol Volume Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Description | Volume                                                | Duty value |
      | Spoilt     | Spirits     | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£3,255.55 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                     | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311)  | £50.98     | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312) | −£205.97   | Change Remove |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR)  | £425.93    | Change Remove |
      | Spoilt          | Spirits                                                         | −£3,255.55 | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Other Fermented Products - Drawback - Without SPR
    When I select radio button "Drawback" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Drawback"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "314" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,322.59"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Tax type                                                                           | Volume                                                | Duty value |
      | Drawback   | October 2023           | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 314) | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,322.59 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                                        | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311)                     | £50.98     | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312)                    | −£205.97   | Change Remove |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR)                     | £425.93    | Change Remove |
      | Spoilt          | Spirits                                                                            | −£3,255.55 | Change Remove |
      | Drawback        | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 314) | −£2,322.59 | Change Remove |
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Declare adjustments | Tell us if you have delivered or received finished products in duty suspense | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Completed                                  | Completed           | Not yet started                                                              | Not yet started                                         |
# Duty suspended deliveries Journey
    When I click on "Tell us if you have delivered or received finished products in duty suspense" hyperlink on "Task List Page"
    Then I am presented with the "Report Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Report Duty Suspended Deliveries Page"
    And I click save and continue button on "Report Duty Suspended Deliveries Page"
    Then I am presented with the "SelectFinishedAlcoholDeliveredReceivedPage"
    When I "select" checkbox "Beer" on "SelectFinishedAlcoholDeliveredReceivedPage"
    And I click save and continue button on "SelectFinishedAlcoholDeliveredReceivedPage"
    And I enter "999.99" for "Total Litres Delivered Inside UK" on "Quantities Of Duty Suspended Beer Page"
    And I enter "88.1234" for "Pure Alcohol Delivered Inside UK" on "Quantities Of Duty Suspended Beer Page"
    And I enter "999.99" for "Total Litres Delivered Outside UK" on "Quantities Of Duty Suspended Beer Page"
    And I enter "88.1234" for "Pure Alcohol Delivered Outside UK" on "Quantities Of Duty Suspended Beer Page"
    And I enter "999.99" for "Total Litres Received" on "Quantities Of Duty Suspended Beer Page"
    And I enter "88.1234" for "Pure Alcohol Received" on "Quantities Of Duty Suspended Beer Page"
    And I click save and continue button on "Quantities Of Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Deliveries Calculation Page"
    And I verify "Your total net volume of beer is 999.99 litres" on "Duty Suspended Deliveries Calculation Page"
    And I verify "Your total net volume of pure alcohol is 88.1234 litres" of pure alcohol on "Duty Suspended Deliveries Calculation Page"
    And I click save and continue button on "Duty Suspended Deliveries Calculation Page"
    Then I am presented with the "Duty Suspense Deliveries Check Your Answers Page"
    And I should see the following details
      | Type of alcohol | Beer                                                          |
      | Beer            | 999.99 litres of total product,88.1234 litres of pure alcohol |
    And I click continue button on "Duty Suspense Deliveries Check Your Answers Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Declare adjustments | Tell us if you have delivered or received finished products in duty suspense | Change the entries you’ve told us about | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Completed                                  | Completed           | Completed                                                                    | Completed                               | Not yet started                                         |
#Your spirits and ingredients
    When I click on "Tell us about spirits produced in the past three months" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "Yes" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Total Of All Spirits Page"
    When I enter "99" on "Total Of All Spirits Page"
    And I click save and continue button on "Total Of All Spirits Page"
    Then I am presented with the "Declare Whiskey Page"
    When I enter "10.55" for "Scotch Whisky" on "Declare Whiskey Page"
    And I enter "20.67" for "Irish Whiskey" on "Declare Whiskey Page"
    And I click save and continue button on "Declare Whiskey Page"
    Then I am presented with the "Which Of These Spirits Have You Produced Page"
    When I "select" checkbox "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits" on "Which Of These Spirits Have You Produced Page"
    And I click save and continue button on "Which Of These Spirits Have You Produced Page"
    Then I am presented with the "Declare Other Spirits Produced Page"
    When I enter "Test Spirits" on "Declare Other Spirits Produced Page"
    And I click save and continue button on "Declare Other Spirits Produced Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    And I should see following details at the "Quarterly Spirits Check Your Answers Page"
      | Total of all spirits         | Scotch Whisky                | Irish Whiskey                | Type of spirits                                                                              | Other spirits produced |
      | 99.00 litres of pure alcohol | 10.55 litres of pure alcohol | 20.67 litres of pure alcohol | Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits | Test Spirits           |
    When I click save and continue button on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Declare adjustments | Tell us if you have delivered or received finished products in duty suspense | Change the entries you’ve told us about | Tell us about spirits produced in the past three months | Change the spirits you’ve told us about | Check duty payable and send your return |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Completed                                  | Completed           | Completed                                                                    | Completed                               | Completed                                               | Completed                               | Not yet started                         |
    When I click on "Check duty payable and send your return" hyperlink on "Task List Page"
    Then I am presented with the "Return Summary Page" "−£123.99"
    And I should see the following details
      | Beer declared | Cider declared | Wine declared | Spirits declared | Other fermented products declared | Adjustments to previous returns | Duty suspended alcohol | Spirits production |
      | £3,250.47     | £417.45        | £341.63       | £853.36          | £320.30                           | −£5,307.20                      | Declared               | Declared           |
#Change link functionality - Declared spirits duty
    When I click "Change Declared spirits duty" on "Return Summary Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Return Summary Page" "−£123.99"
#Change link functionality - Declared wine duty
    When I click "Change Declared wine duty" on "Return Summary Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Return Summary Page" "−£123.99"
#Change link functionality - Declared cider duty
    When I click "Change Declared cider duty" on "Return Summary Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Return Summary Page" "−£123.99"
#Change link functionality - Declared other fermented products duty
    When I click "Change Declared other fermented products duty" on "Return Summary Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Return Summary Page" "−£123.99"
#Change link functionality - Declared beer duty
    When I click "Change Declared beer duty" on "Return Summary Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Return Summary Page" "−£123.99"
#Change link functionality - Declared beer duty
    When I click "Change Adjustment duty value" on "Return Summary Page"
    Then I am presented with the "Adjustment List Page"
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Return Summary Page" "−£123.99"
#Change link functionality - Duty Suspended Deliveries
    When I click "Change Duty suspended alcohol" on "Return Summary Page"
    Then I am presented with the "Duty Suspense Deliveries Check Your Answers Page"
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Return Summary Page" "−£123.99"
#Change link functionality - Spirits production
    When I click "Change Spirits production" on "Return Summary Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Return Summary Page" "−£123.99"