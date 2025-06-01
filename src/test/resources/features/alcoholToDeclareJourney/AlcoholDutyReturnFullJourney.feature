@Test @AllTests @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter "cred4" in authorityId column
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"

  Scenario:1. Alcohol Duty Returns Journey - Happy Path - Positive Value Submission
#Beer - When Multiple SPR is set to 'No'
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    When I click on "Declare beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.5555" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
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
      | Non-draught beer between 1.3% and 3.4% ABV (311)     |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     |
      | Non-draught beer between 8.5% and 22% ABV (331)      |
      | Non-draught beer at or above 22.1% ABV (341)         |
      | Draught beer between 1.3% and 3.4% ABV (351)         |
      | Draught beer between 3.5% and 8.4% ABV (356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (376 SPR)     |
    And I check the page source for the following key-value pairs:
      | key           | value          |
      | Total volume  | 999.19 litres  |
      | Pure alcohol  | 99.1300 litres |
      | Total volume  | 945.55 litres  |
      | Pure alcohol  | 55.5555 litres |
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
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£14,980.63"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught beer between 1.3% and 3.4% ABV (311)     | 55.5555                      | £9.61                 | £533.88    | Change |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     | 77.5500                      | £21.78                | £1,689.03  | Change |
      | Non-draught beer between 8.5% and 22% ABV (331)      | 66.3400                      | £29.54                | £1,959.68  | Change |
      | Non-draught beer at or above 22.1% ABV (341)         | 99.1300                      | £32.79                | £3,250.47  | Change |
      | Draught beer between 1.3% and 3.4% ABV (351)         | 66.4400                      | £8.28                 | £550.12    | Change |
      | Draught beer between 3.5% and 8.4% ABV (356)         | 66.8900                      | £18.76                | £1,254.85  | Change |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 99.4500                      | £15.00                | £1,491.75  | Change |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) | 78.9000                      | £18.00                | £1,420.20  | Change |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     | 99.9900                      | £15.00                | £1,499.85  | Change |
      | Draught beer between 3.5% and 8.4% ABV (376 SPR)     | 66.5400                      | £20.00                | £1,330.80  | Change |
    When I click save and continue button on "Duty Due Beer Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider   | Declare wine    | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months|
      | Completed                                         | Completed    | Not yet started | Not yet started | Not yet started | Not yet started                  | Not yet started                            | Not yet started                              | Not yet started                                        |
#Cider - When Multiple SPR is set to 'No'
    When I click on "Declare cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I "select" checkbox "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369),Cider between 1.3% and 3.4% ABV (tax type code 372),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Cider Page"
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
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (324)                                         |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         |
      | Draught sparkling cider between 5.6% and 8.4% ABV (359)                                             |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (369 SPR)                                     |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR)     |
      | Draught sparkling cider between 5.6% and 8.4% ABV (379 SPR)                                         |
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
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£49,167.33"
    And I should see the following product details
      | Description                                                                                         | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   | 43.4400                      | £9.61                 | £417.45    | Change |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     | 22.2200                      | £10.02                 | £222.64    | Change |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (324)                                         | 99.9900                      | £25.67                | £2,566.74  | Change |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       | 33.2100                      | £8.28                 | £274.97    | Change |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         | 22.4500                      | £8.63                 | £193.74    | Change |
      | Draught sparkling cider between 5.6% and 8.4% ABV (359)                                             | 888.8800                     | £18.76                | £16,675.38 | Change |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               | 66.6600                      | £14.00                | £933.24    | Change |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 98.9900                      | £12.45                | £1,232.42  | Change |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (369 SPR)                                     | 666.6600                     | £36.00                | £23,999.76 | Change |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   | 45.5600                      | £16.00                | £728.96    | Change |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR)     | 33.3300                      | £18.00                | £599.94    | Change |
      | Draught sparkling cider between 5.6% and 8.4% ABV (379 SPR)                                         | 77.7700                      | £17.00                | £1,322.09  | Change |
    When I click save and continue button on "Duty Due Cider Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine    | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months|
      | Completed                                         | Completed    | Completed     | Not yet started | Not yet started | Not yet started                  | Not yet started                            | Not yet started                              | Not yet started                                        |
