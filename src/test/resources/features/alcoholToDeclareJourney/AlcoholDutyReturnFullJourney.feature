@Test @AllTests @AlcoholToDeclare
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

  @ZAP @a11y
  Scenario:1. Alcohol Duty Returns Journey - Happy Path - Positive Value Submission
#Beer - When Multiple SPR is set to 'No'
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer exceeding 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.5555" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
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
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 999.19 litres  |
      | Pure alcohol  | 99.13 litres   |
      | Total volume  | 945.55 litres  |
      | Pure alcohol  | 55.5555 litres |
      | Total volume  | 667.32 litres  |
      | Pure alcohol  | 66.34 litres   |
      | Total volume  | 898.34 litres  |
      | Pure alcohol  | 77.55 litres   |
      | Total volume  | 699.45 litres  |
      | Pure alcohol  | 66.89 litres   |
      | Total volume  | 887.54 litres  |
      | Pure alcohol  | 66.44 litres   |
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
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£14,749.75"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol (lpa) | Duty rate (per litre) | Duty due  | Action                                                      |
      | Non-draught beer between 1.3% and 3.4% ABV (311)     | 55.5555                      | £9.27                 | £514.99   | Change Non-draught beer between 1.3% and 3.4% ABV (311)     |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     | 77.55                        | £21.01                | £1,629.32 | Change Non-draught beer between 3.5% and 8.4% ABV (321)     |
      | Non-draught beer between 8.5% and 22% ABV (331)      | 66.34                        | £28.50                | £1,890.69 | Change Non-draught beer between 8.5% and 22% ABV (331)      |
      | Non-draught beer exceeding 22.1% ABV (341)           | 99.13                        | £31.64                | £3,136.47 | Change Non-draught beer exceeding 22.1% ABV (341)           |
      | Draught beer between 1.3% and 3.4% ABV (351)         | 66.44                        | £8.42                 | £559.42   | Change Draught beer between 1.3% and 3.4% ABV (351)         |
      | Draught beer between 3.5% and 8.4% ABV (356)         | 66.89                        | £19.08                | £1,276.26 | Change Draught beer between 3.5% and 8.4% ABV (356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 99.45                        | £15.00                | £1,491.75 | Change Non-draught beer between 1.3% and 3.4% ABV (361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) | 78.9                         | £18.00                | £1,420.20 | Change Non-draught beer between 3.5% and 8.4% ABV (366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     | 99.99                        | £15.00                | £1,499.85 | Change Draught beer between 1.3% and 3.4% ABV (371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (376 SPR)     | 66.54                        | £20.00                | £1,330.80 | Change Draught beer between 3.5% and 8.4% ABV (376 SPR)     |
    When I click continue button on "Duty Due Beer Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Not started              | Not started             | Not started                | Not started                                 | Not started                             | Not started                                  | Not started                                |
#Cider - When Multiple SPR is set to 'No'
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
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£4,588.83"
    And I should see the following product details
      | Description                                                                                         | Litres of pure alcohol (lpa) | Duty rate (per litre) | Duty due  | Action                                                                                                     |
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   | 43.44                        | £9.27                 | £402.68   | Change Non-draught cider between 1.3% and 3.4% ABV (312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     | 22.22                        | £9.67                 | £214.86   | Change Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       | 33.21                        | £8.42                 | £279.62   | Change Draught cider between 1.3% and 3.4% ABV (352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         | 22.45                        | £8.78                 | £197.11   | Change Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               | 66.66                        | £14.00                | £933.24   | Change Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 98.99                        | £12.45                | £1,232.42 | Change Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   | 45.56                        | £16.00                | £728.96   | Change Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR)     | 33.33                        | £18.00                | £599.94   | Change Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR)     |
    When I click continue button on "Duty Due Cider Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Not started             | Not started                | Not started                                 | Not started                             | Not started                                  | Not started                                |
#Wine - When Multiple SPR is set to 'No'
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
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£12,164.82"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol (lpa) | Duty rate (per litre) | Duty due  | Action                                                      |
      | Non-draught wine between 1.3% and 3.4% ABV (313)     | 35.55                        | £9.27                 | £329.54   | Change Non-draught wine between 1.3% and 3.4% ABV (313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     | 88.88                        | £24.77                | £2,201.55 | Change Non-draught wine between 3.5% and 8.4% ABV (323)     |
      | Non-draught wine between 8.5% and 22% ABV (333)      | 22.22                        | £28.50                | £633.27   | Change Non-draught wine between 8.5% and 22% ABV (333)      |
      | Non-draught wine exceeding 22.1% ABV (343)           | 82.22                        | £31.64                | £2,601.44 | Change Non-draught wine exceeding 22.1% ABV (343)           |
      | Draught wine between 1.3% and 3.4% ABV (353)         | 22.33                        | £8.42                 | £188.01   | Change Draught wine between 1.3% and 3.4% ABV (353)         |
      | Draught wine between 3.5% and 8.4% ABV (358)         | 24.55                        | £19.08                | £468.41   | Change Draught wine between 3.5% and 8.4% ABV (358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | 99.45                        | £15.00                | £1,491.75 | Change Non-draught wine between 1.3% and 3.4% ABV (363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 78.9                         | £18.00                | £1,420.20 | Change Non-draught wine between 3.5% and 8.4% ABV (368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     | 99.99                        | £15.00                | £1,499.85 | Change Draught wine between 1.3% and 3.4% ABV (373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     | 66.54                        | £20.00                | £1,330.80 | Change Draught wine between 3.5% and 8.4% ABV (378 SPR)     |
    When I click continue button on "Duty Due Wine Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Not started                | Not started                                 | Not started                             | Not started                                  | Not started                                |
#Spirits - When Multiple SPR is set to 'No'
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
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£13,159.65"
    And I should see the following product details
      | Description                                             | Litres of pure alcohol (lpa) | Duty rate (per litre) | Duty due  | Action                                                         |
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     | 88.8                         | £9.27                 | £823.17   | Change Non-draught spirits between 1.3% and 3.4% ABV (315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     | 77.77                        | £24.77                | £1,926.36 | Change Non-draught spirits between 3.5% and 8.4% ABV (325)     |
      | Non-draught spirits between 8.5% and 22% ABV (335)      | 66.66                        | £28.50                | £1,899.81 | Change Non-draught spirits between 8.5% and 22% ABV (335)      |
      | Non-draught spirits exceeding 22.1% ABV (345)           | 55.55                        | £31.64                | £1,757.60 | Change Non-draught spirits exceeding 22.1% ABV (345)           |
      | Draught spirits between 1.3% and 3.4% ABV (355)         | 44.44                        | £8.42                 | £374.18   | Change Draught spirits between 1.3% and 3.4% ABV (355)         |
      | Draught spirits between 3.5% and 8.4% ABV (360)         | 33.33                        | £19.08                | £635.93   | Change Draught spirits between 3.5% and 8.4% ABV (360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) | 99.45                        | £15.00                | £1,491.75 | Change Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) | 78.9                         | £18.00                | £1,420.20 | Change Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     | 99.99                        | £15.00                | £1,499.85 | Change Draught spirits between 1.3% and 3.4% ABV (375 SPR)     |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR)     | 66.54                        | £20.00                | £1,330.80 | Change Draught spirits between 3.5% and 8.4% ABV (380 SPR)     |
    When I click continue button on "Duty Due Spirits Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Not started                                 | Not started                             | Not started                                  | Not started                                |
#Other Fermented Products - When Multiple SPR is set to 'No'
    When I click on "Tell us about your other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I "select" checkbox "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products exceeding 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 369),Other fermented products between 1.3% and 3.4% ABV (tax type code 374),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page"
    When I enter "2233.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "33.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "3322.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "second" input box
    And I enter "22.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "second" input box
    And I enter "4433.44" for "Standard other fermented products between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "third" input box
    And I enter "44.44" for "Standard other fermented products between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "third" input box
    And I enter "5544.55" for "Standard other fermented products exceeding 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "fourth" input box
    And I enter "55.55" for "Standard other fermented products exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "fourth" input box
    And I enter "6666.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "fifth" input box
    And I enter "66.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "fifth" input box
    And I enter "7865.12" for "Draught other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I enter "34.55" for "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Other Fermented Product Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    Then I am presented with the "Single Small Producer Relief Rate Other Fermented Product Page"
    When I enter "777.77" for "Non-draught other fermented product between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "77.77" for "Non-draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "15" for "Non-draught other fermented product between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "first" input box
    And I enter "888.88" for "Non-draught other fermented product between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "second" input box
    And I enter "88.88" for "Non-draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "second" input box
    And I enter "16" for "Non-draught other fermented product between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "second" input box
    And I enter "667.88" for "Draught other fermented product between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "third" input box
    And I enter "78.77" for "Draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "third" input box
    And I enter "20" for "Draught other fermented product between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "third" input box
    And I enter "678.44" for "Draught other fermented product between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "fourth" input box
    And I enter "99.23" for "Draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Other Fermented Product Page" at "fourth" input box
    And I enter "19" for "Draught other fermented product between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Other Fermented Product Page" at "fourth" input box
    And I click save and continue button on "Single Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I should see the following text on the page
      | Non-draught other fermented products between 1.3% and 3.4% ABV (314)                                                   |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (324)     |
      | Non-draught other fermented products between 8.5% and 22% ABV (334)                                                    |
      | Non-draught other fermented products exceeding 22.1% ABV (344)                                                         |
      | Draught other fermented products between 1.3% and 3.4% ABV (354)                                                       |
      | Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (359)         |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (364 SPR)                                               |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) |
      | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR)                                                   |
      | Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (379 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 3322.22 litres |
      | Pure alcohol  | 22.22 litres   |
      | Total volume  | 4433.44 litres |
      | Pure alcohol  | 44.44 litres   |
      | Total volume  | 2233.33 litres |
      | Pure alcohol  | 33.33 litres   |
      | Total volume  | 5544.55 litres |
      | Pure alcohol  | 55.55 litres   |
      | Total volume  | 7865.12 litres |
      | Pure alcohol  | 34.55 litres   |
      | Total volume  | 6666.66 litres |
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
      | Description                                                                                                            | Litres of pure alcohol (lpa) | Duty rate (per litre) | Duty due  | Action                                                                                                                        |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (314)                                                   | 33.33                        | £9.27                 | £308.96   | Change Non-draught other fermented products between 1.3% and 3.4% ABV (314)                                                   |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (324)     | 22.22                        | £24.77                | £550.38   | Change Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (324)     |
      | Non-draught other fermented products between 8.5% and 22% ABV (334)                                                    | 44.44                        | £28.50                | £1,266.54 | Change Non-draught other fermented products between 8.5% and 22% ABV (334)                                                    |
      | Non-draught other fermented products exceeding 22.1% ABV (344)                                                         | 55.55                        | £31.64                | £1,757.60 | Change Non-draught other fermented products exceeding 22.1% ABV (344)                                                         |
      | Draught other fermented products between 1.3% and 3.4% ABV (354)                                                       | 66.66                        | £8.42                 | £561.27   | Change Draught other fermented products between 1.3% and 3.4% ABV (354)                                                       |
      | Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (359)         | 34.55                        | £19.08                | £659.21   | Change Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (359)         |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (364 SPR)                                               | 77.77                        | £15.00                | £1,166.55 | Change Non-draught other fermented products between 1.3% and 3.4% ABV (364 SPR)                                               |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) | 88.88                        | £16.00                | £1,422.08 | Change Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) |
      | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR)                                                   | 78.77                        | £20.00                | £1,575.40 | Change Draught other fermented products between 1.3% and 3.4% ABV (374 SPR)                                                   |
      | Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (379 SPR)     | 99.23                        | £19.00                | £1,885.37 | Change Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (379 SPR)     |
    When I click continue button on "Duty Due Other Fermented Product Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Completed                                   | Not started                             | Not started                                  | Not started                                |
#Adjustments Journey - Beer - Under-declaration - Without SPR
    When I click on "Do you need to declare any adjustments?" hyperlink on "Task List Page"
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
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.5555" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,322.64"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment     | Original return period | Tax type                                         | Volume                                                       | Duty value |
      | Under-declared | September 2023         | Non-draught beer between 1.3% and 3.4% ABV (311) | 3000.75 litres of beer,250.5555 litres of pure alcohol (Lpa) | £2,322.64  |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311) | £2,322.64  | Change Remove |
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
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,322.59"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                          | Volume                                                      | Duty value |
      | Over-declared | October 2023           | Non-draught cider between 1.3% and 3.4% ABV (312) | 3000.75 litres of cider,250.55 litres of pure alcohol (Lpa) | −£2,322.59 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311)  | £2,322.64  | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (312) | −£2,322.59 | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Wine - Repackaged Draught Products - With SPR
    When I select radio button "Repackaged draught products" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Repackaged draught products"
    When I enter month "11" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "373" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
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
      | Adjustment | Original return period | Original tax type                                | New tax type                                         | SPR duty rate | Volume                                                     | Duty value |
      | Repackaged | November 2023          | Draught wine between 1.3% and 3.4% ABV (373 SPR) | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | £11.50        | 3000.75 litres of wine,250.55 litres of pure alcohol (Lpa) | £425.93    |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311)  | £2,322.64  | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (312) | −£2,322.59 | Change Remove |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (373 SPR)  | £425.93    | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Spirits - Spoilt - Without SPR
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Spoilt Alcohol Page" "Spoilt"
    When I enter month "10" and year "2023" on "Adjustment Return Date Spoilt Alcohol Page"
    And I click save and continue button on "Adjustment Return Date Spoilt Alcohol Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "315" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,322.59"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Tax type                                            | Volume                                                        | Duty value |
      | Spoilt     | October 2023           | Non-draught spirits between 1.3% and 3.4% ABV (315) | 3000.75 litres of spirits,250.55 litres of pure alcohol (Lpa) | −£2,322.59 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                         | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311)    | £2,322.64  | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (312)   | −£2,322.59 | Change Remove |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (373 SPR)    | £425.93    | Change Remove |
      | Spoilt          | Non-draught spirits between 1.3% and 3.4% ABV (315) | −£2,322.59 | Change Remove |
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
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,322.59"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Tax type                                                             | Volume                                                                         | Duty value |
      | Drawback   | October 2023           | Non-draught other fermented products between 1.3% and 3.4% ABV (314) | 3000.75 litres of other fermented products,250.55 litres of pure alcohol (Lpa) | −£2,322.59 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311)                     | £2,322.64  | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (312)                    | −£2,322.59 | Change Remove |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (373 SPR)                     | £425.93    | Change Remove |
      | Spoilt          | Non-draught spirits between 1.3% and 3.4% ABV (315)                  | −£2,322.59 | Change Remove |
      | Drawback        | Non-draught other fermented products between 1.3% and 3.4% ABV (314) | −£2,322.59 | Change Remove |
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    When I click on "Reason for under-declaration" hyperlink on "Task List Page"
    Then I am presented with the "Under Declaration Reason Page"
    When I enter "Test Under Declaration Reason" on "Under Declaration Reason Page"
    And I click save and continue button on "Under Declaration Reason Page"
    Then I am presented with the "Task List Page"
    When I click on "Reason for over-declaration" hyperlink on "Task List Page"
    Then I am presented with the "Over Declaration Reason Page"
    When I enter "Test over Declaration Reason" on "Over Declaration Reason Page"
    And I click save and continue button on "Over Declaration Reason Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for under-declaration | Reason for over-declaration | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Completed                                   | Completed                                        | Completed                               | Completed                    | Completed                   | Not started                                  | Not started                                |
