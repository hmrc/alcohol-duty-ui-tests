@AllTests @AlcoholToDeclare
Feature: Alcohol Duty Returns Journey with Limited Regime Approvals

  Background: : Common Steps - Alcohol Duty Returns Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"

  @Test
  Scenario:1. Alcohol Duty Returns Journey - user with Wine & Other Fermented Products regime approval
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000111208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    And I should see the following alcohol types
      | Wine                     |
      | Other fermented products |
    When I "select" checkbox "Wine,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare wine    | Declare other fermented products | Tell us if you have adjustments to declare | Tell us if you have delivered or received finished products in duty suspense |
      | Completed                                         | Not yet started | Not yet started                  | Not yet started                            | Not yet started                                                              |
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
    #Adjustment journey declared to No
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "No" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Task List Page"
    #Duty suspended journey
    When I click on "Tell us if you have delivered or received finished products in duty suspense" hyperlink on "Task List Page"
    Then I am presented with the "Report Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Report Duty Suspended Deliveries Page"
    And I click save and continue button on "Report Duty Suspended Deliveries Page"
    Then I am presented with the "SelectFinishedAlcoholDeliveredReceivedPage"
    When I "select" checkbox "Wine" on "SelectFinishedAlcoholDeliveredReceivedPage"
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
    #Return summary page
    When I click on "Check duty payable and send your return" hyperlink on "Task List Page"
    Then I am presented with the "Return Summary Page" "£661.93"
    And I should see the following details
      | Wine declared | Other fermented products declared | Adjustments to previous returns | Duty suspended alcohol |
      | £341.63       | £320.30                           | Nil                             | Declared               |
    And I verify 4 change links present on "Return Summary Page"
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"
    And the page source contains "You need to pay £661.93"

  @Test
  Scenario:2. Alcohol Duty Returns Journey - user with Beer & Spirits regime approval
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000170208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    And I should see the following alcohol types
      | Beer    |
      | Spirits |
    When I "select" checkbox "Beer,Spirits" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer    | Declare spirits | Tell us if you have adjustments to declare | Tell us if you have delivered or received finished products in duty suspense | Tell us about spirits produced in the past three months |
      | Completed                                         | Not yet started | Not yet started | Not yet started                            | Not yet started                                                              | Not yet started                                         |