#Wine - When Multiple SPR is set to 'No'
    When I click on "Declare wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I "select" checkbox "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363),Wine between 3.5% and 8.4% ABV (tax type code 368),Wine between 1.3% and 3.4% ABV (tax type code 373),Wine between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
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
      | Non-draught wine between 1.3% and 3.4% ABV (313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     |
      | Non-draught wine between 8.5% and 22% ABV (333)      |
      | Non-draught wine at or above 22.1% ABV (343)         |
      | Draught wine between 1.3% and 3.4% ABV (353)         |
      | Draught wine between 3.5% and 8.4% ABV (358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     |
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
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£12,363.57"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught wine between 1.3% and 3.4% ABV (313)     | 35.5500                      | £9.61                 | £341.63    | Change |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     | 88.8800                      | £25.67                | £2,281.54  | Change |
      | Non-draught wine between 8.5% and 22% ABV (333)      | 22.2200                      | £29.54                | £656.37    | Change |
      | Non-draught wine at or above 22.1% ABV (343)         | 82.2200                      | £32.79                | £2,695.99  | Change |
      | Draught wine between 1.3% and 3.4% ABV (353)         | 22.3300                      | £8.28                 | £184.89    | Change |
      | Draught wine between 3.5% and 8.4% ABV (358)         | 24.5500                      | £18.76                | £460.55    | Change |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | 99.4500                      | £15.00                | £1,491.75  | Change |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 78.9000                      | £18.00                | £1,420.20  | Change |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     | 99.9900                      | £15.00                | £1,499.85  | Change |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     | 66.5400                      | £20.00                | £1,330.80  | Change |
    When I click save and continue button on "Duty Due Wine Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months|
      | Completed                                         | Completed    | Completed     | Completed    | Not yet started | Not yet started                  | Not yet started                            | Not yet started                              | Not yet started                                        |
#Spirits - When Multiple SPR is set to 'No'
    When I click on "Declare spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    When I "select" checkbox "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365),Spirits between 3.5% and 8.4% ABV (tax type code 370),Spirits between 1.3% and 3.4% ABV (tax type code 375),Spirits between 3.5% and 8.4% ABV (tax type code 380)" on "What Do You Need To Declare Spirits Page"
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
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     |
      | Non-draught spirits between 8.5% and 22% ABV (335)      |
      | Non-draught spirits at or above 22.1% ABV (345)         |
      | Draught spirits between 1.3% and 3.4% ABV (355)         |
      | Draught spirits between 3.5% and 8.4% ABV (360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR)     |
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
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£13,376.15"
    And I should see the following product details
      | Description                                             | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     | 88.8000                      | £9.61                 | £853.36    | Change |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     | 77.7700                      | £25.67                | £1,996.35  | Change |
      | Non-draught spirits between 8.5% and 22% ABV (335)      | 66.6600                      | £29.54                | £1,969.13  | Change |
      | Non-draught spirits at or above 22.1% ABV (345)         | 55.5500                      | £32.79                | £1,821.48  | Change |
      | Draught spirits between 1.3% and 3.4% ABV (355)         | 44.4400                      | £8.28                 | £367.96    | Change |
      | Draught spirits between 3.5% and 8.4% ABV (360)         | 33.3300                      | £18.76                | £625.27    | Change |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) | 99.4500                      | £15.00                | £1,491.75  | Change |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) | 78.9000                      | £18.00                | £1,420.20  | Change |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     | 99.9900                      | £15.00                | £1,499.85  | Change |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR)     | 66.5400                      | £20.00                | £1,330.80  | Change |
    When I click save and continue button on "Duty Due Spirits Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Not yet started                  | Not yet started                            | Not yet started                              | Not yet started                                         |