# Duty suspended deliveries Journey
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Beer Page"
    When I enter "2000.75" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "150.55" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Cider Page"
    When I enter "9999.99" for "Total Cider" on "Duty Suspended Cider Page"
    And I enter "99.19" for "Pure Alcohol In Cider" on "Duty Suspended Cider Page"
    And I click save and continue button on "Duty Suspended Cider Page"
    Then I am presented with the "Duty Suspended Wine Page"
    When I enter "7777.77" for "Total Wine" on "Duty Suspended Wine Page"
    And I enter "77.77" for "Pure Alcohol In Wine" on "Duty Suspended Wine Page"
    And I click save and continue button on "Duty Suspended Wine Page"
    Then I am presented with the "Duty Suspended Spirits Page"
    When I enter "2100.75" for "Total Spirits" on "Duty Suspended Spirits Page"
    And I enter "160.55" for "Pure Alcohol In Spirits" on "Duty Suspended Spirits Page"
    And I click save and continue button on "Duty Suspended Spirits Page"
    Then I am presented with the "Duty Suspended Other Fermented Products Page"
    When I enter "8888.88" for "Total Other Fermented Products" on "Duty Suspended Other Fermented Products Page"
    And I enter "88.88" for "Pure Alcohol In Other Fermented Products" on "Duty Suspended Other Fermented Products Page"
    And I click save and continue button on "Duty Suspended Other Fermented Products Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    And I should see the following details
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in your duty suspended beer | Total net quantity of duty suspended cider | Total net quantity of pure alcohol in your duty suspended cider | Total net quantity of duty suspended wine | Total net quantity of pure alcohol in your duty suspended wine | Total net quantity of duty suspended spirits | Total net quantity of pure alcohol in your duty suspended spirits | Total net quantity of duty suspended other fermented products | Total net quantity of pure alcohol in your duty suspended other fermented products |
      | 2000.75 litres                            | 150.55 litres                                                  | 9999.99 litres                             | 99.19 litres                                                    | 7777.77 litres                            | 77.77 litres                                                   | 2100.75 litres                               | 160.55 litres                                                     | 8888.88 litres                                                | 88.88 litres                                                                       |
    When I click continue button on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for under-declaration | Reason for over-declaration | You’ve told us you need to declare duty suspended deliveries | Change the deliveries you’ve told us about | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Completed                                   | Completed                                        | Completed                               | Completed                    | Completed                   | Completed                                                    | Completed                                  | Not started                                |
