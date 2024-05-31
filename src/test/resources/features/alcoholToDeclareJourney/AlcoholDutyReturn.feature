@Test @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey - Beer

  Background: : Common Steps - Alcohol Duty Returns Journey - Beer
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000000208" on "Auth Login Stub Page"
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
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 311),Between 3.5% and 8.4% ABV (tax type code 321),Between 8.5% and 22% ABV (tax type code 331),Exceeding 22.1% ABV (tax type code 341),Between 1.3% and 3.4% ABV (tax type code 351),Between 3.5% and 8.4% ABV (tax type code 356),Between 1.3% and 3.4% ABV (tax type code 361),Between 3.5% and 8.4% ABV (tax type code 366),Between 1.3% and 3.4% ABV (tax type code 371),Between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.2% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "55.55" for "Standard beer between 1.2% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "77.55" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.34" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "999.19" for "Standard beer exceeding 22% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "99.13" for "Standard beer exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "887.54" for "Draught beer between 1.2% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.44" for "Draught beer between 1.2% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
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

  @ZAP @a11y
  Scenario: Beer - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'Yes'
    When I click on "Tell us about your beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 311),Between 3.5% and 8.4% ABV (tax type code 321),Between 8.5% and 22% ABV (tax type code 331),Exceeding 22.1% ABV (tax type code 341),Between 1.3% and 3.4% ABV (tax type code 351),Between 3.5% and 8.4% ABV (tax type code 356),Between 1.3% and 3.4% ABV (tax type code 361),Between 3.5% and 8.4% ABV (tax type code 366),Between 1.3% and 3.4% ABV (tax type code 371),Between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.2% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "55.55" for "Standard beer between 1.2% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "77.55" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.34" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "999.19" for "Standard beer exceeding 22% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "99.13" for "Standard beer exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "887.54" for "Draught beer between 1.2% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.44" for "Draught beer between 1.2% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page"
    And I enter "66.89" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page"
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page"
    When I select radio button "Beer between 1.3% and 3.4% ABV (tax type code 361)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "9999.99" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "89.99" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "19" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers Beer Page"


  @ZAP @a11y
  Scenario: Cider - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'No'
    When I click on "Tell us about your cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Between 1.3% and 3.4% ABV (tax type code 362),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369),Between 1.3% and 3.4% ABV (tax type code 372),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much Cider You Need To Declare Page"

  @ZAP @a11y
  Scenario: Cider - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'Yes'
    When I click on "Tell us about your cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Between 1.3% and 3.4% ABV (tax type code 362),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369),Between 1.3% and 3.4% ABV (tax type code 372),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much Cider You Need To Declare Page"


  @ZAP @a11y
  Scenario: Wine - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'No'
    When I click on "Tell us about your wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 313),Between 3.5% and 8.4% ABV (tax type code 323),Between 8.5% and 22% ABV (tax type code 333),Exceeding 22% ABV (tax type code 343),Between 1.3% and 3.4% ABV (tax type code 353),Between 3.5% and 8.4% ABV (tax type code 358),Between 1.3% and 3.4% ABV (tax type code 363),Between 3.5% and 8.4% ABV (tax type code 368),Between 1.3% and 3.4% ABV (tax type code 373),Between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.2% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "35.55" for "Standard wine between 1.2% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "88.88" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "22.22" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "990.01" for "Standard wine exceeding 22% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "82.22" for "Standard wine exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "895.22" for "Draught wine between 1.2% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "22.33" for "Draught wine between 1.2% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "569.33" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "24.55" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    When I select radio button "No" on "Multiple Small Producer Relief Question Wine Page"
    And I click save and continue button on "Multiple Small Producer Relief Question Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page "
    When I enter "888.88" for "Non-draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page "
    And I enter "99.45" for "Non-draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page "
    And I enter "15" for "Non-draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page "
    And I enter "776.45" for "Non-draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page "
    And I enter "78.9" for "Non-draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page "
    And I enter "18" for "Non-draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page "
    And I enter "776.89" for "Draught wine between 1.3% and 3.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page "
    And I enter "99.99" for "Draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page "
    And I enter "15" for "Draught wine between 1.3% and 3.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page "
    And I enter "889.65" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "Single Small Producer Relief Rate Wine Page "
    And I enter "66.54" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" on "Single Small Producer Relief Rate Wine Page "
    And I enter "20" for "Draught wine between 3.5% and 8.4% ABV - SPR Rate" on "Single Small Producer Relief Rate Wine Page "
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page "

  @ZAP @a11y
  Scenario: Wine - Alcohol Duty Returns Journey - Happy Path - When Multiple SPR is set to 'Yes'
    When I click on "Tell us about your wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 313),Between 3.5% and 8.4% ABV (tax type code 323),Between 8.5% and 22% ABV (tax type code 333),Exceeding 22% ABV (tax type code 343),Between 1.3% and 3.4% ABV (tax type code 353),Between 3.5% and 8.4% ABV (tax type code 358),Between 1.3% and 3.4% ABV (tax type code 363),Between 3.5% and 8.4% ABV (tax type code 368),Between 1.3% and 3.4% ABV (tax type code 373),Between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    When I enter "1234.55" for "Standard wine between 1.2% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "35.55" for "Standard wine between 1.2% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "3698.52" for "Standard wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "88.88" for "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "8974.23" for "Standard wine between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "22.22" for "Standard wine between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "990.01" for "Standard wine exceeding 22% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "82.22" for "Standard wine exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "895.22" for "Draught wine between 1.2% and 3.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "22.33" for "Draught wine between 1.2% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    And I enter "569.33" for "Draught wine between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Wine Page"
    And I enter "24.55" for "Draught wine between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Wine Page"
    When I select radio button "Yes" on "Multiple Small Producer Relief Question Wine Page"
    And I click save and continue button on "Multiple Small Producer Relief Question Wine Page"
    Then I am presented with the "Wine Multiple Small Producer Relief Rate Page"
#the above page is yet to be developed


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