#Other Fermented Products - When Multiple SPR is set to 'No'
    When I click on "Declare other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I "select" checkbox "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364),Other fermented products between 3.5% and 8.4% ABV (tax type code 369),Other fermented products between 1.3% and 3.4% ABV (tax type code 374),Other fermented products between 3.5% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Wine Page"
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
      | Non-draught other fermented products between 1.3% and 3.4% ABV (314)     |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (324)     |
      | Non-draught other fermented products between 8.5% and 22% ABV (334)      |
      | Non-draught other fermented products at or above 22.1% ABV (344)         |
      | Draught other fermented products between 1.3% and 3.4% ABV (354)         |
      | Draught other fermented products between 3.5% and 8.4% ABV (359)         |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (364 SPR) |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (369 SPR) |
      | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR)     |
      | Draught other fermented products between 3.5% and 8.4% ABV (379 SPR)     |
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
    When I click save and continue button on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "Duty Due Other Fermented Product Page" "£11,274.40"
    And I should see the following product details
      | Description                                                              | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (314)     | 33.3300                      | £9.61                 | £320.30    | Change |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (324)     | 22.2200                      | £25.67                | £570.38    | Change |
      | Non-draught other fermented products between 8.5% and 22% ABV (334)      | 44.4400                      | £29.54                | £1,312.75  | Change |
      | Non-draught other fermented products at or above 22.1% ABV (344)         | 55.5500                      | £32.79                | £1,821.48  | Change |
      | Draught other fermented products between 1.3% and 3.4% ABV (354)         | 66.6600                      | £8.28                 | £551.94    | Change |
      | Draught other fermented products between 3.5% and 8.4% ABV (359)         | 34.5500                      | £18.76                | £648.15    | Change |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (364 SPR) | 77.7700                      | £15.00                | £1,166.55  | Change |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (369 SPR) | 88.8800                      | £16.00                | £1,422.08  | Change |
      | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR)     | 78.7700                      | £20.00                | £1,575.40  | Change |
      | Draught other fermented products between 3.5% and 8.4% ABV (379 SPR)     | 99.2300                      | £19.00                | £1,885.37  | Change |
    When I click save and continue button on "Duty Due Other Fermented Product Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months|
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Not yet started                            | Not yet started                              | Not yet started                                        |
#Adjustments Journey - Beer - Under-declaration - Without SPR
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"
    When I select radio button "Under-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Page" "Under-declaration"
    When I enter month "02" and year "2025" on "Adjustment Return Date Page"
    And I click save and continue button on "Adjustment Return Date Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "311" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.5555" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,407."
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment     | Original return period | Tax type                                         | Volume                                                | Duty value |
      | Under-declared | February 2025         | Non-draught beer between 1.3% and 3.4% ABV (311) | 3,000.75 litres,250.5555 litres of pure alcohol (LPA)   | £2,407.83  |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311) | £2,407.83  | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Cider - Under-declaration - Without SPR
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Over-declaration"
    When I enter month "02" and year "2025" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "312" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,407.78"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                           | Volume                                                | Duty value |
      | Over-declared | February 2025           | Non-draught cider between 1.3% and 3.4% ABV (312) | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,407.78 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311)  | £2,407.83  | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (312) | −£2,407.78 | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Wine - Repackaged Draught Products - With SPR
    When I select radio button "Repackaged draught products" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Repackaged draught products"
    When I enter month "02" and year "2025" on "Adjustment Return Date Over Dec Page"
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
      | Adjustment | Original return period | Original tax type                                | New tax type                                         | SPR duty rate | Volume                                                | Duty value |
      | Repackaged | February 2025          | Draught wine between 1.3% and 3.4% ABV (373 SPR) | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | £11.50        | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | £425.93    |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311)  | £2,407.83  | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (312) | −£2,407.78 | Change Remove |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (373 SPR)  | £425.93    | Change Remove |
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
      | Adjustment type | Description                                       | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311)  | £2,407.83  | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (312) | −£2,407.78 | Change Remove |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (373 SPR)  | £425.93    | Change Remove |
      | Spoilt          | Spirits                                           | −£3,255.55 | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Other Fermented Products - Drawback - Without SPR
    When I select radio button "Drawback" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Drawback"
    When I enter month "02" and year "2025" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "314" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "−£2,407.78"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Tax type                                                             | Volume                                                | Duty value |
      | Drawback   | February 2025           | Non-draught other fermented products between 1.3% and 3.4% ABV (314) | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,407.78 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311)                     | £2,407.83  | Change Remove |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (312)                    | −£2,407.78 | Change Remove |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (373 SPR)                     | £425.93    | Change Remove |
      | Spoilt          | Spirits                                                              | −£3,255.55 | Change Remove |
      | Drawback        | Non-draught other fermented products between 1.3% and 3.4% ABV (314) | −£2,407.78 | Change Remove |
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us why products were under-declared" hyperlink on "Task List Page"
    Then I am presented with the "Under Declaration Reason Page"
    When I enter "Test Under Declaration Reason" on "Under Declaration Reason Page"
    And I click save and continue button on "Under Declaration Reason Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us why products were over-declared" hyperlink on "Task List Page"
    Then I am presented with the "Over Declaration Reason Page"
    When I enter "Test over Declaration Reason" on "Over Declaration Reason Page"
    And I click save and continue button on "Over Declaration Reason Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Declare adjustments | Tell us why products were under-declared | Tell us why products were over-declared | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Completed                                  | Completed           | Completed                                | Completed                               | Not yet started                              | Not yet started                                         |
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
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in this beer | Total net quantity of duty suspended cider | Total net quantity of pure alcohol in this cider | Total net quantity of duty suspended wine | Total net quantity of pure alcohol in this wine | Total net quantity of duty suspended spirits | Total net quantity of pure alcohol in these spirits | Total net quantity of duty suspended other fermented products | Total net quantity of pure alcohol in these other fermented products |
      | 2,000.75 litres                           | 150.5500 litres                                 | 9,999.99 litres                            | 99.1900 litres                                   | 7,777.77 litres                           | 77.7700 litres                                  | 2,100.75 litres                              | 160.5500 litres                                     | 8,888.88 litres                                               | 88.8800 litres                                                       |
    When I click continue button on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Declare adjustments | Tell us why products were under-declared | Tell us why products were over-declared | Tell us about your duty suspended deliveries | Change the entries you've told us about |  Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Completed                                  | Completed           | Completed                                | Completed                               | Completed                                    | Completed                               |  Not yet started                                         |
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
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Declare adjustments | Tell us why products were under-declared | Tell us why products were over-declared | Tell us about your duty suspended deliveries | Change the entries you've told us about | Tell us about spirits produced in the past three months | Change the spirits you've told us about | Check duty payable and send your return |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Completed                                  | Completed           | Completed                                | Completed                               | Completed                                    | Completed                               | Completed                                               | Completed                               | Not yet started                         |
    When I click on "Check duty payable and send your return" hyperlink on "Task List Page"
    Then I am presented with the "Return Summary Page" "£95,924.73"
    And I should see the following details of the table 1 at the returns summary page
      | Spirits declared                  | £13,376.15 | Change |
      | Wine declared                     | £12,363.57 | Change |
      | Cider declared                    | £49,167.33 | Change |
      | Other fermented products declared | £11,274.40 | Change |
      | Beer declared                     | £14,980.63 | Change |
      | Adjustments to previous returns   | −£5,237.35 | Change |
    And I should see the following details of the table 2 at the returns summary page
      | Duty suspended alcohol | Declared | Change |
      | Spirits production     | Declared | Change |
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"
    And the page source contains "You need to pay £95,924.73"

  Scenario:2. Alcohol Duty Returns Journey - Happy Path - Negative Value Submission
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
#Beer - When Multiple SPR is set to 'Yes'
    When I click on "Declare beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
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
    And I enter "89.9999" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "19" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                          | Total beer      | Total pure alcohol | Duty rate        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99 litres | 89.9999 LPA        | £19.00 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99                       | 89.9999                      | £19.00                | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Beer Page"
    And I click save and continue button on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 1.3% and 3.4% ABV (311)     |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     |
      | Non-draught beer between 8.5% and 22% ABV (331)      |
      | Non-draught beer at or above 22.1% ABV (341)         |
      | Draught beer between 1.3% and 3.4% ABV (351)         |
      | Draught beer between 3.5% and 8.4% ABV (356)         |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) |
      | Non-draught beer between 3.5% and 8.4% ABV (366 SPR) |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     |
      | Draught beer between 3.5% and 8.4% ABV (376 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 999.19 litres   |
      | Pure alcohol | 99.1300 litres  |
      | Total volume | 945.55 litres   |
      | Pure alcohol | 55.5500 litres  |
      | Total volume | 667.32 litres   |
      | Pure alcohol | 66.3400 litres  |
      | Total volume | 898.34 litres   |
      | Pure alcohol | 77.5500 litres  |
      | Total volume | 699.45 litres   |
      | Pure alcohol | 66.8900 litres  |
      | Total volume | 887.54 litres   |
      | Pure alcohol | 66.4400 litres  |
      | Total volume | 9,999.99 litres |
      | Pure alcohol | 89.9999 litres  |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£10,717.09"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught beer between 1.3% and 3.4% ABV (311)     | 55.5500                      | £9.61                 | £533.83    | Change |
      | Non-draught beer between 3.5% and 8.4% ABV (321)     | 77.5500                      | £21.78                | £1,689.03  | Change |
      | Non-draught beer between 8.5% and 22% ABV (331)      | 66.3400                      | £29.54                | £1,959.68  | Change |
      | Non-draught beer at or above 22.1% ABV (341)         | 99.1300                      | £32.79                | £3,250.47  | Change |
      | Draught beer between 1.3% and 3.4% ABV (351)         | 66.4400                      | £8.28                 | £550.12    | Change |
      | Draught beer between 3.5% and 8.4% ABV (356)         | 66.8900                      | £18.76               | £1,254.85  | Change |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 89.9999                      | £19.00                | £1,709.99  | Change |
    When I click save and continue button on "Duty Due Beer Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider   | Declare wine    | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Not yet started | Not yet started | Not yet started | Not yet started                  | Not yet started                            | Not yet started                              | Not yet started                                         |
#Cider - When Multiple SPR is set to 'Yes'
    When I click on "Declare cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I "select" checkbox "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369),Cider between 1.3% and 3.4% ABV (tax type code 372),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Cider Page"
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
      | Description                                                                                         | Total cider     | Total pure alcohol | Duty rate        |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 7,999.99 litres | 77.9900 LPA        | £20.99 per litre |
    When I click continue button on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple SPR List Question Cider Page"
    And I should see the following product details
      | Description                                                                                         | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 7,999.99                       | 77.9900                      | £20.99                | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Cider Page"
    And I click save and continue button on "Multiple SPR List Question Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    And I should see the following text on the page
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (324)                                         |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         |
      | Draught sparkling cider between 5.6% and 8.4% ABV (359)                                             |
      | Non-draught cider between 1.3% and 3.4% ABV (362 SPR)                                               |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (369 SPR)                                     |
      | Draught cider between 1.3% and 3.4% ABV (372 SPR)                                                   |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR)     |
      | Draught sparkling cider between 5.6% and 8.4% ABV (379 SPR)                                         |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 789.44 litres   |
      | Pure alcohol | 43.4400 litres  |
      | Total volume | 898.12 litres   |
      | Pure alcohol | 22.2200 litres  |
      | Total volume | 999.99 litres   |
      | Pure alcohol | 99.9900 litres  |
      | Total volume | 889.12 litres   |
      | Pure alcohol | 22.4500 litres  |
      | Total volume | 888.88 litres   |
      | Pure alcohol | 888.8800 litres |
      | Total volume | 7,999.99 litres |
      | Pure alcohol | 77.9900 litres  |
    When I click save and continue button on "Check Your Answers Returns Cider Page"
    Then I am presented with the "Duty Due Cider Page" "£22,167.86"
    And I should see the following product details
      | Description                                                                                         | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught cider between 1.3% and 3.4% ABV (312)                                                   | 43.4400                      | £9.61                 | £417.45    | Change |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (322)     | 22.2200                      | £10.02                 | £222.64    | Change |
      | Non-draught sparkling cider between 5.6% and 8.4% ABV (324)                                         | 99.9900                      | £25.67                | £2,566.74  | Change |
      | Draught cider between 1.3% and 3.4% ABV (352)                                                       | 33.2100                      | £8.28                 | £274.97    | Change |
      | Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (357)         | 22.4500                      | £8.63                 | £193.74    | Change |
      | Draught sparkling cider between 5.6% and 8.4% ABV (359)                                             | 888.8800                     | £18.76                | £16,675.38 | Change |
      | Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR) | 77.9900                      | £20.99                | £1,637.01  | Change |
    When I click save and continue button on "Duty Due Cider Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine    | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Not yet started | Not yet started | Not yet started                  | Not yet started                            | Not yet started                              | Not yet started                                         |