#Your spirits and ingredients
    When I click on "Tell us about your spirits and ingredients" hyperlink on "Task List Page"
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
    Then I am presented with the "Which Of These Spirits Have You Made Page"
    When I "select" checkbox "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other" on "Which Of These Spirits Have You Made Page"
    And I click save and continue button on "Which Of These Spirits Have You Made Page"
    Then I am presented with the "Declare Other Spirits Produced Page"
    When I enter "Test Spirits" on "Declare Other Spirits Produced Page"
    And I click save and continue button on "Declare Other Spirits Produced Page"
    Then I am presented with the "How Much Grain Have You Used Page"
    When I enter "222.22" for "Malted barley" on "How Much Grain Have You Used Page"
    And I enter "333.33" for "Wheat" on "How Much Grain Have You Used Page"
    And I enter "444.44" for "Maize" on "How Much Grain Have You Used Page"
    And I enter "555.55" for "Rye" on "How Much Grain Have You Used Page"
    And I enter "666.66" for "Unmalted grain" on "How Much Grain Have You Used Page"
    And I select radio button "Yes" on "How Much Grain Have You Used Page"
    And I click save and continue button on "How Much Grain Have You Used Page"
    Then I am presented with the "Declare Other Malted Grains Page"
    When I enter "Test Grain" for "Other Malted Grains Types" on "Declare Other Malted Grains Page"
    And I enter "156.54" for "Other Malted Grains Quantity" on "Declare Other Malted Grains Page"
    And I click save and continue button on "Declare Other Malted Grains Page"
    Then I am presented with the "How Much Alcohol Have You Used Page"
    When I enter "555.55" for "Beer" on "How Much Alcohol Have You Used Page"
    And I enter "666.66" for "Wine" on "How Much Alcohol Have You Used Page"
    And I enter "777.77" for "Made-wine" on "How Much Alcohol Have You Used Page"
    And I enter "888.88" for "Cider or perry" on "How Much Alcohol Have You Used Page"
    And I click save and continue button on "How Much Alcohol Have You Used Page"
    Then I am presented with the "Declare Ethylene Gas Or Molasses Page"
    When I enter "465.55" for "Ethylene Gas" on "Declare Ethylene Gas Or Molasses Page"
    And I enter "745.66" for "Molasses" on "Declare Ethylene Gas Or Molasses Page"
    And I select radio button "Yes" on "Declare Ethylene Gas Or Molasses Page"
    And I click save and continue button on "Declare Ethylene Gas Or Molasses Page"
    Then I am presented with the "Declare Other Ingredients Page"
    When I enter "Test Other Ingredients" for "Other Ingredients Used Types" on "Declare Other Ingredients Page"
    And I enter "2045.55" for "Other Ingredients Used Quantity" on "Declare Other Ingredients Page"
    And I click save and continue button on "Declare Other Ingredients Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    And I should see following details at the "Quarterly Spirits Check Your Answers Page"
      | Total of all spirits | Total of Scotch whisky | Total of Irish whiskey | Type of spirits                                                                | Other spirits produced | Malted barley | Wheat         | Maize         | Rye           | Unmalted Grain | Test Grain    | Beer          | Wine          | Made-wine     | Cider/perry   | Ethylene gas  | Molasses      | Test Other Ingredients |
      | 99 litres            | 10.55 litres           | 20.67 litres           | Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer | Test Spirits           | 222.22 tonnes | 333.33 tonnes | 444.44 tonnes | 555.55 tonnes | 666.66 tonnes  | 156.54 tonnes | 555.55 litres | 666.66 litres | 777.77 litres | 888.88 litres | 465.55 tonnes | 745.66 tonnes | 2045.55 tonnes         |
    When I click save and continue button on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for under-declaration | Reason for over-declaration | You’ve told us you need to declare duty suspended deliveries | Change the deliveries you’ve told us about | You’ve told us you need to declare spirits and ingredients | Change the spirits and ingredients you’ve told us about | Check how much duty is payable and send return |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Completed                                   | Completed                                        | Completed                               | Completed                    | Completed                   | Completed                                                    | Completed                                  | Completed                                                  | Completed                                               | Not started                                    |
    When I click on "Check how much duty is payable and send return" hyperlink on "Task List Page"
    Then I am presented with the "Return Summary Page" "£51,597.21"
    And I should see the following details at the returns summary page
      | Declared spirits duty                  | £13,159.65 | Change |
      | Declared wine duty                     | £12,164.82 | Change |
      | Declared cider duty                    | £4,588.83  | Change |
      | Declared other fermented products duty | £11,153.36 | Change |
      | Declared beer duty                     | £14,749.75 | Change |
      | Adjustment duty value                  | −£4,219.20 | Change |
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"
    And the page source contains "You need to pay £51,597.21"

  @ZAP @a11y
  Scenario:2. Alcohol Duty Returns Journey - Happy Path - Negative Value Submission
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
#Beer - When Multiple SPR is set to 'Yes'
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
    And I enter "89.9999" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "19" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                          | Total beer      | Total pure alcohol | Duty rate        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99 litres | 89.9999 Lpa        | £19.00 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared (litres) | Pure alcohol declared (lpa) | SPR duty rate (per litre) | Action        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99                       | 89.9999                     | £19.00                    | Change Remove |
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
      | Total volume | 999.19 litres  |
      | Pure alcohol | 99.13 litres   |
      | Total volume | 945.55 litres  |
      | Pure alcohol | 55.55 litres   |
      | Total volume | 667.32 litres  |
      | Pure alcohol | 66.34 litres   |
      | Total volume | 898.34 litres  |
      | Pure alcohol | 77.55 litres   |
      | Total volume | 699.45 litres  |
      | Pure alcohol | 66.89 litres   |
      | Total volume | 887.54 litres  |
      | Pure alcohol | 66.44 litres   |
      | Total volume | 9999.99 litres |
      | Pure alcohol | 89.9999 litres |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£10,717.09"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol (lpa) | Duty rate (per litre) | Duty due  | Action                                                      |
      | Non-draught beer between 1.3% and 3.4% ABV (311)     | 55.55                        | £9.27                 | £514.94   | Change Non-draught beer between 1.3% and 3.4% ABV (311)     |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     | 77.55                        | £21.01                | £1,629.32 | Change Non-draught beer between 3.5% and 8.4% ABV (321)     |
      | Non-draught beer between 8.5% and 22% ABV (331)      | 66.34                        | £28.50                | £1,890.69 | Change Non-draught beer between 8.5% and 22% ABV (331)      |
      | Non-draught beer exceeding 22.1% ABV (341)           | 99.13                        | £31.64                | £3,136.47 | Change Non-draught beer exceeding 22.1% ABV (341)           |
      | Draught beer between 1.3% and 3.4% ABV (351)         | 66.44                        | £8.42                 | £559.42   | Change Draught beer between 1.3% and 3.4% ABV (351)         |
      | Draught beer between 3.5% and 8.4% ABV (356)         | 66.89                        | £19.08                | £1,276.26 | Change Draught beer between 3.5% and 8.4% ABV (356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 89.9999                      | £19.00                | £1,709.99 | Change Non-draught beer between 1.3% and 3.4% ABV (361 SPR) |
    When I click continue button on "Duty Due Beer Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Not started              | Not started             | Not started                | Not started                                 | Not started                             | Not started                                  | Not started                                |
#Cider - When Multiple SPR is set to 'Yes'
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
    When I click continue button on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple SPR List Question Cider Page"
    And I should see the following product details
      | Description                                                                                         | Total volume declared (litres) | Pure alcohol declared (lpa) | SPR duty rate (per litre) | Action        |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 7,999.99                       | 77.99                       | £20.99                    | Change Remove |
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
      | Total volume | 889.12 litres  |
      | Pure alcohol | 22.45 litres   |
      | Total volume | 787.77 litres  |
      | Pure alcohol | 33.21 litres   |
      | Total volume | 7999.99 litres |
      | Pure alcohol | 77.99 litres   |
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£2,731.28"
    And I should see the following product details
      | Description                                                                                         | Litres of pure alcohol (lpa) | Duty rate (per litre) | Duty due  | Action                                                                                                     |
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   | 43.44                        | £9.27                 | £402.68   | Change Non-draught cider between 1.3% and 3.4% ABV (312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     | 22.22                        | £9.67                 | £214.86   | Change Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       | 33.21                        | £8.42                 | £279.62   | Change Draught cider between 1.3% and 3.4% ABV (352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         | 22.45                        | £8.78                 | £197.11   | Change Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 77.99                        | £20.99                | £1,637.01 | Change Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) |
    When I click continue button on "Duty Due Cider Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Not started             | Not started                | Not started                                 | Not started                             | Not started                                  | Not started                                |
#Wine - When Multiple SPR is set to 'Yes'
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
    When I click continue button on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple SPR List Question Wine Page"
    And I should see the following product details
      | Description                                          | Total volume declared (litres) | Pure alcohol declared (lpa) | SPR duty rate (per litre) | Action        |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 678.99                         | 66.43                       | £15.65                    | Change Remove |
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
      | Total volume | 3698.52 litres |
      | Pure alcohol | 88.88 litres   |
      | Total volume | 8974.23 litres |
      | Pure alcohol | 22.22 litres   |
      | Total volume | 1234.55 litres |
      | Pure alcohol | 35.55 litres   |
      | Total volume | 990.01 litres  |
      | Pure alcohol | 82.22 litres   |
      | Total volume | 895.22 litres  |
      | Pure alcohol | 22.33 litres   |
      | Total volume | 569.33 litres  |
      | Pure alcohol | 24.55 litres   |
      | Total volume | 678.99 litres  |
      | Pure alcohol | 66.43 litres   |
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£7,461.84"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol (lpa) | Duty rate (per litre) | Duty due  | Action                                                      |
      | Non-draught wine between 1.3% and 3.4% ABV (313)     | 35.55                        | £9.27                 | £329.54   | Change Non-draught wine between 1.3% and 3.4% ABV (313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     | 88.88                        | £24.77                | £2,201.55 | Change Non-draught wine between 3.5% and 8.4% ABV (323)     |
      | Non-draught wine between 8.5% and 22% ABV (333)      | 22.22                        | £28.50                | £633.27   | Change Non-draught wine between 8.5% and 22% ABV (333)      |
      | Non-draught wine exceeding 22.1% ABV (343)           | 82.22                        | £31.64                | £2,601.44 | Change Non-draught wine exceeding 22.1% ABV (343)           |
      | Draught wine between 1.3% and 3.4% ABV (353)         | 22.33                        | £8.42                 | £188.01   | Change Draught wine between 1.3% and 3.4% ABV (353)         |
      | Draught wine between 3.5% and 8.4% ABV (358)         | 24.55                        | £19.08                | £468.41   | Change Draught wine between 3.5% and 8.4% ABV (358)         |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 66.43                        | £15.65                | £1,039.62 | Change Non-draught wine between 3.5% and 8.4% ABV (368 SPR) |
    When I click continue button on "Duty Due Wine Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Not started                | Not started                                 | Not started                             | Not started                                  | Not started                                |
#Spirits - When Multiple SPR is set to 'Yes'
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
    When I click continue button on "Check Your Answers SPR Spirits Page"
    Then I am presented with the "Multiple SPR List Question Spirits Page"
    And I should see the following product details
      | Description                                         | Total volume declared (litres) | Pure alcohol declared (lpa) | SPR duty rate (per litre) | Action        |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR) | 789.99                         | 55.55                       | £20.00                    | Change Remove |
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
      | Pure alcohol | 55.55 litres   |
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£8,528.05"
    And I should see the following product details
      | Description                                         | Litres of pure alcohol (lpa) | Duty rate (per litre) | Duty due  | Action                                                     |
      | Non-draught spirits between 1.3% and 3.4% ABV (315) | 88.8                         | £9.27                 | £823.17   | Change Non-draught spirits between 1.3% and 3.4% ABV (315) |
      | Non-draught spirits between 3.5% and 8.4% ABV (325) | 77.77                        | £24.77                | £1,926.36 | Change Non-draught spirits between 3.5% and 8.4% ABV (325) |
      | Non-draught spirits between 8.5% and 22% ABV (335)  | 66.66                        | £28.50                | £1,899.81 | Change Non-draught spirits between 8.5% and 22% ABV (335)  |
      | Non-draught spirits exceeding 22.1% ABV (345)       | 55.55                        | £31.64                | £1,757.60 | Change Non-draught spirits exceeding 22.1% ABV (345)       |
      | Draught spirits between 1.3% and 3.4% ABV (355)     | 44.44                        | £8.42                 | £374.18   | Change Draught spirits between 1.3% and 3.4% ABV (355)     |
      | Draught spirits between 3.5% and 8.4% ABV (360)     | 33.33                        | £19.08                | £635.93   | Change Draught spirits between 3.5% and 8.4% ABV (360)     |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR) | 55.55                        | £20.00                | £1,111.00 | Change Draught spirits between 3.5% and 8.4% ABV (380 SPR) |
    When I click continue button on "Duty Due Spirits Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Not started                                 | Not started                             | Not started                                  | Not started                                |
#Other Fermented Products - When Multiple SPR is set to 'Yes'
    When I click on "Tell us about your other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I "select" checkbox "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products exceeding 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 369),Other fermented products between 1.3% and 3.4% ABV (tax type code 374),Other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page"
    When I enter "2233.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "33.33" for "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "3322.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "second" input box
    And I enter "22.22" for "Standard other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "second" input box
    And I enter "4433.44" for "Standard other fermented products between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "third" input box
    And I enter "44.44" for "Standard other fermented products between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "third" input box
    And I enter "5544.55" for "Standard other fermented products exceeding 22% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "fourth" input box
    And I enter "55.55" for "Standard other fermented products exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "fourth" input box
    And I enter "6666.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "fifth" input box
    And I enter "66.66" for "Draught other fermented products between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "fifth" input box
    And I enter "7865.12" for "Draught other fermented products between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
    And I enter "34.55" for "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "sixth" input box
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
      | Description                                                                                                            | Total volume declared (litres) | Pure alcohol declared (lpa) | SPR duty rate (per litre) | Action        |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) | 999.99                         | 99.99                       | £20.00                    | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Other Fermented Product Page"
    And I click save and continue button on "Multiple SPR List Question Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I should see the following text on the page
      | Non-draught other fermented products between 1.3% and 3.4% ABV (314)                                                   |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (324)     |
      | Non-draught other fermented products between 8.5% and 22% ABV (334)                                                    |
      | Non-draught other fermented products exceeding 22.1% ABV (344)                                                         |
      | Draught other fermented products between 1.3% and 3.4% ABV (354)                                                       |
      | Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (359)         |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (364 SPR)                                               |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) |
      | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR)                                                   |
      | Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (379 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 3322.22 litres |
      | Pure alcohol | 22.22 litres   |
      | Total volume | 4433.44 litres |
      | Pure alcohol | 44.44 litres   |
      | Total volume | 2233.33 litres |
      | Pure alcohol | 33.33 litres   |
      | Total volume | 5544.55 litres |
      | Pure alcohol | 55.55 litres   |
      | Total volume | 7865.12 litres |
      | Pure alcohol | 34.55 litres   |
      | Total volume | 6666.66 litres |
      | Pure alcohol | 66.66 litres   |
      | Total volume | 999.99 litres  |
      | Pure alcohol | 99.99 litres   |
    When I click save and continue button on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "Duty Due Other Fermented Product Page" "£7,103.76"
    And I should see the following product details
      | Description                                                                                                            | Litres of pure alcohol (lpa) | Duty rate (per litre) | Duty due  | Action                                                                                                                        |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (314)                                                   | 33.33                        | £9.27                 | £308.96   | Change Non-draught other fermented products between 1.3% and 3.4% ABV (314)                                                   |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (324)     | 22.22                        | £24.77                | £550.38   | Change Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (324)     |
      | Non-draught other fermented products between 8.5% and 22% ABV (334)                                                    | 44.44                        | £28.50                | £1,266.54 | Change Non-draught other fermented products between 8.5% and 22% ABV (334)                                                    |
      | Non-draught other fermented products exceeding 22.1% ABV (344)                                                         | 55.55                        | £31.64                | £1,757.60 | Change Non-draught other fermented products exceeding 22.1% ABV (344)                                                         |
      | Draught other fermented products between 1.3% and 3.4% ABV (354)                                                       | 66.66                        | £8.42                 | £561.27   | Change Draught other fermented products between 1.3% and 3.4% ABV (354)                                                       |
      | Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (359)         | 34.55                        | £19.08                | £659.21   | Change Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (359)         |
      | Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) | 99.99                        | £20.00                | £1,999.80 | Change Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR) |
    When I click continue button on "Duty Due Other Fermented Product Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Completed                                   | Not started                             | Not started                                  | Not started                                |
