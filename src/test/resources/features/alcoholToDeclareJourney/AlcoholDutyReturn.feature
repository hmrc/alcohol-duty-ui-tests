@Test @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey

  Background: : Common Steps - Alcohol Duty Returns Journey
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

  @ZAP @a11y
  Scenario: Beer- Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'No'
    When I click on "Tell us about your beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I select checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer exceeding 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "55.55" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "77.55" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.34" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "999.19" for "Standard beer exceeding 22% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "99.13" for "Standard beer exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "887.54" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.44" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.89" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page"
    When I enter "888.88" for "Non-draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page"
    And I enter "99.45" for "Non-draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page"
    And I enter "15" for "Non-draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page"
    And I enter "776.45" for "Non-draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page"
    And I enter "78.9" for "Non-draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page"
    And I enter "18" for "Non-draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page"
    And I enter "776.89" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page"
    And I enter "99.99" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page"
    And I enter "15" for "Draught beer between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page"
    And I enter "889.65" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Beer Page"
    And I enter "66.54" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Beer Page"
    And I enter "20" for "Draught beer between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Single Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
#    this method needs to be improved after the empty keys have been resolved at the CYA page
    And I check the page source for the following key-value pairs:
      | key           | value         |
      | Total litres  | 999.19 litres |
      | Pure alcohol  | 99.13 litres  |
      | Total litres  | 945.55 litres |
      | Pure alcohol  | 55.55 litres  |
      | Total litres  | 667.32 litres |
      | Pure alcohol  | 66.34 litres  |
      | Total litres  | 898.34 litres |
      | Pure alcohol  | 77.55 litres  |
      | Total litres  | 699.45 litres |
      | Pure alcohol  | 66.89 litres  |
      | Total litres  | 887.54 litres |
      | Pure alcohol  | 66.44 litres  |
      | Total litres  | 888.88 litres |
      | Pure alcohol  | 99.45 litres  |
      | SPR duty rate | £15.00        |
      | Total litres  | 776.45 litres |
      | Pure alcohol  | 78.9 litres   |
      | SPR duty rate | £18.00        |
      | Total litres  | 776.89 litres |
      | Pure alcohol  | 99.99 litres  |
      | SPR duty rate | £15.00        |
      | Total litres  | 889.65 litres |
      | Pure alcohol  | 66.54 litres  |
      | SPR duty rate | £20.00        |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£14,749.70"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol | Duty rate        | Duty due  | Action |
      | Non-draught beer between 1.3% and 3.4% ABV (311)     | 55.55 Lpa              | £9.27 per litre  | £514.94   | Change |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     | 77.55 Lpa              | £21.01 per litre | £1,629.32 | Change |
      | Non-draught beer between 8.5% and 22% ABV (331)      | 66.34 Lpa              | £28.50 per litre | £1,890.69 | Change |
      | Non-draught beer exceeding 22.1% ABV (341)           | 99.13 Lpa              | £31.64 per litre | £3,136.47 | Change |
      | Draught beer between 1.3% and 3.4% ABV (351)         | 66.44 Lpa              | £8.42 per litre  | £559.42   | Change |
      | Draught beer between 3.5% and 8.4% ABV (356)         | 66.89 Lpa              | £19.08 per litre | £1,276.26 | Change |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 99.45 Lpa              | £15.00 per litre | £1,491.75 | Change |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) | 78.9 Lpa               | £18.00 per litre | £1,420.20 | Change |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     | 99.99 Lpa              | £15.00 per litre | £1,499.85 | Change |
      | Draught beer between 3.5% and 8.4% ABV (376 SPR)     | 66.54 Lpa              | £20.00 per litre | £1,330.80 | Change |
    When I click continue button on "Duty Due Beer Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Not started              | Not started             | Not started                | Not started                                 | Not started                                  | Not started                                |

  @ZAP @a11y
  Scenario: Beer - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'Yes'
    When I click on "Tell us about your beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I select checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer exceeding 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "55.55" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "77.55" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.34" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "999.19" for "Standard beer exceeding 22% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "99.13" for "Standard beer exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "887.54" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.44" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.89" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
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
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared | Pure alcohol declared | SPR duty rate    | Action        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99l             | 89.99 Lpa             | £19.00 per litre | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Beer Page"
    And I click save and continue button on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total litres | 999.19 litres  |
      | Pure alcohol | 99.13 litres   |
      | Total litres | 945.55 litres  |
      | Pure alcohol | 55.55 litres   |
      | Total litres | 667.32 litres  |
      | Pure alcohol | 66.34 litres   |
      | Total litres | 898.34 litres  |
      | Pure alcohol | 77.55 litres   |
      | Total litres | 699.45 litres  |
      | Pure alcohol | 66.89 litres   |
      | Total litres | 887.54 litres  |
      | Pure alcohol | 66.44 litres   |
      | Total volume | 9999.99 litres |
      | Pure alcohol | 89.99 litres   |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£10,716.91"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol | Duty rate        | Duty due  | Action |
      | Non-draught beer between 1.3% and 3.4% ABV (311)     | 55.55 Lpa              | £9.27 per litre  | £514.94   | Change |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     | 77.55 Lpa              | £21.01 per litre | £1,629.32 | Change |
      | Non-draught beer between 8.5% and 22% ABV (331)      | 66.34 Lpa              | £28.50 per litre | £1,890.69 | Change |
      | Non-draught beer exceeding 22.1% ABV (341)           | 99.13 Lpa              | £31.64 per litre | £3,136.47 | Change |
      | Draught beer between 1.3% and 3.4% ABV (351)         | 66.44 Lpa              | £8.42 per litre  | £559.42   | Change |
      | Draught beer between 3.5% and 8.4% ABV (356)         | 66.89 Lpa              | £19.08 per litre | £1,276.26 | Change |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 89.99 Lpa              | £19.00 per litre | £1,709.81 | Change |
    When I click continue button on "Duty Due Beer Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Not started              | Not started             | Not started                | Not started                                 | Not started                                  | Not started                                |

  @ZAP @a11y
  Scenario: Cider - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'No'
    When I click on "Tell us about your cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I select checkbox "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Cider between 1.3% and 3.4% ABV (tax type code 362),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367),Cider between 1.3% and 3.4% ABV (tax type code 372),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.4% ABV (tax type code 377)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page"
    When I enter "789.44" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page"
    And I enter "43.44" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page"
    And I enter "898.12" for "Standard cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page"
    And I enter "22.22" for "Standard cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page"
    And I enter "787.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page"
    And I enter "33.21" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page"
    And I enter "889.12" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page"
    And I enter "22.45" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page"
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page"
    When I enter "656.66" for "Non-draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page"
    And I enter "66.66" for "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page"
    And I enter "14" for "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page"
    And I enter "999.99" for "Non-draught cider between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page"
    And I enter "98.99" for "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page"
    And I enter "12.45" for "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page"
    And I enter "887.21" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page"
    And I enter "45.56" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page"
    And I enter "16" for "Draught cider between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page"
    And I enter "653.11" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Cider Page"
    And I enter "33.33" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Cider Page"
    And I enter "18" for "Draught cider between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Cider Page"
    And I click save and continue button on "Single Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I check the page source for the following key-value pairs:
      | key           | value         |
      | Total litres  | 789.44 litres |
      | Pure alcohol  | 43.44 litres  |
      | Total litres  | 898.12 litres |
      | Pure alcohol  | 22.22 litres  |
      | Total litres  | 889.12 litres |
      | Pure alcohol  | 22.45 litres  |
      | Total litres  | 787.77 litres |
      | Pure alcohol  | 33.21 litres  |
      | Total litres  | 656.66 litres |
      | Pure alcohol  | 66.66 litres  |
      | SPR duty rate | £14.00        |
      | Total litres  | 999.99 litres |
      | Pure alcohol  | 98.99 litres  |
      | SPR duty rate | £12.45        |
      | Total litres  | 887.21 litres |
      | Pure alcohol  | 45.56 litres  |
      | SPR duty rate | £16.00        |
      | Total litres  | 653.11 litres |
      | Pure alcohol  | 33.33 litres  |
      | SPR duty rate | £18.00        |
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£4,588.83"
    And I should see the following product details
      | Description                                                                                         | Litres of pure alcohol | Duty rate        | Duty due  | Action |
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   | 43.44 Lpa              | £9.27 per litre  | £402.68   | Change |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     | 22.22 Lpa              | £9.67 per litre  | £214.86   | Change |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       | 33.21 Lpa              | £8.42 per litre  | £279.62   | Change |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         | 22.45 Lpa              | £8.78 per litre  | £197.11   | Change |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               | 66.66 Lpa              | £14.00 per litre | £933.24   | Change |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 98.99 Lpa              | £12.45 per litre | £1,232.42 | Change |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   | 45.56 Lpa              | £16.00 per litre | £728.96   | Change |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.4% ABV (377 SPR)     | 33.33 Lpa              | £18.00 per litre | £599.94   | Change |
    When I click continue button on "Duty Due Cider Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started             | Completed                | Not started             | Not started                | Not started                                 | Not started                                  | Not started                                |

  @ZAP @a11y
  Scenario: Cider - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'Yes'
    When I click on "Tell us about your cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I select checkbox "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Cider between 1.3% and 3.4% ABV (tax type code 362),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367),Cider between 1.3% and 3.4% ABV (tax type code 372),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.4% ABV (tax type code 377)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page"
    When I enter "789.44" for "Standard cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page"
    And I enter "43.44" for "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page"
    And I enter "898.12" for "Standard cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page"
    And I enter "22.22" for "Standard cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page"
    And I enter "787.77" for "Draught cider between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Cider Page"
    And I enter "33.21" for "Draught cider between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page"
    And I enter "889.12" for "Draught cider between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Cider Page"
    And I enter "22.45" for "Draught cider between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Cider Page"
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
    When I click continue button on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple SPR List Question Cider Page"
    And I should see the following product details
      | Description                                                                                         | Total volume declared | Pure alcohol declared | SPR duty rate    | Action        |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 7,999.99l             | 77.99 Lpa             | £20.99 per litre | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Cider Page"
    And I click save and continue button on "Multiple SPR List Question Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total litres | 789.44 litres  |
      | Pure alcohol | 43.44 litres   |
      | Total litres | 898.12 litres  |
      | Pure alcohol | 22.22 litres   |
      | Total litres | 889.12 litres  |
      | Pure alcohol | 22.45 litres   |
      | Total litres | 787.77 litres  |
      | Pure alcohol | 33.21 litres   |
      | Total litres | 7999.99 litres |
      | Pure alcohol | 77.99 litres   |
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£2,731.28"
    And I should see the following product details
      | Description                                                                                         | Litres of pure alcohol | Duty rate        | Duty due  | Action |
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   | 43.44 Lpa              | £9.27 per litre  | £402.68   | Change |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     | 22.22 Lpa              | £9.67 per litre  | £214.86   | Change |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       | 33.21 Lpa              | £8.42 per litre  | £279.62   | Change |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         | 22.45 Lpa              | £8.78 per litre  | £197.11   | Change |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 77.99 Lpa              | £20.99 per litre | £1,637.01 | Change |
    When I click continue button on "Duty Due Cider Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started             | Completed                | Not started             | Not started                | Not started                                 | Not started                                  | Not started                                |

  @ZAP @a11y
  Scenario: Wine - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'No'
    When I click on "Tell us about your wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I select checkbox "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine exceeding 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363),Wine between 3.5% and 8.4% ABV (tax type code 368),Wine between 1.3% and 3.4% ABV (tax type code 373),Wine between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "35.55" for "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "88.88" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "22.22" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "990.01" for "Standard wine exceeding 22% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "82.22" for "Standard wine exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "895.22" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "22.33" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "569.33" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "24.55" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page"
    When I enter "888.88" for "Non-draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page"
    And I enter "99.45" for "Non-draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page"
    And I enter "15" for "Non-draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page"
    And I enter "776.45" for "Non-draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page"
    And I enter "78.9" for "Non-draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page"
    And I enter "18" for "Non-draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page"
    And I enter "776.89" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page"
    And I enter "99.99" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page"
    And I enter "15" for "Draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page"
    And I enter "889.65" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page"
    And I enter "66.54" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page"
    And I enter "20" for "Draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page"
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total litres  | 3698.52 litres |
      | Pure alcohol  | 88.88 litres   |
      | Total litres  | 8974.23 litres |
      | Pure alcohol  | 22.22 litres   |
      | Total litres  | 1234.55 litres |
      | Pure alcohol  | 35.55 litres   |
      | Total litres  | 990.01 litres  |
      | Pure alcohol  | 82.22 litres   |
      | Total litres  | 895.22 litres  |
      | Pure alcohol  | 22.33 litres   |
      | Total litres  | 569.33 litres  |
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
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£12,164.82"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol | Duty rate        | Duty due  | Action |
      | Non-draught wine between 1.3% and 3.4% ABV (313)     | 35.55 Lpa              | £9.27 per litre  | £329.54   | Change |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     | 88.88 Lpa              | £24.77 per litre | £2,201.55 | Change |
      | Non-draught wine between 8.5% and 22% ABV (333)      | 22.22 Lpa              | £28.50 per litre | £633.27   | Change |
      | Non-draught wine exceeding 22.1% ABV (343)           | 82.22 Lpa              | £31.64 per litre | £2,601.44 | Change |
      | Draught wine between 1.3% and 3.4% ABV (353)         | 22.33 Lpa              | £8.42 per litre  | £188.01   | Change |
      | Draught wine between 3.5% and 8.4% ABV (358)         | 24.55 Lpa              | £19.08 per litre | £468.41   | Change |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | 99.45 Lpa              | £15.00 per litre | £1,491.75 | Change |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 78.9 Lpa               | £18.00 per litre | £1,420.20 | Change |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     | 99.99 Lpa              | £15.00 per litre | £1,499.85 | Change |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     | 66.54 Lpa              | £20.00 per litre | £1,330.80 | Change |
    When I click continue button on "Duty Due Wine Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started             | Not started              | Completed               | Not started                | Not started                                 | Not started                                  | Not started                                |

  @ZAP @a11y
  Scenario: Wine - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'Yes'
    When I click on "Tell us about your wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I select checkbox "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine exceeding 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363),Wine between 3.5% and 8.4% ABV (tax type code 368),Wine between 1.3% and 3.4% ABV (tax type code 373),Wine between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "35.55" for "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "88.88" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "22.22" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "990.01" for "Standard wine exceeding 22% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "82.22" for "Standard wine exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "895.22" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "22.33" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "569.33" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "24.55" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
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
    When I click continue button on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple SPR List Question Wine Page"
    And I should see the following product details
      | Description                                          | Total volume declared | Pure alcohol declared | SPR duty rate    | Action        |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 678.99l               | 66.43 Lpa             | £15.65 per litre | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Wine Page"
    And I click save and continue button on "Multiple SPR List Question Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total litres | 3698.52 litres |
      | Pure alcohol | 88.88 litres   |
      | Total litres | 8974.23 litres |
      | Pure alcohol | 22.22 litres   |
      | Total litres | 1234.55 litres |
      | Pure alcohol | 35.55 litres   |
      | Total litres | 990.01 litres  |
      | Pure alcohol | 82.22 litres   |
      | Total litres | 895.22 litres  |
      | Pure alcohol | 22.33 litres   |
      | Total litres | 569.33 litres  |
      | Pure alcohol | 24.55 litres   |
      | Total litres | 678.99 litres  |
      | Pure alcohol | 66.43 litres   |
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£7,461.84"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol | Duty rate        | Duty due  | Action |
      | Non-draught wine between 1.3% and 3.4% ABV (313)     | 35.55 Lpa              | £9.27 per litre  | £329.54   | Change |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     | 88.88 Lpa              | £24.77 per litre | £2,201.55 | Change |
      | Non-draught wine between 8.5% and 22% ABV (333)      | 22.22 Lpa              | £28.50 per litre | £633.27   | Change |
      | Non-draught wine exceeding 22.1% ABV (343)           | 82.22 Lpa              | £31.64 per litre | £2,601.44 | Change |
      | Draught wine between 1.3% and 3.4% ABV (353)         | 22.33 Lpa              | £8.42 per litre  | £188.01   | Change |
      | Draught wine between 3.5% and 8.4% ABV (358)         | 24.55 Lpa              | £19.08 per litre | £468.41   | Change |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 66.43 Lpa              | £15.65 per litre | £1,039.62 | Change |
    When I click continue button on "Duty Due Wine Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started             | Not started              | Completed               | Not started                | Not started                                 | Not started                                  | Not started                                |

  @ZAP @a11y
  Scenario: Spirits - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'No'
    When I click on "Tell us about your spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    When I select checkbox "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits exceeding 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365),Spirits between 3.5% and 8.4% ABV (tax type code 370),Spirits between 1.3% and 3.4% ABV (tax type code 375),Spirits between 3.5% and 8.4% ABV (tax type code 380)" on "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page"
    When I enter "8888.66" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "88.8" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I enter "7777.77" for "Standard spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "77.77" for "Standard spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I enter "6666.66" for "Standard spirits between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "66.66" for "Standard spirits between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I enter "5555.55" for "Standard spirits exceeding 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "55.55" for "Standard spirits exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I enter "4444.44" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "44.44" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I enter "3333.33" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "33.33" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page"
    When I enter "888.88" for "Non-draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "99.45" for "Non-draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "15" for "Non-draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "776.45" for "Non-draught spirits between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "78.9" for "Non-draught spirits between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "18" for "Non-draught spirits between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "776.89" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "99.99" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "15" for "Draught spirits between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "889.65" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "66.54" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Spirits Page"
    And I enter "20" for "Draught spirits between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Spirits Page"
    And I click save and continue button on "Single Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total litres  | 8888.66 litres |
      | Pure alcohol  | 88.8 litres    |
      | Total litres  | 6666.66 litres |
      | Pure alcohol  | 66.66 litres   |
      | Total litres  | 5555.55 litres |
      | Pure alcohol  | 55.55 litres   |
      | Total litres  | 7777.77 litres |
      | Pure alcohol  | 77.77 litres   |
      | Total litres  | 4444.44 litres |
      | Pure alcohol  | 44.44 litres   |
      | Total litres  | 3333.33 litres |
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
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£13,159.65"
    And I should see the following product details
      | Description                                             | Litres of pure alcohol | Duty rate        | Duty due  | Action |
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     | 88.8 Lpa               | £9.27 per litre  | £823.17   | Change |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     | 77.77 Lpa              | £24.77 per litre | £1,926.36 | Change |
      | Non-draught spirits between 8.5% and 22% ABV (335)      | 66.66 Lpa              | £28.50 per litre | £1,899.81 | Change |
      | Non-draught spirits exceeding 22.1% ABV (345)           | 55.55 Lpa              | £31.64 per litre | £1,757.60 | Change |
      | Draught spirits between 1.3% and 3.4% ABV (355)         | 44.44 Lpa              | £8.42 per litre  | £374.18   | Change |
      | Draught spirits between 3.5% and 8.4% ABV (360)         | 33.33 Lpa              | £19.08 per litre | £635.93   | Change |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) | 99.45 Lpa              | £15.00 per litre | £1,491.75 | Change |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) | 78.9 Lpa               | £18.00 per litre | £1,420.20 | Change |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     | 99.99 Lpa              | £15.00 per litre | £1,499.85 | Change |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR)     | 66.54 Lpa              | £20.00 per litre | £1,330.80 | Change |
    When I click continue button on "Duty Due Spirits Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started             | Not started              | Not started             | Completed                  | Not started                                 | Not started                                  | Not started                                |

  @ZAP @a11y
  Scenario: Spirits - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'Yes'
    When I click on "Tell us about your spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    When I select checkbox "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits exceeding 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365),Spirits between 3.5% and 8.4% ABV (tax type code 370),Spirits between 1.3% and 3.4% ABV (tax type code 375),Spirits between 3.5% and 8.4% ABV (tax type code 380)" on "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    When I enter "8888.66" for "Standard spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "88.8" for "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I enter "7777.77" for "Standard spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "77.77" for "Standard spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I enter "6666.66" for "Standard spirits between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "66.66" for "Standard spirits between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I enter "5555.55" for "Standard spirits exceeding 22% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "55.55" for "Standard spirits exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I enter "4444.44" for "Draught spirits between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "44.44" for "Draught spirits between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
    And I enter "3333.33" for "Draught spirits between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Spirits Page"
    And I enter "33.33" for "Draught spirits between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Spirits Page"
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
    When I click continue button on "Check Your Answers SPR Spirits Page"
    Then I am presented with the "Multiple SPR List Question Spirits Page"
    And I should see the following product details
      | Description                                         | Total volume declared | Pure alcohol declared | SPR duty rate    | Action        |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR) | 789.99l               | 55.55 Lpa             | £20.00 per litre | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Spirits Page"
    And I click save and continue button on "Multiple SPR List Question Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total litres | 8888.66 litres |
      | Pure alcohol | 88.8 litres    |
      | Total litres | 6666.66 litres |
      | Pure alcohol | 66.66 litres   |
      | Total litres | 5555.55 litres |
      | Pure alcohol | 55.55 litres   |
      | Total litres | 7777.77 litres |
      | Pure alcohol | 77.77 litres   |
      | Total litres | 4444.44 litres |
      | Pure alcohol | 44.44 litres   |
      | Total litres | 3333.33 litres |
      | Pure alcohol | 33.33 litres   |
      | Total volume | 789.99 litres  |
      | Pure alcohol | 55.55 litres   |
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£8,528.05"
    And I should see the following product details
      | Description                                         | Litres of pure alcohol | Duty rate        | Duty due  | Action |
      | Non-draught spirits between 1.3% and 3.4% ABV (315) | 88.8 Lpa               | £9.27 per litre  | £823.17   | Change |
      | Non-draught spirits between 3.5% and 8.4% ABV (325) | 77.77 Lpa              | £24.77 per litre | £1,926.36 | Change |
      | Non-draught spirits between 8.5% and 22% ABV (335)  | 66.66 Lpa              | £28.50 per litre | £1,899.81 | Change |
      | Non-draught spirits exceeding 22.1% ABV (345)       | 55.55 Lpa              | £31.64 per litre | £1,757.60 | Change |
      | Draught spirits between 1.3% and 3.4% ABV (355)     | 44.44 Lpa              | £8.42 per litre  | £374.18   | Change |
      | Draught spirits between 3.5% and 8.4% ABV (360)     | 33.33 Lpa              | £19.08 per litre | £635.93   | Change |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR) | 55.55 Lpa              | £20.00 per litre | £1,111.00 | Change |
    When I click continue button on "Duty Due Spirits Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started             | Not started              | Not started             | Completed                  | Not started                                 | Not started                                  | Not started                                |

  @ZAP @a11y
  Scenario: Other Fermented Products - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'No'
    When I click on "Tell us about your other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I select checkbox "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products exceeding 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 369),Other fermented products between 1.3% and 3.4% ABV (tax type code 374),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.5% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page"
    When I enter "2233.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "33.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "3322.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "22.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "4433.44" for "Standard other fermented products between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "44.44" for "Standard other fermented products between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "5544.55" for "Standard other fermented products exceeding 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "55.55" for "Standard other fermented products exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "6666.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "66.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "7865.12" for "Draught other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "34.55" for "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I click save and continue button on "How Much You Need To Declare Other Fermented Product Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    Then I am presented with the "Single Small Producer Relief Rate Other Fermented Product Page"
    When I enter "777.77" for "Non-draught other fermented product between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "77.77" for "Non-draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "15" for "Non-draught other fermented product between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "888.88" for "Non-draught other fermented product between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "88.88" for "Non-draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "16" for "Non-draught other fermented product between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "667.88" for "Draught other fermented product between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "78.77" for "Draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "20" for "Draught other fermented product between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "678.44" for "Draught other fermented product between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "99.23" for "Draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I enter "19" for "Draught other fermented product between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page"
    And I click save and continue button on "Single Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total litres  | 3322.22 litres |
      | Pure alcohol  | 22.22 litres   |
      | Total litres  | 4433.44 litres |
      | Pure alcohol  | 44.44 litres   |
      | Total litres  | 2233.33 litres |
      | Pure alcohol  | 33.33 litres   |
      | Total litres  | 5544.55 litres |
      | Pure alcohol  | 55.55 litres   |
      | Total litres  | 7865.12 litres |
      | Pure alcohol  | 34.55 litres   |
      | Total litres  | 6666.66 litres |
      | Pure alcohol  | 66.66 litres   |
      | Total volume  | 777.77 litres  |
      | Pure alcohol  | 77.77 litres   |
      | SPR duty rate | £15.00         |
      | Total volume  | 888.88 litres  |
      | Pure alcohol  | 88.88 litres   |
      | SPR duty rate | £16.00         |
      | Total volume  | 667.88 litres  |
      | Pure alcohol  | 78.77 litres   |
      | SPR duty rate | £20.00         |
      | Total volume  | 678.44 litres  |
      | Pure alcohol  | 99.23 litres   |
      | SPR duty rate | £19.00         |
    When I click save and continue button on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "Duty Due Other Fermented Product Page" "£11,153.36"
    And I should see the following product details
      | Description                                                                                                            | Litres of pure alcohol | Duty rate        | Duty due  | Action |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (314)                                                   | 33.33 Lpa              | £9.27 per litre  | £308.96   | Change |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (324)     | 22.22 Lpa              | £24.77 per litre | £550.38   | Change |
      | Non-draught other fermented products between 8.5% and 22% ABV (334)                                                    | 44.44 Lpa              | £28.50 per litre | £1,266.54 | Change |
      | Non-draught other fermented products exceeding 22.1% ABV (344)                                                         | 55.55 Lpa              | £31.64 per litre | £1,757.60 | Change |
      | Draught other fermented products between 1.3% and 3.4% ABV (354)                                                       | 66.66 Lpa              | £8.42 per litre  | £561.27   | Change |
      | Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (359)         | 34.55 Lpa              | £19.08 per litre | £659.21   | Change |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (364 SPR)                                               | 77.77 Lpa              | £15.00 per litre | £1,166.55 | Change |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) | 88.88 Lpa              | £16.00 per litre | £1,422.08 | Change |
      | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR)                                                   | 78.77 Lpa              | £20.00 per litre | £1,575.40 | Change |
      | Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.5% and 8.4% ABV (379 SPR)     | 99.23 Lpa              | £19.00 per litre | £1,885.37 | Change |
    When I click continue button on "Duty Due Other Fermented Product Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started             | Not started              | Not started             | Not started                | Completed                                   | Not started                                  | Not started                                |

  @ZAP @a11y
  Scenario: Other Fermented Products - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'Yes'
    When I click on "Tell us about your other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I select checkbox "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products exceeding 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 369),Other fermented products between 1.3% and 3.4% ABV (tax type code 374),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.5% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page"
    When I enter "2233.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "33.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "3322.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "22.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "4433.44" for "Standard other fermented products between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "44.44" for "Standard other fermented products between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "5544.55" for "Standard other fermented products exceeding 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "55.55" for "Standard other fermented products exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "6666.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "66.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "7865.12" for "Draught other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page"
    And I enter "34.55" for "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page"
    And I click save and continue button on "How Much You Need To Declare Other Fermented Product Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Other Fermented Product Page"
    When I select radio button "Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR)" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "999.99" for "Total litres" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "99.99" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "20" for "Duty rate" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers SPR Other Fermented Product Page"
    And I should see following details at the "Check Your Answers SPR Other Fermented Product Page"
      | Description                                                                                                            | Total other fermented products | Total pure alcohol | Duty rate        |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) | 999.99 litres                  | 99.99 Lpa          | £20.00 per litre |
    When I click continue button on "Check Your Answers SPR Other Fermented Product Page"
    Then I am presented with the "Multiple SPR List Question Other Fermented Product Page"
    And I should see the following product details
      | Description                                                                                                            | Total volume declared | Pure alcohol declared | SPR duty rate    | Action        |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) | 999.99l               | 99.99 Lpa             | £20.00 per litre | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Other Fermented Product Page"
    And I click save and continue button on "Multiple SPR List Question Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total litres | 3322.22 litres |
      | Pure alcohol | 22.22 litres   |
      | Total litres | 4433.44 litres |
      | Pure alcohol | 44.44 litres   |
      | Total litres | 2233.33 litres |
      | Pure alcohol | 33.33 litres   |
      | Total litres | 5544.55 litres |
      | Pure alcohol | 55.55 litres   |
      | Total litres | 7865.12 litres |
      | Pure alcohol | 34.55 litres   |
      | Total litres | 6666.66 litres |
      | Pure alcohol | 66.66 litres   |
      | Total litres | 999.99 litres  |
      | Pure alcohol | 99.99 litres   |
    When I click save and continue button on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "Duty Due Other Fermented Product Page" "£7,103.76"
    And I should see the following product details
      | Description                                                                                                            | Litres of pure alcohol | Duty rate        | Duty due  | Action |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (314)                                                   | 33.33 Lpa              | £9.27 per litre  | £308.96   | Change |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (324)     | 22.22 Lpa              | £24.77 per litre | £550.38   | Change |
      | Non-draught other fermented products between 8.5% and 22% ABV (334)                                                    | 44.44 Lpa              | £28.50 per litre | £1,266.54 | Change |
      | Non-draught other fermented products exceeding 22.1% ABV (344)                                                         | 55.55 Lpa              | £31.64 per litre | £1,757.60 | Change |
      | Draught other fermented products between 1.3% and 3.4% ABV (354)                                                       | 66.66 Lpa              | £8.42 per litre  | £561.27   | Change |
      | Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (359)         | 34.55 Lpa              | £19.08 per litre | £659.21   | Change |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) | 99.99 Lpa              | £20.00 per litre | £1,999.80 | Change |
    When I click continue button on "Duty Due Other Fermented Product Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started             | Not started              | Not started             | Not started                | Completed                                   | Not started                                  | Not started                                |