#Wine - When Multiple SPR is set to 'Yes'
    When I click on "Declare wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I "select" checkbox "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363),Wine between 3.5% and 8.4% ABV (tax type code 368),Wine between 1.3% and 3.4% ABV (tax type code 373),Wine between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
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
      | Description                                          | Total wine    | Total pure alcohol | Duty rate        |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 678.99 litres | 66.4300 LPA        | £15.65 per litre |
    When I click continue button on "Check Your Answers SPR Wine Page"
    Then I am presented with the "Multiple SPR List Question Wine Page"
    And I should see the following product details
      | Description                                          | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 678.99                         | 66.4300                      | £15.65                | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Wine Page"
    And I click save and continue button on "Multiple SPR List Question Wine Page"
    Then I am presented with the "Check Your Answers Returns Wine Page"
    And I should see the following text on the page
      | Non-draught wine between 1.3% and 3.4% ABV (313)     |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     |
      | Non-draught wine between 8.5% and 22% ABV (333)      |
      | Non-draught wine at or above 22.1% ABV (343)         |
      | Draught wine between 1.3% and 3.4% ABV (353)         |
      | Draught wine between 3.5% and 8.4% ABV (358)         |
      | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) |
      | Draught wine between 1.3% and 3.4% ABV (373 SPR)     |
      | Draught wine between 3.5% and 8.4% ABV (378 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 3,698.52 litres |
      | Pure alcohol | 88.8800 litres  |
      | Total volume | 8,974.23 litres |
      | Pure alcohol | 22.2200 litres  |
      | Total volume | 1,234.55 litres |
      | Pure alcohol | 35.5500 litres  |
      | Total volume | 990.01 litres   |
      | Pure alcohol | 82.2200 litres  |
      | Total volume | 895.22 litres   |
      | Pure alcohol | 22.3300 litres  |
      | Total volume | 569.33 litres   |
      | Pure alcohol | 24.5500 litres  |
      | Total volume | 678.99 litres   |
      | Pure alcohol | 66.4300 litres  |
    When I click save and continue button on "Check Your Answers Returns Wine Page"
    Then I am presented with the "Duty Due Wine Page" "£7,461.84"
    And I should see the following product details
      | Description                                          | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught wine between 1.3% and 3.4% ABV (313)     | 35.5500                      | £9.61                 | £322.41    | Change |
      | Non-draught wine between 3.5% and 8.4% ABV (323)     | 88.8800                      | £25.67                | £2,281.54  | Change |
      | Non-draught wine between 8.5% and 22% ABV (333)      | 22.2200                      | £29.54                | £656.37    | Change |
      | Non-draught wine at or above 22.1% ABV (343)         | 82.2200                      | £32.79                | £2,695.99  | Change |
      | Draught wine between 1.3% and 3.4% ABV (353)         | 22.3300                      | £8.28                 | £184.89    | Change |
      | Draught wine between 3.5% and 8.4% ABV (358)         | 24.5500                      | £18.76                | £460.55    | Change |
      | Non-draught wine between 3.5% and 8.4% ABV (368 SPR) | 66.4300                      | £15.65                | £1,039.62  | Change |
    When I click save and continue button on "Duty Due Wine Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Not yet started | Not yet started                  | Not yet started                            | Not yet started                              | Not yet started                                         |
#Spirits - When Multiple SPR is set to 'Yes'
    When I click on "Declare spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    When I "select" checkbox "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365),Spirits between 3.5% and 8.4% ABV (tax type code 370),Spirits between 1.3% and 3.4% ABV (tax type code 375),Spirits between 3.5% and 8.4% ABV (tax type code 380)" on "What Do You Need To Declare Spirits Page"
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
      | Description                                         | Total spirits | Total pure alcohol | Duty rate        |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR) | 789.99 litres | 55.5500 LPA        | £20.00 per litre |
    When I click continue button on "Check Your Answers SPR Spirits Page"
    Then I am presented with the "Multiple SPR List Question Spirits Page"
    And I should see the following product details
      | Description                                         | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR) | 789.99                         | 55.5500                      | £20.00                | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Spirits Page"
    And I click save and continue button on "Multiple SPR List Question Spirits Page"
    Then I am presented with the "Check Your Answers Returns Spirits Page"
    And I should see the following text on the page
      | Non-draught spirits between 1.3% and 3.4% ABV (315)     |
      | Non-draught spirits between 3.5% and 8.4% ABV (325)     |
      | Non-draught spirits between 8.5% and 22% ABV (335)      |
      | Non-draught spirits at or above 22.1% ABV (345)         |
      | Draught spirits between 1.3% and 3.4% ABV (355)         |
      | Draught spirits between 3.5% and 8.4% ABV (360)         |
      | Non-draught spirits between 1.3% and 3.4% ABV (365 SPR) |
      | Non-draught spirits between 3.5% and 8.4% ABV (370 SPR) |
      | Draught spirits between 1.3% and 3.4% ABV (375 SPR)     |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR)     |
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
      | Pure alcohol | 55.5500 litres  |
    When I click save and continue button on "Check Your Answers Returns Spirits Page"
    Then I am presented with the "Duty Due Spirits Page" "£8,528.05"
    And I should see the following product details
      | Description                                         | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught spirits between 1.3% and 3.4% ABV (315) | 88.8000                      | £9.61                 | £853.36    | Change |
      | Non-draught spirits between 3.5% and 8.4% ABV (325) | 77.7700                      | £25.67                | £1,996.35  | Change |
      | Non-draught spirits between 8.5% and 22% ABV (335)  | 66.6600                      | £29.54                | £1,969.13  | Change |
      | Non-draught spirits at or above 22.1% ABV (345)     | 55.5500                      | £32.79                | £1,821.48  | Change |
      | Draught spirits between 1.3% and 3.4% ABV (355)     | 44.4400                      | £8.28                 | £367.96    | Change |
      | Draught spirits between 3.5% and 8.4% ABV (360)     | 33.3300                      | £18.76                | £625.27    | Change |
      | Draught spirits between 3.5% and 8.4% ABV (380 SPR) | 55.5500                      | £20.00                | £1,111.00  | Change |
    When I click save and continue button on "Duty Due Spirits Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Not yet started                  | Not yet started                            | Not yet started                              | Not yet started                                         |