#Adjustments Journey Beer - Under-declaration - With SPR
    When I click on "Do you need to declare any adjustments?" hyperlink on "Task List Page"
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
    When I enter "371" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment     | Original return period | Tax type                                         | SPR duty rate | Volume                                                     | Duty value |
      | Under-declared | September 2023         | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £9.80         | 3000.75 litres of beer,250.55 litres of pure alcohol (Lpa) | £2,455.39  |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Under-declared  | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £2,455.39  | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Cider - Over-declaration - With SPR
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Over-declaration"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "372" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "9999.99" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "7777.77" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "898.89" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "−£6,991,359.67"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                          | SPR duty rate | Volume                                                       | Duty value     |
      | Over-declared | October 2023           | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £898.89       | 9999.99 litres of cider,7777.77 litres of pure alcohol (Lpa) | −£6,991,359.67 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value     | Action        |
      | Under-declared  | Draught beer between 1.3% and 3.4% ABV (371 SPR)  | £2,455.39      | Change Remove |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR) | −£6,991,359.67 | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Spirits - Spoilt - With SPR
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Spoilt Alcohol Page" "Spoilt"
    When I enter month "10" and year "2023" on "Adjustment Return Date Spoilt Alcohol Page"
    And I click save and continue button on "Adjustment Return Date Spoilt Alcohol Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "375" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Tax type                                            | SPR duty rate | Volume                                                        | Duty value |
      | Spoilt     | October 2023           | Draught spirits between 1.3% and 3.4% ABV (375 SPR) | £9.80         | 3000.75 litres of spirits,250.55 litres of pure alcohol (Lpa) | −£2,455.39 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                         | Duty value     | Action        |
      | Under-declared  | Draught beer between 1.3% and 3.4% ABV (371 SPR)    | £2,455.39      | Change Remove |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR)   | −£6,991,359.67 | Change Remove |
      | Spoilt          | Draught spirits between 1.3% and 3.4% ABV (375 SPR) | −£2,455.39     | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Happy path - Drawback - Other Fermented Products - With SPR
    When I select radio button "Drawback" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Drawback"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "374" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.5599" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.48"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Tax type                                                             | SPR duty rate | Volume                                                                           | Duty value |
      | Drawback   | October 2023           | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | £9.80         | 3000.75 litres of other fermented products,250.5599 litres of pure alcohol (Lpa) | −£2,455.48 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value     | Action        |
      | Under-declared  | Draught beer between 1.3% and 3.4% ABV (371 SPR)                     | £2,455.39      | Change Remove |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR)                    | −£6,991,359.67 | Change Remove |
      | Spoilt          | Draught spirits between 1.3% and 3.4% ABV (375 SPR)                  | −£2,455.39     | Change Remove |
      | Drawback        | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | −£2,455.48     | Change Remove |
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for under-declaration | Reason for over-declaration | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Completed                                   | Completed                                        | Completed                               | Not started                  | Not started                 | Not started                                  | Not started                                |
    When I click on "Reason for under-declaration" hyperlink on "Task List Page"
    Then I am presented with the "Under Declaration Reason Page"
    When I enter "Test Under Declaration Reason" on "Under Declaration Reason Page"
    And I click save and continue button on "Under Declaration Reason Page"
    Then I am presented with the "Task List Page"
    When I click on "Reason for over-declaration" hyperlink on "Task List Page"
    Then I am presented with the "Over Declaration Reason Page"
    When I enter "Test over Declaration Reason" on "Over Declaration Reason Page"
    And I click save and continue button on "Over Declaration Reason Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for under-declaration | Reason for over-declaration | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Completed                                   | Completed                                        | Completed                               | Completed                    | Completed                   | Not started                                  | Not started                                |
