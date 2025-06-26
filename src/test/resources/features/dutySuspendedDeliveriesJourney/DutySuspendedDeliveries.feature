@Test @AllTests @DutySuspendedDeliveries
Feature: Alcohol Duty Return - Duty Suspended Deliveries - Change Link Functionality

  Scenario:1. Declare Duty Suspended Deliveries - Verify 'Change' links at Check your answer page
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
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
    When I click "Change total net quantity of duty suspended beer" on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Duty Suspended Beer Page" with new url
    When I enter "3000.75" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "250.55" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    When I click "Change total net quantity of pure alcohol in your duty suspended cider" on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Duty Suspended Cider Page" with new url
    When I enter "1500.35" for "Total Cider" on "Duty Suspended Cider Page"
    And I enter "300.55" for "Pure Alcohol In Cider" on "Duty Suspended Cider Page"
    And I click save and continue button on "Duty Suspended Cider Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    When I click "Change total net quantity of pure alcohol in your duty suspended wine" on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Duty Suspended Wine Page" with new url
    When I enter "2800.35" for "Total Wine" on "Duty Suspended Wine Page"
    And I enter "160.65" for "Pure Alcohol In Wine" on "Duty Suspended Wine Page"
    And I click save and continue button on "Duty Suspended Wine Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    When I click "Change total net quantity of pure alcohol in your duty suspended spirits" on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Duty Suspended Spirits Page" with new url
    When I enter "7800.35" for "Total Spirits" on "Duty Suspended Spirits Page"
    And I enter "460.65" for "Pure Alcohol In Spirits" on "Duty Suspended Spirits Page"
    And I click save and continue button on "Duty Suspended Spirits Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    When I click "Change total net quantity of pure alcohol in your duty suspended other fermented products" on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Duty Suspended Other Fermented Products Page" with new url
    When I enter "8800.35" for "Total Other Fermented Products" on "Duty Suspended Other Fermented Products Page"
    And I enter "560.65" for "Pure Alcohol In Other Fermented Products" on "Duty Suspended Other Fermented Products Page"
    And I click save and continue button on "Duty Suspended Other Fermented Products Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    And I should see the following details
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in this beer | Total net quantity of duty suspended cider | Total net quantity of pure alcohol in this cider | Total net quantity of duty suspended wine | Total net quantity of pure alcohol in this wine | Total net quantity of duty suspended spirits | Total net quantity of pure alcohol in these spirits | Total net quantity of duty suspended other fermented products | Total net quantity of pure alcohol in these other fermented products |
      | 3,000.75 litres                           | 250.5500 litres                                 | 1,500.35 litres                            | 300.5500 litres                                  | 2,800.35 litres                           | 160.6500 litres                                 | 7,800.35 litres                              | 460.6500 litres                                     | 8,800.35 litres                                               | 560.6500 litres                                                      |

#  Scenario:2. Report Duty Suspended Deliveries - Verify 'Change' links at Check your answer page
#    Given I cleared the data for the service
#    When I navigate to the "Auth Login Stub Page"
#    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
#    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
#    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
#    And I click submit button on "Auth Login Stub Page"
#    Then I am presented with the "Before You Start Page"
#    When I click continue button on "Before You Start Page"
#    Then I am presented with the "Task List Page"
#    When I click on "Tell us if you have delivered or received finished products in duty suspense" hyperlink on "Task List Page"
#    Then I am presented with the "Report Duty Suspended Deliveries Page"
#    When I select radio button "Yes" on "Report Duty Suspended Deliveries Page"
#    And I click save and continue button on "Report Duty Suspended Deliveries Page"
#    Then I am presented with the "SelectFinishedAlcoholDeliveredReceivedPage"
#    When I "select" checkbox "Beer" on "SelectFinishedAlcoholDeliveredReceivedPage"
#    And I click save and continue button on "SelectFinishedAlcoholDeliveredReceivedPage"
#    And I enter "999.99" for "Total Litres Delivered Inside UK" on "Quantities Of Duty Suspended Beer Page"
#    And I enter "88.1234" for "Pure Alcohol Delivered Inside UK" on "Quantities Of Duty Suspended Beer Page"
#    And I enter "999.99" for "Total Litres Delivered Outside UK" on "Quantities Of Duty Suspended Beer Page"
#    And I enter "88.1234" for "Pure Alcohol Delivered Outside UK" on "Quantities Of Duty Suspended Beer Page"
#    And I enter "999.99" for "Total Litres Received" on "Quantities Of Duty Suspended Beer Page"
#    And I enter "88.1234" for "Pure Alcohol Received" on "Quantities Of Duty Suspended Beer Page"
#    And I click save and continue button on "Quantities Of Duty Suspended Beer Page"
#    Then I am presented with the "Duty Suspended Deliveries Calculation Page"
#    And I verify "Your total net volume of beer is 999.99 litres" on "Duty Suspended Deliveries Calculation Page"
#    And I verify "Your total net volume of pure alcohol is 88.1234 litres" of pure alcohol on "Duty Suspended Deliveries Calculation Page"
#    And I click save and continue button on "Duty Suspended Deliveries Calculation Page"
#    Then I am presented with the "Duty Suspense Deliveries Check Your Answers Page"
#    And I should see the following details
#      | Type of alcohol | Beer                                                          |
#      | Beer            | 999.99 litres of total product,88.1234 litres of pure alcohol |
#    And I click continue button on "Duty Suspense Deliveries Check Your Answers Page"
#
