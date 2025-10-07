@Test @AllTests @DutySuspendedDeliveries
Feature: Alcohol Duty Returns - Declare Duty Suspended Deliveries - Error Messages

  Scenario Outline: Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - Error message validations
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
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if you need to tell us about any duty suspended alcohol"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Beer Page"
    When I enter "2000.7509" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "150.55555" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Beer Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Total net quantity of beer must be a number up to 2 decimal places         |
      | Total net quantity of pure alcohol must be a number up to 4 decimal places |
    When I enter "2000.75" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "150.55" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Cider Page"
    And I enter "9999.99" for "Total Cider" on "Duty Suspended Cider Page"
    And I click save and continue button on "Duty Suspended Cider Page"
    Then I am presented with the "Duty Suspended Cider Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the total net quantity of pure alcohol in cider"
    When I enter "99.19" for "Pure Alcohol In Cider" on "Duty Suspended Cider Page"
    And I click save and continue button on "Duty Suspended Cider Page"
    Then I am presented with the "Duty Suspended Wine Page"
    And I enter "99.19" for "Pure Alcohol In Wine" on "Duty Suspended Wine Page"
    When I click save and continue button on "Duty Suspended Wine Page"
    Then I am presented with the "Duty Suspended Wine Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the total net quantity of wine"
    When I enter "9999.99" for "Total Wine" on "Duty Suspended Wine Page"
    And I click save and continue button on "Duty Suspended Wine Page"
    Then I am presented with the "Duty Suspended Spirits Page"
    And I enter "2100.75" for "Total Spirits" on "Duty Suspended Spirits Page"
    And I click save and continue button on "Duty Suspended Spirits Page"
    Then I am presented with the "Duty Suspended Spirits Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the total net quantity of pure alcohol in spirits"
    When I enter "160.55" for "Pure Alcohol In Spirits" on "Duty Suspended Spirits Page"
    And I click save and continue button on "Duty Suspended Spirits Page"
    Then I am presented with the "Duty Suspended Other Fermented Products Page"
    And I enter "88.88" for "Pure Alcohol In Other Fermented Products" on "Duty Suspended Other Fermented Products Page"
    And I click save and continue button on "Duty Suspended Other Fermented Products Page"
    Then I am presented with the "Duty Suspended Other Fermented Products Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the total net quantity of other fermented products"
    When I enter "8888.88" for "Total Other Fermented Products" on "Duty Suspended Other Fermented Products Page"
    And I click save and continue button on "Duty Suspended Other Fermented Products Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"

    Examples:
      | errorMessageHeader |
      | There is a problem |

#  Scenario Outline: Alcohol Duty Returns - Declare Duty Suspense Deliveries Page - Error message validations
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
#    And I click save and continue button on "Report Duty Suspended Deliveries Page"
#    Then I am presented with the "Report Duty Suspended Deliveries Page" error page
#    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if you have delivered or received finished alcoholic products under duty suspense"
#    When I select radio button "Yes" on "Report Duty Suspended Deliveries Page"
#    And I click save and continue button on "Report Duty Suspended Deliveries Page"
#    Then I am presented with the "SelectFinishedAlcoholDeliveredReceivedPage"
#    And I click save and continue button on "SelectFinishedAlcoholDeliveredReceivedPage"
#    Then I am presented with the "SelectFinishedAlcoholDeliveredReceivedPage" error page
#    And I should see the "<errorMessageHeader>" and below error messages
#      | Select the finished alcoholic products you delivered or received under duty suspense       |
#    When I "select" checkbox "Beer" on "SelectFinishedAlcoholDeliveredReceivedPage"
#    And I click save and continue button on "SelectFinishedAlcoholDeliveredReceivedPage"
#    Then I am presented with the "Quantities Of Duty Suspended Beer Page"
#    And I click save and continue button on "Quantities Of Duty Suspended Beer Page"
#    Then I am presented with the "Quantities Of Duty Suspended Beer Page" error page
#    And I should see the "<errorMessageHeader>" and below error messages
#      | Enter the total litres of finished beer delivered inside the UK. Enter 0 if none.      |
#      | Enter the litres of pure alcohol delivered inside the UK. Enter 0 if none.             |
#      | Enter the total litres of finished beer delivered outside the UK. Enter 0 if none.     |
#      | Enter the litres of pure alcohol delivered outside the UK. Enter 0 if none.            |
#      | Enter the total litres of finished beer received under duty suspense. Enter 0 if none. |
#      | Enter the litres of pure alcohol received under duty suspense. Enter 0 if none.        |
#    And I enter "999.99" for "Total Litres Delivered Inside UK" on "Quantities Of Duty Suspended Beer Page"
#    And I enter "88.1234" for "Pure Alcohol Delivered Inside UK" on "Quantities Of Duty Suspended Beer Page"
#    And I enter "999.99" for "Total Litres Delivered Outside UK" on "Quantities Of Duty Suspended Beer Page"
#    And I enter "88.1234" for "Pure Alcohol Delivered Outside UK" on "Quantities Of Duty Suspended Beer Page"
#    And I enter "999.99" for "Total Litres Received" on "Quantities Of Duty Suspended Beer Page"
#    And I enter "88.1234" for "Pure Alcohol Received" on "Quantities Of Duty Suspended Beer Page"
#    And I click save and continue button on "Quantities Of Duty Suspended Beer Page"
#    Then I am presented with the "Duty Suspended Deliveries Calculation Page"
#    And I click save and continue button on "Duty Suspended Deliveries Calculation Page"
#    Then I am presented with the "Duty Suspense Deliveries Check Your Answers Page"
#    And I click continue button on "Duty Suspense Deliveries Check Your Answers Page"
#    Examples:
#      | errorMessageHeader |
#      | There is a problem |