#  DSD- nothing to declare
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for under-declaration | Reason for over-declaration | You don’t need to tell us about any duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Completed                                   | Completed                                        | Completed                               | Completed                    | Completed                   | Completed                                                     | Not started                                |
# Spirits and ingredients- nothing to declare
    When I click on "Tell us about your spirits and ingredients" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "No" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for under-declaration | Reason for over-declaration | You don’t need to tell us about any duty suspended deliveries | You don’t need to tell us about any spirits or ingredients | Check how much duty is payable and send return |
      | Completed                               | Completed               | Completed                | Completed               | Completed                  | Completed                                   | Completed                                        | Completed                               | Completed                    | Completed                   | Completed                                                     | Completed                                                  | Not started                                    |
    When I click on "Check how much duty is payable and send return" hyperlink on "Task List Page"
    Then I am presented with the "Return Summary Page" "−£6,957,273.13"
    And I should see the following details at the returns summary page
      | Declared spirits duty                  | £8,528.05      | Change |
      | Declared wine duty                     | £7,461.84      | Change |
      | Declared cider duty                    | £2,731.28      | Change |
      | Declared other fermented products duty | £7,103.76      | Change |
      | Declared beer duty                     | £10,717.09     | Change |
      | Adjustment duty value                  | −£6,993,815.15 | Change |
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"
    And the page source contains "You are owed −£6,957,273.13"

  Scenario:3. Alcohol Duty Returns Journey - Happy Path - Nil Return
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "No" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare any adjustments?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "No" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your spirits and ingredients" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "No" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you don’t need to declare duty | You’ve told us you do not need to declare any adjustments | You don’t need to tell us about any duty suspended deliveries | You don’t need to tell us about any spirits or ingredients | Check how much duty is payable and send return |
      | Completed                                     | Completed                                                 | Completed                                                     | Completed                                                  | Not started                                    |
    When I click on "Check how much duty is payable and send return" hyperlink on "Task List Page"
    Then I am presented with the "Nil Return Summary Page"
    And I should see the following details at the returns summary page
      | Declared duty         | Nil | Change |
      | Adjustment duty value | Nil | Change |
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"
    And the page source contains "You have nothing to pay"

  Scenario:4. Alcohol Duty Returns Journey - Verifying 'Remove' link functionality
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page"
    When I select radio button "Non-draught beer between 1.3% and 3.4% ABV (361 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "9999.99" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "89.9999" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "19" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                          | Total beer      | Total pure alcohol | Duty rate        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99 litres | 89.9999 Lpa        | £19.00 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared (litres) | Pure alcohol declared (lpa) | SPR duty rate (per litre) | Action        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99                       | 89.9999                     | £19.00                    | Change Remove |