#Other Fermented Products - When Multiple SPR is set to 'Yes'
    When I click on "Declare other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I "select" checkbox "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364),Other fermented products between 3.5% and 8.4% ABV (tax type code 369),Other fermented products between 1.3% and 3.4% ABV (tax type code 374),Other fermented products between 3.5% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Wine Page"
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
      | Description                                                              | Total other fermented products | Total pure alcohol | Duty rate        |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (369 SPR) | 999.99 litres                  | 99.9900 LPA        | £20.00 per litre |
    When I click continue button on "Check Your Answers SPR Other Fermented Product Page"
    Then I am presented with the "Multiple SPR List Question Other Fermented Product Page"
    And I should see the following product details
      | Description                                                              | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (369 SPR) | 999.99                         | 99.9900                      | £20.00                | Change Remove |
    When I select radio button "No" on "Multiple SPR List Question Other Fermented Product Page"
    And I click save and continue button on "Multiple SPR List Question Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I should see the following text on the page
      | Non-draught other fermented products between 1.3% and 3.4% ABV (314)     |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (324)     |
      | Non-draught other fermented products between 8.5% and 22% ABV (334)      |
      | Non-draught other fermented products at or above 22.1% ABV (344)         |
      | Draught other fermented products between 1.3% and 3.4% ABV (354)         |
      | Draught other fermented products between 3.5% and 8.4% ABV (359)         |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (364 SPR) |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (369 SPR) |
      | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR)     |
      | Draught other fermented products between 3.5% and 8.4% ABV (379 SPR)     |
    And I check the page source for the following key-value pairs:
      | key          | value           |
      | Total volume | 3,322.22 litres |
      | Pure alcohol | 22.2200 litres  |
      | Total volume | 4,433.44 litres |
      | Pure alcohol | 44.4400 litres  |
      | Total volume | 2,233.33 litres |
      | Pure alcohol | 33.3300 litres  |
      | Total volume | 5,544.55 litres |
      | Pure alcohol | 55.5500 litres  |
      | Total volume | 7,865.12 litres |
      | Pure alcohol | 34.5500 litres  |
      | Total volume | 6,666.66 litres |
      | Pure alcohol | 66.6600 litres  |
      | Total volume | 999.99 litres   |
      | Pure alcohol | 99.9900 litres  |
    When I click save and continue button on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "Duty Due Other Fermented Product Page" "£7,103.76"
    And I should see the following product details
      | Description                                                              | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught other fermented products between 1.3% and 3.4% ABV (314)     | 33.3300                      | £9.61                 | £308.96    | Change |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (324)     | 22.2200                      | £25.67                | £550.38    | Change |
      | Non-draught other fermented products between 8.5% and 22% ABV (334)      | 44.4400                      | £29.54                | £1,266.54  | Change |
      | Non-draught other fermented products at or above 22.1% ABV (344)         | 55.5500                      | £32.79                | £1,757.60  | Change |
      | Draught other fermented products between 1.3% and 3.4% ABV (354)         | 66.6600                      | £8.28                 | £561.27    | Change |
      | Draught other fermented products between 3.5% and 8.4% ABV (359)         | 34.5500                      | £18.76                | £659.21    | Change |
      | Non-draught other fermented products between 3.5% and 8.4% ABV (369 SPR) | 99.9900                      | £20.00                | £1,999.80  | Change |
    When I click save and continue button on "Duty Due Other Fermented Product Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Not yet started                            | Not yet started                              | Not yet started                                         |
