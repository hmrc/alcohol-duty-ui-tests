@test @AlcoholToDeclareChangeLinks
Feature: Alcohol Duty Returns Journey - Change Links - CYA Page

  Background: Common Steps - Alcohol Duty Returns
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"

  Scenario: Beer- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality
    When I click on "Tell us about your beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer exceeding 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.55" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "77.55" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "66.34" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "999.19" for "Standard beer exceeding 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "99.13" for "Standard beer exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "887.54" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "66.44" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I enter "66.89" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page"
    When I enter "888.88" for "Non-draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "99.45" for "Non-draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "15" for "Non-draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "776.45" for "Non-draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "78.9" for "Non-draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "18" for "Non-draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "776.89" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "99.99" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "15" for "Draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "889.65" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I enter "66.54" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I enter "20" for "Draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 1.3% and 3.4% ABV (311)     |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     |
      | Non-draught beer between 8.5% and 22% ABV (331)      |
      | Non-draught beer exceeding 22.1% ABV (341)           |
      | Draught beer between 1.3% and 3.4% ABV (351)         |
      | Draught beer between 3.5% and 8.4% ABV (356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (376 SPR)     |
#    this method needs to be improved after the empty keys have been resolved at the CYA page
    And I check the page source for the following key-value pairs:
      | key           | value         |
      | Total volume  | 999.19 litres |
      | Pure alcohol  | 99.13 litres  |
      | Total volume  | 945.55 litres |
      | Pure alcohol  | 55.55 litres  |
      | Total volume  | 667.32 litres |
      | Pure alcohol  | 66.34 litres  |
      | Total volume  | 898.34 litres |
      | Pure alcohol  | 77.55 litres  |
      | Total volume  | 699.45 litres |
      | Pure alcohol  | 66.89 litres  |
      | Total volume  | 887.54 litres |
      | Pure alcohol  | 66.44 litres  |
      | Total volume  | 888.88 litres |
      | Pure alcohol  | 99.45 litres  |
      | SPR duty rate | £15.00        |
      | Total volume  | 776.45 litres |
      | Pure alcohol  | 78.9 litres   |
      | SPR duty rate | £18.00        |
      | Total volume  | 776.89 litres |
      | Pure alcohol  | 99.99 litres  |
      | SPR duty rate | £15.00        |
      | Total volume  | 889.65 litres |
      | Pure alcohol  | 66.54 litres  |
      | SPR duty rate | £20.00        |
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
    And I enter "77.55" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "66.34" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "999.19" for "Standard beer exceeding 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "99.13" for "Standard beer exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "887.54" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "66.44" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "66.89" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page"
    When I enter "888.88" for "Non-draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "99.45" for "Non-draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "15" for "Non-draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "776.45" for "Non-draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "78.9" for "Non-draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "18" for "Non-draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "776.89" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "99.99" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "15" for "Draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "889.65" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I enter "66.54" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I enter "20" for "Draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 3.5% and 8.4% ABV (321)     |
      | Non-draught beer between 8.5% and 22% ABV (331)      |
      | Non-draught beer exceeding 22.1% ABV (341)           |
      | Draught beer between 1.3% and 3.4% ABV (351)         |
      | Draught beer between 3.5% and 8.4% ABV (356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (376 SPR)     |
    And I check the page source for the following key-value pairs:
      | Total volume  | 945.55 litres |
      | Pure alcohol  | 55.55 litres  |
      | Total volume  | 667.32 litres |
      | Pure alcohol  | 66.34 litres  |
      | Total volume  | 898.34 litres |
      | Pure alcohol  | 77.55 litres  |
      | Total volume  | 699.45 litres |
      | Pure alcohol  | 66.89 litres  |
      | Total volume  | 887.54 litres |
      | Pure alcohol  | 66.44 litres  |
      | Total volume  | 888.88 litres |
      | Pure alcohol  | 99.45 litres  |
      | SPR duty rate | £15.00        |
      | Total volume  | 776.45 litres |
      | Pure alcohol  | 78.9 litres   |
      | SPR duty rate | £18.00        |
      | Total volume  | 776.89 litres |
      | Pure alcohol  | 99.99 litres  |
      | SPR duty rate | £15.00        |
      | Total volume  | 889.65 litres |
      | Pure alcohol  | 66.54 litres  |
      | SPR duty rate | £20.00        |
#To verify 'Change' link functionality for Beer duty
    When I click "Change Beer duty" on "Check Your Answers Returns Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page" with new url
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    When I click "Change Beer duty" on "Check Your Answers Returns Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page" with new url
    And I enter "999.99" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "99.99" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "66.34" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "999.19" for "Standard beer exceeding 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "99.13" for "Standard beer exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "887.54" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "66.44" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "66.89" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 3.5% and 8.4% ABV (321)     |
      | Non-draught beer between 8.5% and 22% ABV (331)      |
      | Non-draught beer exceeding 22.1% ABV (341)           |
      | Draught beer between 1.3% and 3.4% ABV (351)         |
      | Draught beer between 3.5% and 8.4% ABV (356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (376 SPR)     |
    And I check the page source for the following key-value pairs:
      | Total volume  | 999.99 litres |
      | Pure alcohol  | 99.99 litres  |
      | Total volume  | 667.32 litres |
      | Pure alcohol  | 66.34 litres  |
      | Total volume  | 898.34 litres |
      | Pure alcohol  | 77.55 litres  |
      | Total volume  | 699.45 litres |
      | Pure alcohol  | 66.89 litres  |
      | Total volume  | 887.54 litres |
      | Pure alcohol  | 66.44 litres  |
      | Total volume  | 888.88 litres |
      | Pure alcohol  | 99.45 litres  |
      | SPR duty rate | £15.00        |
      | Total volume  | 776.45 litres |
      | Pure alcohol  | 78.9 litres   |
      | SPR duty rate | £18.00        |
      | Total volume  | 776.89 litres |
      | Pure alcohol  | 99.99 litres  |
      | SPR duty rate | £15.00        |
      | Total volume  | 889.65 litres |
      | Pure alcohol  | 66.54 litres  |
      | SPR duty rate | £20.00        |
#To verify 'Change' link functionality for Beer eligible for Small Producer Relief
    When I click "Change Beer eligible for Small Producer Relief" on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page" with new url
    And I click save and continue button on "Single Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    When I click "Change Beer eligible for Small Producer Relief" on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page" with new url
    When I enter "9999.99" for "Non-draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "999.99" for "Non-draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "99.99" for "Non-draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "first" input box
    And I enter "776.45" for "Non-draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "78.9" for "Non-draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "18" for "Non-draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "second" input box
    And I enter "776.89" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "99.99" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "15" for "Draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "third" input box
    And I enter "889.65" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I enter "66.54" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I enter "20" for "Draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I check the page source for the following key-value pairs:
      | Total volume  | 999.99 litres  |
      | Pure alcohol  | 99.99 litres   |
      | Total volume  | 667.32 litres  |
      | Pure alcohol  | 66.34 litres   |
      | Total volume  | 898.34 litres  |
      | Pure alcohol  | 77.55 litres   |
      | Total volume  | 699.45 litres  |
      | Pure alcohol  | 66.89 litres   |
      | Total volume  | 887.54 litres  |
      | Pure alcohol  | 66.44 litres   |
      | Total volume  | 9999.99 litres |
      | Pure alcohol  | 999.99 litres  |
      | SPR duty rate | £99.99         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9 litres    |
      | SPR duty rate | £18.00         |
      | Total volume  | 776.89 litres  |
      | Pure alcohol  | 99.99 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 889.65 litres  |
      | Pure alcohol  | 66.54 litres   |
      | SPR duty rate | £20.00         |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£113,203.47"
#At the 'Action' section, currently the UI tests are pulling hidden text too. This method will be improved at later stage
    And I should see the following product details
      | Description                                          | Litres of pure alcohol | Duty rate        | Duty due   | Action                                                      |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     | 99.99 Lpa              | £21.01 per litre | £2,100.78  | Change Non-draught beer between 3.5% and 8.4% ABV (321)     |
      | Non-draught beer between 8.5% and 22% ABV (331)      | 66.34 Lpa              | £28.50 per litre | £1,890.69  | Change Non-draught beer between 8.5% and 22% ABV (331)      |
      | Non-draught beer exceeding 22.1% ABV (341)           | 99.13 Lpa              | £31.64 per litre | £3,136.47  | Change Non-draught beer exceeding 22.1% ABV (341)           |
      | Draught beer between 1.3% and 3.4% ABV (351)         | 66.44 Lpa              | £8.42 per litre  | £559.42    | Change Draught beer between 1.3% and 3.4% ABV (351)         |
      | Draught beer between 3.5% and 8.4% ABV (356)         | 66.89 Lpa              | £19.08 per litre | £1,276.26  | Change Draught beer between 3.5% and 8.4% ABV (356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 999.99 Lpa             | £99.99 per litre | £99,989.00 | Change Non-draught beer between 1.3% and 3.4% ABV (361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) | 78.9 Lpa               | £18.00 per litre | £1,420.20  | Change Non-draught beer between 3.5% and 8.4% ABV (366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     | 99.99 Lpa              | £15.00 per litre | £1,499.85  | Change Draught beer between 1.3% and 3.4% ABV (371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (376 SPR)     | 66.54 Lpa              | £20.00 per litre | £1,330.80  | Change Draught beer between 3.5% and 8.4% ABV (376 SPR)     |
#At Duty due page, all the change links are designed to redirect to Check your answers page so I am checking a couple of random links
    When I click on change link 1 on "Duty Due Beer Page" for alcohol type "Beer"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£113,203.47"
    When I click on change link 5 on "Duty Due Beer Page" for alcohol type "Beer"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£113,203.47"


  Scenario: Beer- Alcohol Duty Returns Journey - When Multiple SPR is set to 'Yes' - Change link functionality
    When I click on "Tell us about your beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer exceeding 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.55" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "77.55" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "66.34" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "999.19" for "Standard beer exceeding 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "99.13" for "Standard beer exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "887.54" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "66.44" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I enter "66.89" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page"
    When I select radio button "Non-draught beer between 1.3% and 3.4% ABV (361 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "9999.99" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "89.99" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "19" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                          | Total beer      | Total pure alcohol | Duty rate        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99 litres | 89.99 Lpa          | £19.00 per litre |
#To verify 'Change' link functionality at Check Your Answers SPR Beer Page. All the links are set to redirect to the same page so checking only one link
    When I click "Change Description" on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" with new url containing prefix as "change-" and suffix as "Beer#taxType"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    When I click "Change Description" on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" with new url containing prefix as "change-" and suffix as "Beer#taxType"
    When I select radio button "Non-draught beer between 3.5% and 8.4% ABV (366 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "8888.88" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "88.88" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "22" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                          | Total beer      | Total pure alcohol | Duty rate        |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) | 8,888.88 litres | 88.88 Lpa          | £22.00 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared | Pure alcohol declared | SPR duty rate    | Action        |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) | 8,888.88l             | 88.88 Lpa             | £22.00 per litre | Change Remove |
#To verify 'Change' link functionality at Multiple SPR List Question Beer Page
    When I click "Change hyperlink" on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" with new url containing prefix as "" and suffix as "Beer?index=0"
    When I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    When I click "Change hyperlink" on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" with new url containing prefix as "" and suffix as "Beer?index=0"
    When I select radio button "Draught beer between 1.3% and 3.4% ABV (371 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "8888.88" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "88.88" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "22" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                      | Total beer      | Total pure alcohol | Duty rate        |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR) | 8,888.88 litres | 88.88 Lpa          | £22.00 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                      | Total volume declared | Pure alcohol declared | SPR duty rate    | Action        |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR) | 8,888.88l             | 88.88 Lpa             | £22.00 per litre | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Beer Page"
    And I click save and continue button on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 1.3% and 3.4% ABV (311)     |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     |
      | Non-draught beer between 8.5% and 22% ABV (331)      |
      | Non-draught beer exceeding 22.1% ABV (341)           |
      | Draught beer between 1.3% and 3.4% ABV (351)         |
      | Draught beer between 3.5% and 8.4% ABV (356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (376 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 945.55 litres  |
      | Pure alcohol | 55.55 litres   |
      | Total volume | 898.34 litres  |
      | Pure alcohol | 77.55 litres   |
      | Total volume | 667.32 litres  |
      | Pure alcohol | 66.34 litres   |
      | Total volume | 999.19 litres  |
      | Pure alcohol | 99.13 litres   |
      | Total volume | 887.54 litres  |
      | Pure alcohol | 66.44 litres   |
      | Total volume | 699.45 litres  |
      | Pure alcohol | 66.89 litres   |
      | Total volume | 8888.88 litres |
      | Pure alcohol | 88.88 litres   |

  Scenario: Cider- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality
    When I click on "Tell us about your cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I "select" checkbox "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Cider between 1.3% and 3.4% ABV (tax type code 362),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367),Cider between 1.3% and 3.4% ABV (tax type code 372),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page"
    When I enter "789.44" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "43.44" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "898.12" for "Standard cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "22.22" for "Standard cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "787.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "33.21" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "889.12" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I enter "22.45" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page"
    When I enter "656.66" for "Non-draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "66.66" for "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "14" for "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "999.99" for "Non-draught cider between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "98.99" for "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "12.45" for "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "887.21" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "45.56" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "16" for "Draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "653.11" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "fourth" input box
    And I enter "33.33" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "fourth" input box
    And I enter "18" for "Draught cider between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value         |
      | Total volume  | 789.44 litres |
      | Pure alcohol  | 43.44 litres  |
      | Total volume  | 898.12 litres |
      | Pure alcohol  | 22.22 litres  |
      | Total volume  | 889.12 litres |
      | Pure alcohol  | 22.45 litres  |
      | Total volume  | 787.77 litres |
      | Pure alcohol  | 33.21 litres  |
      | Total volume  | 656.66 litres |
      | Pure alcohol  | 66.66 litres  |
      | SPR duty rate | £14.00        |
      | Total volume  | 999.99 litres |
      | Pure alcohol  | 98.99 litres  |
      | SPR duty rate | £12.45        |
      | Total volume  | 887.21 litres |
      | Pure alcohol  | 45.56 litres  |
      | SPR duty rate | £16.00        |
      | Total volume  | 653.11 litres |
      | Pure alcohol  | 33.33 litres  |
      | SPR duty rate | £18.00        |
#To verify 'Change' link functionality for cider to declare
    When I click "Change Cider to declare" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "What Do You Need To Declare Cider Page" with new url
    When I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I click "Change Cider to declare" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "What Do You Need To Declare Cider Page" with new url
    When I "unselect" checkbox "Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page"
    When I enter "789.44" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "43.44" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "898.12" for "Standard cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "22.22" for "Standard cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "787.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "33.21" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "889.12" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I enter "22.45" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page"
    When I enter "656.66" for "Non-draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "66.66" for "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "14" for "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "999.99" for "Non-draught cider between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "98.99" for "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "12.45" for "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "887.21" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "45.56" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "16" for "Draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I click save and continue button on "Single Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   |
    And I check the page source for the following key-value pairs:
      | key           | value         |
      | Total volume  | 789.44 litres |
      | Pure alcohol  | 43.44 litres  |
      | Total volume  | 898.12 litres |
      | Pure alcohol  | 22.22 litres  |
      | Total volume  | 787.77 litres |
      | Pure alcohol  | 33.21 litres  |
      | Total volume  | 889.12 litres |
      | Pure alcohol  | 22.45 litres  |
      | Total volume  | 656.66 litres |
      | Pure alcohol  | 66.66 litres  |
      | SPR duty rate | £14.00        |
      | Total volume  | 999.99 litres |
      | Pure alcohol  | 98.99 litres  |
      | SPR duty rate | £12.45        |
      | Total volume  | 887.21 litres |
      | Pure alcohol  | 45.56 litres  |
      | SPR duty rate | £16.00        |
#To verify 'Change' link functionality for Cider to duty
    When I click "Change Cider duty" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page" with new url
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I click "Change Cider duty" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page" with new url
    When I enter "999.99" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "99.99" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "898.12" for "Standard cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "22.22" for "Standard cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "787.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "33.21" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "889.12" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I enter "22.45" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   |
    And I check the page source for the following key-value pairs:
      | key           | value         |
      | Total volume  | 999.99 litres |
      | Pure alcohol  | 99.99 litres  |
      | Total volume  | 898.12 litres |
      | Pure alcohol  | 22.22 litres  |
      | Total volume  | 787.77 litres |
      | Pure alcohol  | 33.21 litres  |
      | Total volume  | 889.12 litres |
      | Pure alcohol  | 22.45 litres  |
      | Total volume  | 656.66 litres |
      | Pure alcohol  | 66.66 litres  |
      | SPR duty rate | £14.00        |
      | Total volume  | 999.99 litres |
      | Pure alcohol  | 98.99 litres  |
      | SPR duty rate | £12.45        |
      | Total volume  | 887.21 litres |
      | Pure alcohol  | 45.56 litres  |
      | SPR duty rate | £16.00        |
#To verify 'Change' link functionality for Cider eligible for Small Producer Relief
    When I click "Change Cider eligible for Small Producer Relief" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page" with new url
    And I click save and continue button on "Single Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I click "Change Cider eligible for Small Producer Relief" on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page" with new url
    When I enter "656.66" for "Non-draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "66.66" for "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "14" for "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "first" input box
    And I enter "999.99" for "Non-draught cider between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "98.99" for "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "12.45" for "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "second" input box
    And I enter "777.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "77.77" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I enter "7.7" for "Draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page" at "third" input box
    And I click save and continue button on "Single Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   |
    And I check the page source for the following key-value pairs:
      | key           | value         |
      | Total volume  | 999.99 litres |
      | Pure alcohol  | 99.99 litres  |
      | Total volume  | 898.12 litres |
      | Pure alcohol  | 22.22 litres  |
      | Total volume  | 787.77 litres |
      | Pure alcohol  | 33.21 litres  |
      | Total volume  | 889.12 litres |
      | Pure alcohol  | 22.45 litres  |
      | Total volume  | 656.66 litres |
      | Pure alcohol  | 66.66 litres  |
      | SPR duty rate | £14.00        |
      | Total volume  | 999.99 litres |
      | Pure alcohol  | 98.99 litres  |
      | SPR duty rate | £12.45        |
      | Total volume  | 777.77 litres |
      | Pure alcohol  | 77.77 litres  |
      | SPR duty rate | £7.70         |
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£4,382.97"
    And I should see the following product details
      | Description                                                                                         | Litres of pure alcohol | Duty rate        | Duty due  | Action                                                                                                     |
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   | 99.99 Lpa              | £9.27 per litre  | £926.90   | Change Non-draught cider between 1.3% and 3.4% ABV (312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     | 22.22 Lpa              | £9.67 per litre  | £214.86   | Change Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       | 33.21 Lpa              | £8.42 per litre  | £279.62   | Change Draught cider between 1.3% and 3.4% ABV (352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         | 22.45 Lpa              | £8.78 per litre  | £197.11   | Change Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               | 66.66 Lpa              | £14.00 per litre | £933.24   | Change Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 98.99 Lpa              | £12.45 per litre | £1,232.42 | Change Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   | 77.77 Lpa              | £7.70 per litre  | £598.82   | Change Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   |
  #At Duty due page, all the change links are designed to redirect to Check your answers page so I am checking a couple of random links
    When I click on change link 3 on "Duty Due Cider Page" for alcohol type "Cider"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£4,382.97"
    When I click on change link 4 on "Duty Due Cider Page" for alcohol type "Cider"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£4,382.97"

  Scenario: Cider- Alcohol Duty Returns Journey - When Multiple SPR is set to 'Yes' - Change link functionality
    When I click on "Tell us about your cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I "select" checkbox "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Cider between 1.3% and 3.4% ABV (tax type code 362),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367),Cider between 1.3% and 3.4% ABV (tax type code 372),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page"
    When I enter "789.44" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "43.44" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "first" input box
    And I enter "898.12" for "Standard cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "22.22" for "Standard cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "second" input box
    And I enter "787.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "33.21" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "third" input box
    And I enter "889.12" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I enter "22.45" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page" at "fourth" input box
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page"
    When I select radio button "Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR)" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "7999.99" for "Total litres" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "77.99" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "20.99" for "Duty rate" on "Multiple Small Producer Relief Rate Cider Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers SPR Cider Page"
    And I should see following details at the "Check Your Answers SPR Cider Page"
      | Description                                                                                         | Total cider     | Total pure alcohol | Duty rate        |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 7,999.99 litres | 77.99 Lpa          | £20.99 per litre |
  #To verify 'Change' link functionality at Check Your Answers SPR Cider Page. All the links are set to redirect to the same page so checking only one link
    When I click "Change Total cider" on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page" with new url containing prefix as "change-" and suffix as "Cider#totalLitres"
    And I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers SPR Cider Page"
    When I click "Change Total cider" on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page" with new url containing prefix as "change-" and suffix as "Cider#totalLitres"
    When I select radio button "Draught cider between 1.3% and 3.4% ABV (372 SPR)" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "8888.88" for "Total litres" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "88.88" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "8.88" for "Duty rate" on "Multiple Small Producer Relief Rate Cider Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    And I should see following details at the "Check Your Answers SPR Cider Page"
      | Description                                       | Total cider     | Total pure alcohol | Duty rate       |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR) | 8,888.88 litres | 88.88 Lpa          | £8.88 per litre |
    When I click continue button on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple SPR List Question Cider Page"
    And I should see the following product details
      | Description                                       | Total volume declared | Pure alcohol declared | SPR duty rate   | Action        |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR) | 8,888.88l             | 88.88 Lpa             | £8.88 per litre | Change Remove |
 #To verify 'Change' link functionality at Multiple SPR List Question Cider Page
    When I click "Change hyperlink" on "Multiple SPR List Question Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page" with new url containing prefix as "" and suffix as "Cider?index=0"
    When I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    Then I am presented with the "Multiple SPR List Question Cider Page"
    When I click "Change hyperlink" on "Multiple SPR List Question Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page" with new url containing prefix as "" and suffix as "Cider?index=0"
    When I select radio button "Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR)" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "8888.88" for "Total litres" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "88.88" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "8.88" for "Duty rate" on "Multiple Small Producer Relief Rate Cider Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    And I should see following details at the "Check Your Answers SPR Cider Page"
      | Description                                                                                     | Total cider     | Total pure alcohol | Duty rate       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR) | 8,888.88 litres | 88.88 Lpa          | £8.88 per litre |
    When I click continue button on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple SPR List Question Cider Page"
    And I should see the following product details
      | Description                                                                                     | Total volume declared | Pure alcohol declared | SPR duty rate   | Action        |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR) | 8,888.88l             | 88.88 Lpa             | £8.88 per litre | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Cider Page"
    And I click save and continue button on "Multiple SPR List Question Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 789.44 litres  |
      | Pure alcohol | 43.44 litres   |
      | Total volume | 898.12 litres  |
      | Pure alcohol | 22.22 litres   |
      | Total volume | 787.77 litres  |
      | Pure alcohol | 33.21 litres   |
      | Total volume | 889.12 litres  |
      | Pure alcohol | 22.45 litres   |
      | Total volume | 8888.88 litres |
      | Pure alcohol | 88.88 litres   |

  Scenario: Wine- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality
    When I click on "Tell us about your wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I "select" checkbox "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine exceeding 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363),Wine between 3.5% and 8.4% ABV (tax type code 368),Wine between 1.3% and 3.4% ABV (tax type code 373),Wine between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "35.55" for "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "88.88" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "22.22" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "990.01" for "Standard wine exceeding 22% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "82.22" for "Standard wine exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "895.22" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "22.33" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "569.33" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "sixth" input box
    And I enter "24.55" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page"
    When I enter "888.88" for "Non-draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "99.45" for "Non-draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "15" for "Non-draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "776.45" for "Non-draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "78.9" for "Non-draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "18" for "Non-draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "776.89" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "99.99" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "15" for "Draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "889.65" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I enter "66.54" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I enter "20" for "Draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     |
      | Non-draught wine between 8.5% and 22% ABV (333)      |
      | Non-draught wine exceeding 22.1% ABV (343)           |
      | Draught wine between 1.3% and 3.4% ABV (353)         |
      | Draught wine between 3.5% and 8.4% ABV (358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 3698.52 litres |
      | Pure alcohol  | 88.88 litres   |
      | Total volume  | 8974.23 litres |
      | Pure alcohol  | 22.22 litres   |
      | Total volume  | 1234.55 litres |
      | Pure alcohol  | 35.55 litres   |
      | Total volume  | 990.01 litres  |
      | Pure alcohol  | 82.22 litres   |
      | Total volume  | 895.22 litres  |
      | Pure alcohol  | 22.33 litres   |
      | Total volume  | 569.33 litres  |
      | Pure alcohol  | 24.55 litres   |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.45 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9 litres    |
      | SPR duty rate | £18.00         |
      | Total volume  | 776.89 litres  |
      | Pure alcohol  | 99.99 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 889.65 litres  |
      | Pure alcohol  | 66.54 litres   |
      | SPR duty rate | £20.00         |
#To verify 'Change' link functionality for cider to declare
    When I click "Change Wine to declare" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "What Do You Need To Declare Wine Page" with new url
    When I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I click "Change Wine to declare" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "What Do You Need To Declare Wine Page" with new url
    When I "unselect" checkbox "Wine exceeding 22.1% ABV (tax type code 343)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "35.55" for "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "88.88" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "22.22" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "895.22" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "22.33" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "569.33" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "24.55" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page"
    When I enter "888.88" for "Non-draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "99.45" for "Non-draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "15" for "Non-draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "776.45" for "Non-draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "78.9" for "Non-draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "18" for "Non-draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "776.89" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "99.99" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "15" for "Draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "889.65" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I enter "66.54" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I enter "20" for "Draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     |
      | Non-draught wine between 8.5% and 22% ABV (333)      |
      | Draught wine between 1.3% and 3.4% ABV (353)         |
      | Draught wine between 3.5% and 8.4% ABV (358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 1234.55 litres |
      | Pure alcohol  | 35.55 litres   |
      | Total volume  | 3698.52 litres |
      | Pure alcohol  | 88.88 litres   |
      | Total volume  | 8974.23 litres |
      | Pure alcohol  | 22.22 litres   |
      | Total volume  | 895.22 litres  |
      | Pure alcohol  | 22.33 litres   |
      | Total volume  | 569.33 litres  |
      | Pure alcohol  | 24.55 litres   |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.45 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9 litres    |
      | SPR duty rate | £18.00         |
      | Total volume  | 776.89 litres  |
      | Pure alcohol  | 99.99 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 889.65 litres  |
      | Pure alcohol  | 66.54 litres   |
      | SPR duty rate | £20.00         |
#To verify 'Change' link functionality for Wine to duty
    When I click "Change Wine duty" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page" with new url
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I click "Change Wine duty" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page" with new url
    When I enter "1234.55" for "Standard wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "35.55" for "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "88.88" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "22.22" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "895.22" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "22.33" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "555.55" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "55.55" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     |
      | Non-draught wine between 8.5% and 22% ABV (333)      |
      | Draught wine between 1.3% and 3.4% ABV (353)         |
      | Draught wine between 3.5% and 8.4% ABV (358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 1234.55 litres |
      | Pure alcohol  | 35.55 litres   |
      | Total volume  | 3698.52 litres |
      | Pure alcohol  | 88.88 litres   |
      | Total volume  | 8974.23 litres |
      | Pure alcohol  | 22.22 litres   |
      | Total volume  | 895.22 litres  |
      | Pure alcohol  | 22.33 litres   |
      | Total volume  | 555.55 litres  |
      | Pure alcohol  | 55.55 litres   |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.45 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9 litres    |
      | SPR duty rate | £18.00         |
      | Total volume  | 776.89 litres  |
      | Pure alcohol  | 99.99 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 889.65 litres  |
      | Pure alcohol  | 66.54 litres   |
      | SPR duty rate | £20.00         |
#To verify 'Change' link functionality for Wine eligible for Small Producer Relief
    When I click "Change Wine eligible for Small Producer Relief" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page" with new url
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I click "Change Wine eligible for Small Producer Relief" on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page" with new url
    When I enter "888.88" for "Non-draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "99.45" for "Non-draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "15" for "Non-draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "first" input box
    And I enter "776.45" for "Non-draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "78.9" for "Non-draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "18" for "Non-draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "second" input box
    And I enter "444.44" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "44.44" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "15" for "Draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "third" input box
    And I enter "889.65" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I enter "66.54" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I enter "20" for "Draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     |
      | Non-draught wine between 8.5% and 22% ABV (333)      |
      | Draught wine between 1.3% and 3.4% ABV (353)         |
      | Draught wine between 3.5% and 8.4% ABV (358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 1234.55 litres |
      | Pure alcohol  | 35.55 litres   |
      | Total volume  | 3698.52 litres |
      | Pure alcohol  | 88.88 litres   |
      | Total volume  | 8974.23 litres |
      | Pure alcohol  | 22.22 litres   |
      | Total volume  | 895.22 litres  |
      | Pure alcohol  | 22.33 litres   |
      | Total volume  | 555.55 litres  |
      | Pure alcohol  | 55.55 litres   |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.45 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9 litres    |
      | SPR duty rate | £18.00         |
      | Total volume  | 444.44 litres  |
      | Pure alcohol  | 44.44 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 889.65 litres  |
      | Pure alcohol  | 66.54 litres   |
      | SPR duty rate | £20.00         |
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£9,321.61"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol | Duty rate        | Duty due  | Action                                                      |
      | Non-draught wine between 1.3% and 3.4% ABV (313)     | 35.55 Lpa              | £9.27 per litre  | £329.54   | Change Non-draught wine between 1.3% and 3.4% ABV (313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     | 88.88 Lpa              | £24.77 per litre | £2,201.55 | Change Non-draught wine between 3.5% and 8.4% ABV (323)     |
      | Non-draught wine between 8.5% and 22% ABV (333)      | 22.22 Lpa              | £28.50 per litre | £633.27   | Change Non-draught wine between 8.5% and 22% ABV (333)      |
      | Draught wine between 1.3% and 3.4% ABV (353)         | 22.33 Lpa              | £8.42 per litre  | £188.01   | Change Draught wine between 1.3% and 3.4% ABV (353)         |
      | Draught wine between 3.5% and 8.4% ABV (358)         | 55.55 Lpa              | £19.08 per litre | £1,059.89 | Change Draught wine between 3.5% and 8.4% ABV (358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | 99.45 Lpa              | £15.00 per litre | £1,491.75 | Change Non-draught wine between 1.3% and 3.4% ABV (363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 78.9 Lpa               | £18.00 per litre | £1,420.20 | Change Non-draught wine between 3.5% and 8.4% ABV (368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     | 44.44 Lpa              | £15.00 per litre | £666.60   | Change Draught wine between 1.3% and 3.4% ABV (373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     | 66.54 Lpa              | £20.00 per litre | £1,330.80 | Change Draught wine between 3.5% and 8.4% ABV (378 SPR)     |
  #At Duty due page, all the change links are designed to redirect to Check your answers page so I am checking a couple of random links
    When I click on change link 3 on "Duty Due Wine Page" for alcohol type "Wine"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£9,321.61"
    When I click on change link 6 on "Duty Due Wine Page" for alcohol type "Wine"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£9,321.61"

  Scenario: Wine- Alcohol Duty Returns Journey - When Multiple SPR is set to 'Yes' - Change link functionality
    When I click on "Tell us about your wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I "select" checkbox "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine exceeding 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363),Wine between 3.5% and 8.4% ABV (tax type code 368),Wine between 1.3% and 3.4% ABV (tax type code 373),Wine between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "35.55" for "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "first" input box
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "88.88" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "second" input box
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "22.22" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "third" input box
    And I enter "990.01" for "Standard wine exceeding 22% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "82.22" for "Standard wine exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fourth" input box
    And I enter "895.22" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "22.33" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "fifth" input box
    And I enter "569.33" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page" at "sixth" input box
    And I enter "24.55" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page"
    When I select radio button "Non-draught wine between 3.5% and 8.4% ABV (368 SPR)" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "678.99" for "Total litres" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "66.43" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "15.65" for "Duty rate" on "Multiple Small Producer Relief Rate Wine Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers SPR Wine Page"
    And I should see following details at the "Check Your Answers SPR Wine Page"
      | Description                                          | Total wine    | Total pure alcohol | Duty rate        |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 678.99 litres | 66.43 Lpa          | £15.65 per litre |
  #To verify 'Change' link functionality at Check Your Answers SPR Cider Page. All the links are set to redirect to the same page so checking only one link
    When I click "Change Duty rate" on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page" with new url containing prefix as "change-" and suffix as "Wine#dutyRate"
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers SPR Wine Page"
    When I click "Change Duty rate" on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page" with new url containing prefix as "change-" and suffix as "Wine#dutyRate"
    When I select radio button "Draught wine between 1.3% and 3.4% ABV (373 SPR)" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "999.99" for "Total litres" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "88.88" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "7.77" for "Duty rate" on "Multiple Small Producer Relief Rate Wine Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers SPR Wine Page"
    And I should see following details at the "Check Your Answers SPR Wine Page"
      | Description                                      | Total wine    | Total pure alcohol | Duty rate       |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR) | 999.99 litres | 88.88 Lpa          | £7.77 per litre |
    When I click continue button on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple SPR List Question Wine Page"
    And I should see the following product details
      | Description                                      | Total volume declared | Pure alcohol declared | SPR duty rate   | Action        |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR) | 999.99l               | 88.88 Lpa             | £7.77 per litre | Change Remove |
 #To verify 'Change' link functionality at Multiple SPR List Question Cider Page
    When I click "Change hyperlink" on "Multiple SPR List Question Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page" with new url containing prefix as "" and suffix as "Wine?index=0"
    When I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Multiple SPR List Question Wine Page"
    When I click "Change hyperlink" on "Multiple SPR List Question Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page" with new url containing prefix as "" and suffix as "Wine?index=0"
    When I select radio button "Draught wine between 3.5% and 8.4% ABV (378 SPR)" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "999.99" for "Total litres" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "88.88" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "7.77" for "Duty rate" on "Multiple Small Producer Relief Rate Wine Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers SPR Wine Page" with url suffix as "Wine?index=0"
    And I should see following details at the "Check Your Answers SPR Wine Page"
      | Description                                      | Total wine    | Total pure alcohol | Duty rate       |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR) | 999.99 litres | 88.88 Lpa          | £7.77 per litre |
    When I click continue button on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple SPR List Question Wine Page"
    And I should see the following product details
      | Description                                      | Total volume declared | Pure alcohol declared | SPR duty rate   | Action        |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR) | 999.99l               | 88.88 Lpa             | £7.77 per litre | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Wine Page"
    And I click save and continue button on "Multiple SPR List Question Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     |
      | Non-draught wine between 8.5% and 22% ABV (333)      |
      | Non-draught wine exceeding 22.1% ABV (343)           |
      | Draught wine between 1.3% and 3.4% ABV (353)         |
      | Draught wine between 3.5% and 8.4% ABV (358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 1234.55 litres |
      | Pure alcohol | 35.55 litres   |
      | Total volume | 3698.52 litres |
      | Pure alcohol | 88.88 litres   |
      | Total volume | 8974.23 litres |
      | Pure alcohol | 22.22 litres   |
      | Total volume | 990.01 litres  |
      | Pure alcohol | 82.22 litres   |
      | Total volume | 895.22 litres  |
      | Pure alcohol | 22.33 litres   |
      | Total volume | 569.33 litres  |
      | Pure alcohol | 24.55 litres   |
      | Total volume | 999.99 litres  |
      | Pure alcohol | 88.88 litres   |

  Scenario: Spirits- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality
    When I click on "Tell us about your spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    When I "select" checkbox "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits exceeding 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365),Spirits between 3.5% and 8.4% ABV (tax type code 370),Spirits between 1.3% and 3.4% ABV (tax type code 375),Spirits between 3.5% and 8.4% ABV (tax type code 380)" on "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page"
    When I enter "8888.66" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "88.8" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "7777.77" for "Standard spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "77.77" for "Standard spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "6666.66" for "Standard spirits between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "66.66" for "Standard spirits between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "5555.55" for "Standard spirits exceeding 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "55.55" for "Standard spirits exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "4444.44" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "44.44" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "3333.33" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I enter "33.33" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page"
    When I enter "888.88" for "Non-draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "99.45" for "Non-draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "15" for "Non-draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "776.45" for "Non-draught spirits between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "78.9" for "Non-draught spirits between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "18" for "Non-draught spirits between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "776.89" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "99.99" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "15" for "Draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "889.65" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "fourth" input box
    And I enter "66.54" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "fourth" input box
    And I enter "20" for "Draught spirits between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     |
      | Non-draught spirits between 8.5% and 22% ABV (335)      |
      | Non-draught spirits exceeding 22.1% ABV (345)           |
      | Draught spirits between 1.3% and 3.4% ABV (355)         |
      | Draught spirits between 3.5% and 8.4% ABV (360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 8888.66 litres |
      | Pure alcohol  | 88.8 litres    |
      | Total volume  | 6666.66 litres |
      | Pure alcohol  | 66.66 litres   |
      | Total volume  | 5555.55 litres |
      | Pure alcohol  | 55.55 litres   |
      | Total volume  | 7777.77 litres |
      | Pure alcohol  | 77.77 litres   |
      | Total volume  | 4444.44 litres |
      | Pure alcohol  | 44.44 litres   |
      | Total volume  | 3333.33 litres |
      | Pure alcohol  | 33.33 litres   |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.45 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9 litres    |
      | SPR duty rate | £18.00         |
      | Total volume  | 776.89 litres  |
      | Pure alcohol  | 99.99 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 889.65 litres  |
      | Pure alcohol  | 66.54 litres   |
      | SPR duty rate | £20.00         |
#To verify 'Change' link functionality for spirits to declare
    When I click "Change Spirits to declare" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page" with new url
    When I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I click "Change Spirits to declare" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page" with new url
    When I "unselect" checkbox "Spirits between 3.5% and 8.4% ABV (tax type code 380)" on "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page"
    When I enter "8888.66" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "88.8" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "7777.77" for "Standard spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "77.77" for "Standard spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "6666.66" for "Standard spirits between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "66.66" for "Standard spirits between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "5555.55" for "Standard spirits exceeding 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "55.55" for "Standard spirits exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "4444.44" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "44.44" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "3333.33" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I enter "33.33" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page"
    When I enter "888.88" for "Non-draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "99.45" for "Non-draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "15" for "Non-draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "776.45" for "Non-draught spirits between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "78.9" for "Non-draught spirits between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "18" for "Non-draught spirits between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "776.89" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "99.99" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "15" for "Draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I click save and continue button on "Single Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     |
      | Non-draught spirits between 8.5% and 22% ABV (335)      |
      | Non-draught spirits exceeding 22.1% ABV (345)           |
      | Draught spirits between 1.3% and 3.4% ABV (355)         |
      | Draught spirits between 3.5% and 8.4% ABV (360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 8888.66 litres |
      | Pure alcohol  | 88.8 litres    |
      | Total volume  | 6666.66 litres |
      | Pure alcohol  | 66.66 litres   |
      | Total volume  | 5555.55 litres |
      | Pure alcohol  | 55.55 litres   |
      | Total volume  | 7777.77 litres |
      | Pure alcohol  | 77.77 litres   |
      | Total volume  | 4444.44 litres |
      | Pure alcohol  | 44.44 litres   |
      | Total volume  | 3333.33 litres |
      | Pure alcohol  | 33.33 litres   |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.45 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9 litres    |
      | SPR duty rate | £18.00         |
      | Total volume  | 776.89 litres  |
      | Pure alcohol  | 99.99 litres   |
      | SPR duty rate | £15.00         |
  #To verify 'Change' link functionality for Spirits to duty
    When I click "Change Spirits duty" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page" with new url
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I click "Change Spirits duty" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page" with new url
    When I enter "3636.36" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "36.36" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "7777.77" for "Standard spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "77.77" for "Standard spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "6666.66" for "Standard spirits between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "66.66" for "Standard spirits between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "5555.55" for "Standard spirits exceeding 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "55.55" for "Standard spirits exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "4444.44" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "44.44" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "3333.33" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I enter "33.33" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     |
      | Non-draught spirits between 8.5% and 22% ABV (335)      |
      | Non-draught spirits exceeding 22.1% ABV (345)           |
      | Draught spirits between 1.3% and 3.4% ABV (355)         |
      | Draught spirits between 3.5% and 8.4% ABV (360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 3636.36 litres |
      | Pure alcohol  | 36.36 litres   |
      | Total volume  | 6666.66 litres |
      | Pure alcohol  | 66.66 litres   |
      | Total volume  | 5555.55 litres |
      | Pure alcohol  | 55.55 litres   |
      | Total volume  | 7777.77 litres |
      | Pure alcohol  | 77.77 litres   |
      | Total volume  | 4444.44 litres |
      | Pure alcohol  | 44.44 litres   |
      | Total volume  | 3333.33 litres |
      | Pure alcohol  | 33.33 litres   |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.45 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9 litres    |
      | SPR duty rate | £18.00         |
      | Total volume  | 776.89 litres  |
      | Pure alcohol  | 99.99 litres   |
      | SPR duty rate | £15.00         |
#To verify 'Change' link functionality for Spirits eligible for Small Producer Relief
    When I click "Change Spirits eligible for Small Producer Relief" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page" with new url
    And I click save and continue button on "Single Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I click "Change Spirits eligible for Small Producer Relief" on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page" with new url
    When I enter "888.88" for "Non-draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "99.45" for "Non-draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "15" for "Non-draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "first" input box
    And I enter "776.45" for "Non-draught spirits between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "78.9" for "Non-draught spirits between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "18" for "Non-draught spirits between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "second" input box
    And I enter "888.88" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "88.88" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I enter "8.88" for "Draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page" at "third" input box
    And I click save and continue button on "Single Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     |
      | Non-draught spirits between 8.5% and 22% ABV (335)      |
      | Non-draught spirits exceeding 22.1% ABV (345)           |
      | Draught spirits between 1.3% and 3.4% ABV (355)         |
      | Draught spirits between 3.5% and 8.4% ABV (360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 3636.36 litres |
      | Pure alcohol  | 36.36 litres   |
      | Total volume  | 6666.66 litres |
      | Pure alcohol  | 66.66 litres   |
      | Total volume  | 5555.55 litres |
      | Pure alcohol  | 55.55 litres   |
      | Total volume  | 7777.77 litres |
      | Pure alcohol  | 77.77 litres   |
      | Total volume  | 4444.44 litres |
      | Pure alcohol  | 44.44 litres   |
      | Total volume  | 3333.33 litres |
      | Pure alcohol  | 33.33 litres   |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 99.45 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 776.45 litres  |
      | Pure alcohol  | 78.9 litres    |
      | SPR duty rate | £18.00         |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 88.88 litres   |
      | SPR duty rate | £8.88          |
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£10,632.13"
#At the 'Action' section, currently the UI tests are pulling hidden text too. This method will be improved at later stage
    And I should see the following product details
      | Description                                             | Litres of pure alcohol | Duty rate        | Duty due  | Action                                                         |
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     | 36.36 Lpa              | £9.27 per litre  | £337.05   | Change Non-draught spirits between 1.3% and 3.4% ABV (315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     | 77.77 Lpa              | £24.77 per litre | £1,926.36 | Change Non-draught spirits between 3.5% and 8.4% ABV (325)     |
      | Non-draught spirits between 8.5% and 22% ABV (335)      | 66.66 Lpa              | £28.50 per litre | £1,899.81 | Change Non-draught spirits between 8.5% and 22% ABV (335)      |
      | Non-draught spirits exceeding 22.1% ABV (345)           | 55.55 Lpa              | £31.64 per litre | £1,757.60 | Change Non-draught spirits exceeding 22.1% ABV (345)           |
      | Draught spirits between 1.3% and 3.4% ABV (355)         | 44.44 Lpa              | £8.42 per litre  | £374.18   | Change Draught spirits between 1.3% and 3.4% ABV (355)         |
      | Draught spirits between 3.5% and 8.4% ABV (360)         | 33.33 Lpa              | £19.08 per litre | £635.93   | Change Draught spirits between 3.5% and 8.4% ABV (360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) | 99.45 Lpa              | £15.00 per litre | £1,491.75 | Change Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) | 78.9 Lpa               | £18.00 per litre | £1,420.20 | Change Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     | 88.88 Lpa              | £8.88 per litre  | £789.25   | Change Draught spirits between 1.3% and 3.4% ABV (375 SPR)     |
  #At Duty due page, all the change links are designed to redirect to Check your answers page so I am checking a couple of random links
    When I click on change link 2 on "Duty Due Spirits Page" for alcohol type "Spirits"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£10,632.13"
    When I click on change link 4 on "Duty Due Spirits Page" for alcohol type "Spirits"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£10,632.13"

  Scenario: Spirits- Alcohol Duty Returns Journey - When Multiple SPR is set to 'YES' - Change link functionality
    When I click on "Tell us about your spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    When I "select" checkbox "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits exceeding 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365),Spirits between 3.5% and 8.4% ABV (tax type code 370),Spirits between 1.3% and 3.4% ABV (tax type code 375),Spirits between 3.5% and 8.4% ABV (tax type code 380)" on "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    When I enter "8888.66" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "88.8" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "first" input box
    And I enter "7777.77" for "Standard spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "77.77" for "Standard spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "second" input box
    And I enter "6666.66" for "Standard spirits between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "66.66" for "Standard spirits between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "third" input box
    And I enter "5555.55" for "Standard spirits exceeding 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "55.55" for "Standard spirits exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fourth" input box
    And I enter "4444.44" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "44.44" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "fifth" input box
    And I enter "3333.33" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I enter "33.33" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Spirits Page"
    When I select radio button "Draught spirits between 3.5% and 8.4% ABV (380 SPR)" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "789.99" for "Total litres" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "55.55" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "20" for "Duty rate" on "Multiple Small Producer Relief Rate Spirits Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers SPR Spirits Page"
    And I should see following details at the "Check Your Answers SPR Spirits Page"
      | Description                                         | Total spirits | Total pure alcohol | Duty rate        |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR) | 789.99 litres | 55.55 Lpa          | £20.00 per litre |
#To verify 'Change' link functionality at Check Your Answers SPR Spirits Page. All the links are set to redirect to the same page so checking only one link
    When I click "Change Total pure alcohol" on "Check Your Answers SPR Spirits Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Spirits Page" with new url containing prefix as "change-" and suffix as "Spirits#pureAlcohol"
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers SPR Spirits Page"
    When I click "Change Total pure alcohol" on "Check Your Answers SPR Spirits Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Spirits Page" with new url containing prefix as "change-" and suffix as "Spirits#pureAlcohol"
    And I enter "88.99" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Spirits Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers SPR Spirits Page"
    And I should see following details at the "Check Your Answers SPR Spirits Page"
      | Description                                         | Total spirits | Total pure alcohol | Duty rate        |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR) | 789.99 litres | 88.99 Lpa          | £20.00 per litre |
    When I click continue button on "Check Your Answers SPR Spirits Page"
    Then I am presented with the "Multiple SPR List Question Spirits Page"
    And I should see the following product details
      | Description                                         | Total volume declared | Pure alcohol declared | SPR duty rate    | Action        |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR) | 789.99l               | 88.99 Lpa             | £20.00 per litre | Change Remove |
 #To verify 'Change' link functionality at Multiple SPR List Question Cider Page
    When I click "Change hyperlink" on "Multiple SPR List Question Spirits Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Spirits Page" with new url containing prefix as "" and suffix as "Spirits?index=0"
    When I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Multiple SPR List Question Spirits Page"
    When I click "Change hyperlink" on "Multiple SPR List Question Spirits Page"
    And I select radio button "Non-draught spirits between 3.5% and 8.4% ABV (370 SPR)" on "Multiple Small Producer Relief Rate Spirits Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers SPR Spirits Page" with url suffix as "Spirits?index=0"
    And I should see following details at the "Check Your Answers SPR Spirits Page"
      | Description                                             | Total spirits | Total pure alcohol | Duty rate        |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) | 789.99 litres | 88.99 Lpa          | £20.00 per litre |
    When I click continue button on "Check Your Answers SPR Spirits Page"
    And I should see the following product details
      | Description                                         | Total volume declared | Pure alcohol declared | SPR duty rate    | Action        |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) | 789.99l               | 88.99 Lpa             | £20.00 per litre | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Spirits Page"
    And I click save and continue button on "Multiple SPR List Question Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     |
      | Non-draught spirits between 8.5% and 22% ABV (335)      |
      | Non-draught spirits exceeding 22.1% ABV (345)           |
      | Draught spirits between 1.3% and 3.4% ABV (355)         |
      | Draught spirits between 3.5% and 8.4% ABV (360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 8888.66 litres |
      | Pure alcohol | 88.8 litres    |
      | Total volume | 6666.66 litres |
      | Pure alcohol | 66.66 litres   |
      | Total volume | 5555.55 litres |
      | Pure alcohol | 55.55 litres   |
      | Total volume | 7777.77 litres |
      | Pure alcohol | 77.77 litres   |
      | Total volume | 4444.44 litres |
      | Pure alcohol | 44.44 litres   |
      | Total volume | 3333.33 litres |
      | Pure alcohol | 33.33 litres   |
      | Total volume | 789.99 litres  |
      | Pure alcohol | 89.99 litres   |