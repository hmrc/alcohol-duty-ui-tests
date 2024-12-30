@AllTests @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey - Error Messages

  Background: : Common Steps - Alcohol Duty Returns Journey
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

  @Test
  Scenario Outline: Beer - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'No'
    When I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Declare Alcohol Duty Question Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select yes if you need to declare any alcoholic products |
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    When I click on "Declare beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "What Do You Need To Declare Beer Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the beers you need to declare |
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of beer           |
      | Enter the litres of pure alcohol in beer |
      | Enter the total litres of beer           |
      | Enter the litres of pure alcohol in beer |
      | Enter the total litres of beer           |
      | Enter the litres of pure alcohol in beer |
      | Enter the total litres of beer           |
      | Enter the litres of pure alcohol in beer |
      | Enter the total litres of beer           |
      | Enter the litres of pure alcohol in beer |
      | Enter the total litres of beer           |
      | Enter the litres of pure alcohol in beer |
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
    And I enter "699.45090" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I enter "66.8909090" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Litres of beer must be a number to 2 decimal places         |
      | Litres of pure alcohol must be a number to 4 decimal places |
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I enter "66.8909" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select yes if you have more than one Small Producer Relief duty rate to declare |
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Single Small Producer Relief Rate Beer Page"
    Then I am presented with the "Single Small Producer Relief Rate Beer Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of beer             |
      | Enter the litres of pure alcohol in beer   |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of beer             |
      | Enter the litres of pure alcohol in beer   |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of beer             |
      | Enter the litres of pure alcohol in beer   |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of beer             |
      | Enter the litres of pure alcohol in beer   |
      | Enter your Small Producer Relief duty rate |
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
    Examples:
      | errorMessageHeader |
      | There is a problem |

  @Test
  Scenario Outline: Beer - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'Yes'
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
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of beer                    |
      | Enter the total litres of beer             |
      | Enter the litres of pure alcohol in beer   |
      | Enter your Small Producer Relief duty rate |
    When I select radio button "Non-draught beer between 1.3% and 3.4% ABV (361 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "9999.99" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "89.9900" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "19" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    Examples:
      | errorMessageHeader |
      | There is a problem |

  @AllTests
  Scenario Outline: Cider - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'No'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    When I click on "Declare cider" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "What Do You Need To Declare Cider Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the ciders you need to declare |
    When I "select" checkbox "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369),Cider between 1.3% and 3.4% ABV (tax type code 372),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Cider Page"
    And I click save and continue button on "What Do You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page"
    And I click save and continue button on "How Much You Need To Declare Cider Page"
    Then I am presented with the "How Much You Need To Declare Cider Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of cider           |
      | Enter the litres of pure alcohol in cider |
      | Enter the total litres of cider           |
      | Enter the litres of pure alcohol in cider |
      | Enter the total litres of cider           |
      | Enter the litres of pure alcohol in cider |
      | Enter the total litres of cider           |
      | Enter the litres of pure alcohol in cider |
      | Enter the total litres of cider           |
      | Enter the litres of pure alcohol in cider |
      | Enter the total litres of cider           |
      | Enter the litres of pure alcohol in cider |
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
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Cider Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select yes if you have more than one Small Producer Relief duty rate to declare |
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page"
    When I click save and continue button on "Single Small Producer Relief Rate Cider Page"
    Then I am presented with the "Single Small Producer Relief Rate Cider Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of cider            |
      | Enter the litres of pure alcohol in cider  |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of cider            |
      | Enter the litres of pure alcohol in cider  |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of cider            |
      | Enter the litres of pure alcohol in cider  |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of cider            |
      | Enter the litres of pure alcohol in cider  |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of cider            |
      | Enter the litres of pure alcohol in cider  |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of cider            |
      | Enter the litres of pure alcohol in cider  |
      | Enter your Small Producer Relief duty rate |
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
    Examples:
      | errorMessageHeader |
      | There is a problem |

  @AllTests
  Scenario Outline: Cider - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'Yes'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
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
    When I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Cider Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of cider                   |
      | Enter the total litres of cider            |
      | Enter the litres of pure alcohol in cider  |
      | Enter your Small Producer Relief duty rate |
    When I select radio button "Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR)" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "7999.99" for "Total litres" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "77.9900" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Cider Page"
    And I enter "20.99" for "Duty rate" on "Multiple Small Producer Relief Rate Cider Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Cider Page"
    Then I am presented with the "Check Your Answers SPR Cider Page"
    When I click continue button on "Check Your Answers SPR Cider Page"
    Then I am presented with the "Multiple SPR List Question Cider Page"
    When I select radio button "No" on "Multiple SPR List Question Cider Page"
    And I click save and continue button on "Multiple SPR List Question Cider Page"
    Then I am presented with the "Check Your Answers Returns Cider Page"
    Examples:
      | errorMessageHeader |
      | There is a problem |

  @AllTests
  Scenario Outline: Wine - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'No'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    When I click on "Declare wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "What Do You Need To Declare Wine Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the wines you need to declare |
    When I "select" checkbox "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363),Wine between 3.5% and 8.4% ABV (tax type code 368),Wine between 1.3% and 3.4% ABV (tax type code 373),Wine between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page"
    And I click save and continue button on "How Much You Need To Declare Wine Page"
    Then I am presented with the "How Much You Need To Declare Wine Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of wine           |
      | Enter the litres of pure alcohol in wine |
      | Enter the total litres of wine           |
      | Enter the litres of pure alcohol in wine |
      | Enter the total litres of wine           |
      | Enter the litres of pure alcohol in wine |
      | Enter the total litres of wine           |
      | Enter the litres of pure alcohol in wine |
      | Enter the total litres of wine           |
      | Enter the litres of pure alcohol in wine |
      | Enter the total litres of wine           |
      | Enter the litres of pure alcohol in wine |
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
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Wine Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select yes if you have more than one Small Producer Relief duty rate to declare |
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page"
    And I click save and continue button on "Single Small Producer Relief Rate Wine Page"
    Then I am presented with the "Single Small Producer Relief Rate Wine Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of wine             |
      | Enter the litres of pure alcohol in wine   |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of wine             |
      | Enter the litres of pure alcohol in wine   |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of wine             |
      | Enter the litres of pure alcohol in wine   |
      | Enter your Small Producer Relief duty rate |
      | Enter the total litres of wine             |
      | Enter the litres of pure alcohol in wine   |
      | Enter your Small Producer Relief duty rate |
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
    Examples:
      | errorMessageHeader |
      | There is a problem |

  @AllTests
  Scenario Outline: Wine - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'Yes'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
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
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of wine                    |
      | Enter the total litres of wine             |
      | Enter the litres of pure alcohol in wine   |
      | Enter your Small Producer Relief duty rate |
    When I select radio button "Non-draught wine between 3.5% and 8.4% ABV (368 SPR)" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "678.99" for "Total litres" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "66.4300" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "15.65" for "Duty rate" on "Multiple Small Producer Relief Rate Wine Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers SPR Wine Page"
    Examples:
      | errorMessageHeader |
      | There is a problem |

  @AllTests
  Scenario Outline: Spirits - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'No'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    When I click on "Declare spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the spirits you need to declare |
    When I "select" checkbox "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365),Spirits between 3.5% and 8.4% ABV (tax type code 370),Spirits between 1.3% and 3.4% ABV (tax type code 375),Spirits between 3.5% and 8.4% ABV (tax type code 380)" on "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page"
    And I click save and continue button on "How Much You Need To Declare Spirits Page"
    Then I am presented with the "How Much You Need To Declare Spirits Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
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
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select yes if you have more than one Small Producer Relief duty rate to declare |
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page"
    And I click save and continue button on "Single Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Single Small Producer Relief Rate Spirits Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter your Small Producer Relief duty rate  |
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter your Small Producer Relief duty rate  |
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter your Small Producer Relief duty rate  |
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter your Small Producer Relief duty rate  |
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
    Examples:
      | errorMessageHeader |
      | There is a problem |

  @AllTests
  Scenario Outline: Spirits - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'Yes'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
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
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Spirits Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of spirits                  |
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter your Small Producer Relief duty rate  |
    When I select radio button "Draught spirits between 3.5% and 8.4% ABV (380 SPR)" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "789.99" for "Total litres" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "55.5500" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "20" for "Duty rate" on "Multiple Small Producer Relief Rate Spirits Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers SPR Spirits Page"
    Examples:
      | errorMessageHeader |
      | There is a problem |

  @AllTests
  Scenario Outline: Other Fermented Product - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'No'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    When I click on "Declare other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the other fermented products you need to declare |
    When I "select" checkbox "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364),Other fermented products between 3.5% and 8.4% ABV (tax type code 369),Other fermented products between 1.3% and 3.4% ABV (tax type code 374),Other fermented products between 3.5% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page"
    When I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
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
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select yes if you have more than one Small Producer Relief duty rate to declare |
    When I select radio button "No" on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
    Then I am presented with the "Single Small Producer Relief Rate Other Fermented Product Page"
    And I click save and continue button on "Single Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Single Small Producer Relief Rate Other Fermented Product Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter your Small Producer Relief duty rate                   |
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter your Small Producer Relief duty rate                   |
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter your Small Producer Relief duty rate                   |
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter your Small Producer Relief duty rate                   |
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
    Examples:
      | errorMessageHeader |
      | There is a problem |

  @AllTests
  Scenario Outline: Other Fermented Product - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'Yes'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
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
    And I click save and continue button on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Other Fermented Product Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of other fermented products                  |
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter your Small Producer Relief duty rate                   |
    When I select radio button "Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR)" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "999.99" for "Total litres" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "99.9900" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "20" for "Duty rate" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers SPR Other Fermented Product Page"
    Examples:
      | errorMessageHeader |
      | There is a problem |