#Adjustments Journey Beer - Under-declaration - With SPR
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
    When I enter "371" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment     | Original return period | Tax type                                         | SPR duty rate | Volume                                                | Duty value |
      | Under-declared | September 2023         | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £9.80         | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | £2,455.39  |
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
    And I enter "7777.7700" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "898.89" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "−£6,991,359.67"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                          | SPR duty rate | Volume                                                  | Duty value     |
      | Over-declared | October 2023           | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £898.89       | 9,999.99 litres,7,777.7700 litres of pure alcohol (LPA) | −£6,991,359.67 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value     | Action        |
      | Under-declared  | Draught beer between 1.3% and 3.4% ABV (371 SPR)  | £2,455.39      | Change Remove |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR) | −£6,991,359.67 | Change Remove |
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
      | Adjustment type | Description                                       | Duty value     | Action        |
      | Under-declared  | Draught beer between 1.3% and 3.4% ABV (371 SPR)  | £2,455.39      | Change Remove |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR) | −£6,991,359.67 | Change Remove |
      | Spoilt          | Spirits                                           | −£3,255.55     | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#  Adjustments Journey - Happy path - Drawback - Other Fermented Products - With SPR
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
      | Adjustment | Original return period | Tax type                                                             | SPR duty rate | Volume                                                | Duty value |
      | Drawback   | October 2023           | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | £9.80         | 3,000.75 litres,250.5599 litres of pure alcohol (LPA) | −£2,455.48 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value     | Action        |
      | Under-declared  | Draught beer between 1.3% and 3.4% ABV (371 SPR)                     | £2,455.39      | Change Remove |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR)                    | −£6,991,359.67 | Change Remove |
      | Spoilt          | Spirits                                                              | −£3,255.55     | Change Remove |
      | Drawback        | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | −£2,455.48     | Change Remove |
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Declare adjustments | Tell us why products were under-declared | Tell us why products were over-declared | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Completed                                  | Completed           | Not yet started                          | Not yet started                         | Not yet started                              | Not yet started                                         |
    When I click on "Tell us why products were under-declared" hyperlink on "Task List Page"
    Then I am presented with the "Under Declaration Reason Page"
    When I enter "Test Under Declaration Reason" on "Under Declaration Reason Page"
    And I click save and continue button on "Under Declaration Reason Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us why products were over-declared" hyperlink on "Task List Page"
    Then I am presented with the "Over Declaration Reason Page"
    When I enter "Test over Declaration Reason" on "Over Declaration Reason Page"
    And I click save and continue button on "Over Declaration Reason Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Declare adjustments | Tell us why products were under-declared | Tell us why products were over-declared | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Completed                                  | Completed           | Completed                                | Completed                               | Not yet started                              | Not yet started                                         |
