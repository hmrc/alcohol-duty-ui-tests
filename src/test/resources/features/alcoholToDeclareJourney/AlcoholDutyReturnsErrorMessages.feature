@Test @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey - Error Messages

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000000208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"

  Scenario Outline: Beer - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'No'
    When I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Declare Alcohol Duty Question Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select yes if you need to declare any alcohol |
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "What Do You Need To Declare Beer Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the beers you need to declare |
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 311),Between 3.5% and 8.4% ABV (tax type code 321),Between 8.5% and 22% ABV (tax type code 331),Exceeding 22.1% ABV (tax type code 341),Between 1.3% and 3.4% ABV (tax type code 351),Between 3.5% and 8.4% ABV (tax type code 356),Between 1.3% and 3.4% ABV (tax type code 361),Between 3.5% and 8.4% ABV (tax type code 366),Between 1.3% and 3.4% ABV (tax type code 371),Between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
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
    Examples:
      | errorMessageHeader |
      | There is a problem |

  Scenario Outline: Beer - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'Yes'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 311),Between 3.5% and 8.4% ABV (tax type code 321),Between 8.5% and 22% ABV (tax type code 331),Exceeding 22.1% ABV (tax type code 341),Between 1.3% and 3.4% ABV (tax type code 351),Between 3.5% and 8.4% ABV (tax type code 356),Between 1.3% and 3.4% ABV (tax type code 361),Between 3.5% and 8.4% ABV (tax type code 366),Between 1.3% and 3.4% ABV (tax type code 371),Between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
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
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of beer to declare         |
      | Enter the total litres of beer             |
      | Enter the litres of pure alcohol in beer   |
      | Enter your Small Producer Relief duty rate |
    When I select radio button "Beer between 1.3% and 3.4% ABV (tax type code 361)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "9999.99" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "89.99" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "19" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    Examples:
      | errorMessageHeader |
      | There is a problem |

  Scenario Outline: Wine - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'No'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    And I click save and continue button on "What Do You Need To Declare Wine Page"
    Then I am presented with the "What Do You Need To Declare Wine Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the wines you need to declare |
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 313),Between 3.5% and 8.4% ABV (tax type code 323),Between 8.5% and 22% ABV (tax type code 333),Exceeding 22.1% ABV (tax type code 343),Between 1.3% and 3.4% ABV (tax type code 353),Between 3.5% and 8.4% ABV (tax type code 358),Between 1.3% and 3.4% ABV (tax type code 363),Between 3.5% and 8.4% ABV (tax type code 368),Between 1.3% and 3.4% ABV (tax type code 373),Between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
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
    Examples:
      | errorMessageHeader |
      | There is a problem |

  Scenario Outline: Wine - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'Yes'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your wine" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Wine Page"
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 313),Between 3.5% and 8.4% ABV (tax type code 323),Between 8.5% and 22% ABV (tax type code 333),Exceeding 22.1% ABV (tax type code 343),Between 1.3% and 3.4% ABV (tax type code 353),Between 3.5% and 8.4% ABV (tax type code 358),Between 1.3% and 3.4% ABV (tax type code 363),Between 3.5% and 8.4% ABV (tax type code 368),Between 1.3% and 3.4% ABV (tax type code 373),Between 3.5% and 8.4% ABV (tax type code 378)" on "What Do You Need To Declare Wine Page"
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
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Wine Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of wine to declare         |
      | Enter the total litres of wine             |
      | Enter the litres of pure alcohol in wine   |
      | Enter your Small Producer Relief duty rate |
    When I select radio button "Wine between 3.5% and 8.4% ABV (tax type code 368)" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "678.99" for "Total litres" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "66.43" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Wine Page"
    And I enter "15.65" for "Duty rate" on "Multiple Small Producer Relief Rate Wine Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Wine Page"
    Then I am presented with the "Check Your Answers SPR Wine Page"
    Examples:
      | errorMessageHeader |
      | There is a problem |

  Scenario Outline: Spirits - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'No'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    And I click save and continue button on "What Do You Need To Declare Spirits Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the spirits you need to declare |
    And I select checkbox "Between 1.3% and 3.4% ABV (tax type code 315),Between 3.5% and 8.4% ABV (tax type code 325),Between 8.5% and 22% ABV (tax type code 335),Exceeding 22.1% ABV (tax type code 345),Between 1.3% and 3.4% ABV (tax type code 355),Between 3.5% and 8.4% ABV (tax type code 360),Between 1.3% and 3.4% ABV (tax type code 365),Between 3.5% and 8.4% ABV (tax type code 370),Between 1.3% and 3.4% ABV (tax type code 375),Between 3.5% and 8.4% ABV (tax type code 380)" on "What Do You Need To Declare Spirits Page"
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
    Examples:
      | errorMessageHeader |
      | There is a problem |

  Scenario Outline: Spirits - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'Yes'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your spirits" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Spirits Page"
    And I select checkbox "Between 1.3% and 3.4% ABV (tax type code 315),Between 3.5% and 8.4% ABV (tax type code 325),Between 8.5% and 22% ABV (tax type code 335),Exceeding 22.1% ABV (tax type code 345),Between 1.3% and 3.4% ABV (tax type code 355),Between 3.5% and 8.4% ABV (tax type code 360),Between 1.3% and 3.4% ABV (tax type code 365),Between 3.5% and 8.4% ABV (tax type code 370),Between 1.3% and 3.4% ABV (tax type code 375),Between 3.5% and 8.4% ABV (tax type code 380)" on "What Do You Need To Declare Spirits Page"
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
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Spirits Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of spirits to declare       |
      | Enter the total litres of spirits           |
      | Enter the litres of pure alcohol in spirits |
      | Enter your Small Producer Relief duty rate  |
    When I select radio button "Spirits between 3.5% and 8.4% ABV (tax type code 380)" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "789.99" for "Total litres" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "55.55" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Spirits Page"
    And I enter "20" for "Duty rate" on "Multiple Small Producer Relief Rate Spirits Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Spirits Page"
    Then I am presented with the "Check Your Answers SPR Spirits Page"
    Examples:
      | errorMessageHeader |
      | There is a problem |

  Scenario Outline: Other Fermented Product - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'No'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the other fermented products you need to declare |
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 314),Between 3.5% and 8.4% ABV (tax type code 324),Between 8.5% and 22% ABV (tax type code 334),Exceeding 22.1% ABV (tax type code 344),Between 1.3% and 3.4% ABV (tax type code 354),Between 3.5% and 8.4% ABV (tax type code 359),Between 1.3% and 3.4% ABV (tax type code 364),Between 3.5% and 8.4% ABV (tax type code 369),Between 1.3% and 3.4% ABV (tax type code 374),Between 3.5% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Wine Page"
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
    Examples:
      | errorMessageHeader |
      | There is a problem |

  Scenario Outline: Other Fermented Product - Alcohol Duty Returns Journey - Error Message Validations - When Multiple SPR is set to 'Yes'
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I select checkbox "Between 1.3% and 3.4% ABV (tax type code 314),Between 3.5% and 8.4% ABV (tax type code 324),Between 8.5% and 22% ABV (tax type code 334),Exceeding 22.1% ABV (tax type code 344),Between 1.3% and 3.4% ABV (tax type code 354),Between 3.5% and 8.4% ABV (tax type code 359),Between 1.3% and 3.4% ABV (tax type code 364),Between 3.5% and 8.4% ABV (tax type code 369),Between 1.3% and 3.4% ABV (tax type code 374),Between 3.5% and 8.4% ABV (tax type code 379)" on "What Do You Need To Declare Wine Page"
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
    And I click save and continue button on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Other Fermented Product Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of other fermented products                  |
      | Enter the total litres of other fermented products           |
      | Enter the litres of pure alcohol in other fermented products |
      | Enter your Small Producer Relief duty rate                   |
    When I select radio button "Other fermented products between 3.5% and 8.4% ABV (tax type code 369)" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "999.99" for "Total litres" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "99.99" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I enter "20" for "Duty rate" on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Other Fermented Product Page"
    Then I am presented with the "Check Your Answers SPR Other Fermented Product Page"
    Examples:
      | errorMessageHeader |
      | There is a problem |