#Beer
    When I click on "Declare beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.5555" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 945.55 litres  |
      | Pure alcohol | 55.5555 litres |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£533.88"
    And I should see the following product details
      | Description                                                    | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) | 55.5555                      | £9.61                 | £533.88    | Change |
    When I click save and continue button on "Duty Due Beer Page"
    Then I am presented with the "Task List Page"
    #Spirits
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
    #Adjustment journey- nothing to declare
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "No" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Task List Page"
    #Duty suspended journey
    When I click on "Tell us if you have delivered or received finished products in duty suspense" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Beer Page"
    When I enter "2000.75" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "150.5500" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Spirits Page"
    When I enter "2100.75" for "Total Spirits" on "Duty Suspended Spirits Page"
    And I enter "160.5500" for "Pure Alcohol In Spirits" on "Duty Suspended Spirits Page"
    And I click save and continue button on "Duty Suspended Spirits Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    And I should see the following details
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in this beer | Total net quantity of duty suspended spirits | Total net quantity of pure alcohol in these spirits |
      | 2,000.75 litres                           | 150.5500 litres                                 | 2,100.75 litres                              | 160.5500 litres                                     |
    When I click continue button on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Task List Page"
    # Spirits and ingredients- nothing to declare
    When I click on "Tell us about spirits produced in the past three months" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "No" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
    #Return summary page
    When I click on "Check duty payable and send your return" hyperlink on "Task List Page"
    Then I am presented with the "Return Summary Page" "£1,387.24"
    And I should see the following details
      | Beer declared | Spirits declared | Adjustments to previous returns | Duty suspended alcohol | Spirits production |
      | £533.88       | £853.36          | Nil                             | Declared               | Nothing to declare |
    And I verify 5 change links present on "Return Summary Page"
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"
    And the page source contains "You need to pay £1,387.24"

  @Test
  Scenario:3. Alcohol Duty Returns Journey - user with only Beer regime approval
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000178208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer    | Tell us if you have adjustments to declare | Tell us if you have delivered or received finished products in duty suspense |
      | Completed                                         | Not yet started | Not yet started                            | Not yet started                                                              |
    #Beer
    When I click on "Declare beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.5555" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Check Your Answers Returns Beer Page"
    And I should see the following text on the page
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 945.55 litres  |
      | Pure alcohol | 55.5555 litres |
    When I click save and continue button on "Check Your Answers Returns Beer Page"
    Then I am presented with the "Duty Due Beer Page" "£533.88"
    And I should see the following product details
      | Description                                                    | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught beer between 1.3% and 3.4% ABV (tax type code 311) | 55.5555                      | £9.61                 | £533.88    | Change |
    When I click save and continue button on "Duty Due Beer Page"
    Then I am presented with the "Task List Page"
    #Adjustment journey- nothing to declare
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "No" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Task List Page"
    #Duty suspended journey
    When I click on "Tell us if you have delivered or received finished products in duty suspense" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Beer Page"
    When I enter "2000.75" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "150.5500" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    And I should see the following details
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in this beer |
      | 2,000.75 litres                           | 150.5500 litres                                 |
    When I click continue button on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Task List Page"
    #Return summary page
    When I click on "Check duty payable and send your return" hyperlink on "Task List Page"
    Then I am presented with the "Return Summary Page" "£533.88"
    And I should see the following details
      | Beer declared | Adjustments to previous returns | Duty suspended alcohol |
      | £533.88       | Nil                             | Declared               |
    And I verify 3 change links present on "Return Summary Page"
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"
    And the page source contains "You need to pay £533.88"

  Scenario:4. Alcohol Duty Returns Journey - user with only Fermented Product approval
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000115208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare other fermented products | Tell us if you have adjustments to declare | Tell us if you have delivered or received finished products in duty suspense |
      | Completed                                         | Not yet started                  | Not yet started                            | Not yet started                                                              |
    #Declare other fermented products
    When I click on "Declare other fermented products" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Other Fermented Product Page"
    When I "select" checkbox "Other fermented products at or above 22.1% ABV (tax type code 344)" on "What Do You Need To Declare Other Fermented Product Page"
    And I click save and continue button on "What Do You Need To Declare Other Fermented Product Page"
    Then I am presented with the "How Much You Need To Declare Other Fermented Product Page"
    When I enter "945.55" for "Standard other fermented products at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I enter "55.5555" for "Standard other fermented products at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Other Fermented Product Page" at "first" input box
    And I click save and continue button on "How Much You Need To Declare Other Fermented Product Page"
    Then I am presented with the "Check Your Answers Returns Other Fermented Product Page"
    And I should see the following text on the page
      | Non-draught other fermented products at or above 22.1% ABV (tax type code 344) |
    And I check the page source for the following key-value pairs:
      | key          | value          |
      | Total volume | 945.55 litres  |
      | Pure alcohol | 55.5555 litres |
    When I click save and continue button on "Check Your Answers Returns Other Fermented Product Page"
    Then I am presented with the "Duty Due Other Fermented Product Page" "£1,821.66"
    And I should see the following product details
      | Description                                                                    | Litres of pure alcohol (LPA) | Duty rate (per litre) | Duty value | Action |
      | Non-draught other fermented products at or above 22.1% ABV (tax type code 344) | 55.5555                      | £32.79                | £1,821.66  | Change |
    When I click save and continue button on "Duty Due Other Fermented Product Page"
    Then I am presented with the "Task List Page"
    #Adjustment journey- nothing to declare
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "No" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Task List Page"
    #Duty suspended journey
    When I click on "Tell us if you have delivered or received finished products in duty suspense" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Other Fermented Products Page"
    When I enter "2000.75" for "Total Other Fermented Products" on "Duty Suspended Other Fermented Products Page"
    And I enter "150.5500" for "Pure Alcohol In Other Fermented Products" on "Duty Suspended Other Fermented Products Page"
    And I click save and continue button on "Duty Suspended Other Fermented Products Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    And I should see the following details
      | Total net quantity of duty suspended other fermented products | Total net quantity of pure alcohol in these other fermented products |
      | 2,000.75 litres                                               | 150.5500 litres                                                      |
    When I click continue button on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Task List Page"
    #Return summary page
    When I click on "Check duty payable and send your return" hyperlink on "Task List Page"
    Then I am presented with the "Return Summary Page" "£1,821.66"
    And I should see the following details
      | Other fermented products declared | Adjustments to previous returns | Duty suspended alcohol |
      | £1,821.66                         | Nil                             | Declared               |
    And I verify 3 change links present on "Return Summary Page"
    When I click on Agree and send return button "Return Summary Page"
    Then I am presented with the "Return Submitted Page"
    And the page source contains "You need to pay £1,821.66"