#  DSD- nothing to declare
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Declare adjustments | Tell us why products were under-declared | Tell us why products were over-declared | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Completed                                  | Completed           | Completed                                | Completed                               | Completed                                    | Not yet started                                         |
# Spirits and ingredients- nothing to declare
    When I click on "Tell us about spirits produced in the past three months" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "No" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider | Declare wine | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Declare adjustments | Tell us why products were under-declared | Tell us why products were over-declared | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months | Check duty payable and send your return | Change the spirits you've told us about |
      | Completed                                         | Completed    | Completed     | Completed    | Completed       | Completed                        | Completed                                  | Completed           | Completed                                | Completed                               | Completed                                    | Completed                                               | Not yet started                         | Completed                               |
    When I click on "Check duty payable and send your return" hyperlink on "Task List Page"
    Then I am presented with the "Return Summary Page" "−£6,938,636.71"
    And I should see the following details of the table 1 at the returns summary page
      | Spirits declared                  | £8,528.05      | Change |
      | Wine declared                     | £7,461.84      | Change |
      | Cider declared                    | £22,167.86     | Change |
      | Other fermented products declared | £7,103.76      | Change |
      | Beer declared                     | £10,717.09     | Change |
      | Adjustments to previous returns   | −£6,994,615.31 | Change |
    And I should see the following details of the table 2 at the returns summary page
      | Duty suspended alcohol | Nothing to declare | Change |
      | Spirits production     | Nothing to declare | Change |
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"
    And the page source contains "You are owed −£6,938,636.71"

  Scenario:3. Alcohol Duty Returns Journey - Happy Path - Nil Return
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "No" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "No" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about spirits produced in the past three months" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "No" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months | Check duty payable and send your return |
      | Completed                                         | Completed                                  | Completed                                    | Completed                                               | Not yet started                         |
    When I click on "Check duty payable and send your return" hyperlink on "Task List Page"
    Then I am presented with the "No Duty Due Page"
    And I should see the following details of the table 1 at the returns summary page
      | Declared duty                   | Nil | Change |
      | Adjustments to previous returns | Nil | Change |
    And I should see the following details of the table 2 at the returns summary page
      | Duty suspended alcohol | Nothing to declare | Change |
      | Spirits production     | Nothing to declare | Change |
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"
    And the page source contains "You have nothing to pay"

  Scenario:4. Alcohol Duty Returns Journey - Verifying 'Remove' link functionality
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    When I click on "Declare beer" hyperlink on "Task List Page"
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
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99 litres | 89.9999 LPA        | £19.00 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99                       | 89.9999                      | £19.00                | Change Remove |
#Adding one more product to the list
    When I select radio button "Yes" on "Multiple SPR List Question Beer Page"
    And I click save and continue button on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" with new url
    When I select radio button "Draught beer between 1.3% and 3.4% ABV (371 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "7777.77" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "777.7777" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "77.77" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                      | Total beer      | Total pure alcohol | Duty rate        |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR) | 7,777.77 litres | 777.7777 LPA       | £77.77 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99                       | 89.9999                      | £19.00                | Change Remove |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     | 7,777.77                       | 777.7777                     | £77.77                | Change Remove |
    When I click "Remove hyperlink" on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Delete Multiple SPR Product Question Page"
    When I click save and continue button on "Delete Multiple SPR Product Question Page"
    Then I am presented with the "Delete Multiple SPR Product Question Page" error page
