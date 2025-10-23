@AllTests @AlcoholToDeclareChangeLinks
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
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) |
      | Non-draught beer between 3.5% and 8.4% ABV (tax type code 321) |
      | Beer between 8.5% and 22% ABV (tax type code 331)              |
      | Beer at or above 22.1% ABV (tax type code 341)                 |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 351)     |
      | Draught beer between 3.5% and 8.4% ABV (tax type code 356)     |
      | Draught beer between 1.3% and 3.4% ABV (tax type code 371 SPR) |
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
      | Beer at or above 22.1% ABV (tax type code 341) |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 999.19 litres  |
      | Pure alcohol | 99.1300 litres |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£3,250.47"
    And I should see the following product details
      | Description                                                | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Beer at or above 22.1% ABV (tax type code 341) | 99.1300                      | £32.79                | £3,250.47  | Change |
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
    Then I am presented with the "Declaring Your Wine For Duty"
    And I click continue button on "Declaring Your Wine For Duty"
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
      | Adjustment     | Return period being adjusted | Tax type                                                       | Volume                                      | Duty rate | Duty value |
      | Under-declared | September 2023               | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) | 123.45 litres,5.5000 litres of pure alcohol | £9.27     | £50.98     |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                    | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) | £50.98     | Change Remove |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#Adjustments Journey - Cider - Over-declaration - Without SPR
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
      | Adjustment    | Return period being adjusted | Tax type                                                        | Volume                                       | Duty rate | Duty value |
      | Over-declared | October 2023                 | Non-draught cider between 1.3% and 3.4% ABV (tax type code 312) | 222.22 litres,22.2200 litres of pure alcohol | £9.27     | −£205.97   |
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
      | Adjustment | Return period being adjusted | Original tax type                                              | New tax type                                                       | Volume                                          | Duty rate | Duty value |
      | Repackaged | November 2023                | Draught wine between 1.3% and 3.4% ABV (tax type code 373 SPR) | Non-draught wine between 1.3% and 3.4% ABV (tax type code 363 SPR) | 3,000.75 litres,250.5500 litres of pure alcohol | £11.50    | £425.93    |
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
      | Adjustment | Description | Volume                                          | Duty value |
      | Spoilt     | Spirits     | 3,000.75 litres,250.5500 litres of pure alcohol | −£3,255.55 |
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
      | Adjustment | Return period being adjusted | Tax type                                                                           | Volume                                          | Duty rate | Duty value |
      | Drawback   | October 2023                 | Non-draught other fermented products between 1.3% and 3.4% ABV (tax type code 314) | 3,000.75 litres,250.5500 litres of pure alcohol | £9.27     | −£2,322.59 |
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
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Return Summary Page" "−£123.99"
#Change link functionality - Spirits production
    When I click "Change Spirits production" on "Return Summary Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    When I enter redirect url for "Return Summary Page"
    Then I am presented with the "Return Summary Page" "−£123.99"