#Adding one more product to the list
    When I select radio button "Yes" on "Multiple SPR List Question Beer Page"
    And I click save and continue button on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" with new url containing prefix as "change-" and suffix as "Beer"
    When I select radio button "Draught beer between 1.3% and 3.4% ABV (371 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "7777.77" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "777.7777" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "77.77" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                      | Total beer      | Total pure alcohol | Duty rate        |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR) | 7,777.77 litres | 777.7777 Lpa       | £77.77 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared (litres) | Pure alcohol declared (lpa) | SPR duty rate (per litre) | Action        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99                       | 89.9999                     | £19.00                    | Change Remove |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     | 7,777.77                       | 777.7777                    | £77.77                    | Change Remove |
    When I click "Remove hyperlink" on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Delete Multiple SPR Product Question Page"
    When I click save and continue button on "Delete Multiple SPR Product Question Page"
    Then I am presented with the "Delete Multiple SPR Product Question Page" error page
#Validating the error message
    And I should see the "There is a problem" and below error messages
      | Select yes if you want to remove this product |
#If a user selects NO then none of the products will be removed
    When I select radio button "No" on "Delete Multiple SPR Product Question Page"
    And I click save and continue button on "Delete Multiple SPR Product Question Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared (litres) | Pure alcohol declared (lpa) | SPR duty rate (per litre) | Action        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99                       | 89.9999                     | £19.00                    | Change Remove |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     | 7,777.77                       | 777.7777                    | £77.77                    | Change Remove |
    When I click "Remove hyperlink" on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Delete Multiple SPR Product Question Page"
#If a user selects YES then the selected product will be removed (removing 1 of 2 products)
    When I select radio button "Yes" on "Delete Multiple SPR Product Question Page"
    And I click save and continue button on "Delete Multiple SPR Product Question Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                      | Total volume declared (litres) | Pure alcohol declared (lpa) | SPR duty rate (per litre) | Action        |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR) | 7,777.77                       | 777.7777                    | £77.77                    | Change Remove |
#If all products are removed from the list then the user is presented with 'Do You Have Multiple Small Producer Relief Duty Rate Page' to add products (removing 1 of 1 products)
    When I click "Remove hyperlink" on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Delete Multiple SPR Product Question Page"
    When I select radio button "Yes" on "Delete Multiple SPR Product Question Page"
    And I click save and continue button on "Delete Multiple SPR Product Question Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"