#Validating the error message
    And I should see the "There is a problem" and below error messages
      | Select yes to remove this entry |
#If a user selects NO then none of the products will be removed
    When I select radio button "No" on "Delete Multiple SPR Product Question Page"
    And I click save and continue button on "Delete Multiple SPR Product Question Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99                       | 89.9999                      | £19.00                | Change Remove |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR)     | 7,777.77                       | 777.7777                     | £77.77                | Change Remove |
    When I click "Remove hyperlink" on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Delete Multiple SPR Product Question Page"
#If a user selects YES then the selected product will be removed (removing 1 of 2 products)
    When I select radio button "Yes" on "Delete Multiple SPR Product Question Page"
    And I click save and continue button on "Delete Multiple SPR Product Question Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                      | Total volume declared (litres) | Litres of pure alcohol (LPA) | Duty rate (per litre) | Action        |
      | Draught beer between 1.3% and 3.4% ABV (371 SPR) | 7,777.77                       | 777.7777                     | £77.77                | Change Remove |
#If all products are removed from the list then the user is presented with 'Do You Have Multiple Small Producer Relief Duty Rate Page' to add products (removing 1 of 1 products)
    When I click "Remove hyperlink" on "Multiple SPR List Question Beer Page"
    Then I am presented with the "Delete Multiple SPR Product Question Page"
    When I select radio button "Yes" on "Delete Multiple SPR Product Question Page"
    And I click save and continue button on "Delete Multiple SPR Product Question Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"