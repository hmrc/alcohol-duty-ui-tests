@Test @AllTests @AdjustmentsErrorMessage
Feature: Adjustments Journey - Error Message Validations

  Background: : Common Steps - Adjustments Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"

  @UITests
  Scenario Outline: Adjustments Journey - Error Message Validations
#    Error message validation for Beer - Under-declaration Flow starts here
    When I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Declare Adjustment Question Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select yes if you have adjustments to declare |
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"
    When I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Adjustment Type Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of adjustment |
    When I select radio button "Under-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Page" "Under-declaration"
    When I click save and continue button on "Adjustment Return Date Page"
    Then I am presented with the "Adjustment Return Date Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the return period you need to adjust |
    When I enter month "09" and year "2023" on "Adjustment Return Date Page"
    And I click save and continue button on "Adjustment Return Date Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Tax Type Code Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the tax type code |
    When I enter "371" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Volume With Spr Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres                     |
      | Enter the litres of pure alcohol           |
      | Enter your Small Producer Relief duty rate |
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    When I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment List Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select yes if you have another adjustment to declare |
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#   Error message validation for Cider - Over-declaration Flow starts here
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Over-declaration"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "372" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    When I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Volume With Spr Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres           |
      | Enter the litres of pure alcohol |
    When I enter "3000.7509" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.555555" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Volume With Spr Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Total litres must be a number to 2 decimal places           |
      | Litres of pure alcohol must be a number to 4 decimal places |
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#   Error message validation for Wine - Repackaged draught products starts here
    When I select radio button "Repackaged draught products" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Repackaged draught products"
    When I enter month "11" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code For Repackaged Page"
    When I enter "373" on "Adjustment Tax Type Code For Repackaged Page"
    And I click save and continue button on "Adjustment Tax Type Code For Repackaged Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    When I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Volume With Spr Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres           |
      | Enter the litres of pure alcohol |
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
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
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#   Error message validation for Spirits - Spoilt starts here
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Spoilt Alcohol Type Page"
    And I click save and continue button on "Spoilt Alcohol Type Page"
    Then I am presented with the "Spoilt Alcohol Type Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of alcoholic product you are declaring spoilt |
    When I select radio button "Spirits" on "Spoilt Alcohol Type Page"
    And I click save and continue button on "Spoilt Alcohol Type Page"
    Then I am presented with the "Spoilt Alcohol Volume Page"
    And I click save and continue button on "Spoilt Alcohol Volume Page"
    Then I am presented with the "Spoilt Alcohol Volume Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of spoilt alcoholic product |
      | Enter the litres of pure alcohol                   |
      | Enter the amount of duty paid                      |
    When I enter "3000.75" for "Total Litres" on "Spoilt Alcohol Volume Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Spoilt Alcohol Volume Page"
    And I enter "3255.55" for "Duty Paid" on "Spoilt Alcohol Volume Page"
    And I click save and continue button on "Spoilt Alcohol Volume Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#    Error message validation for Other Fermented Products - Drawback starts here
    When I select radio button "Drawback" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Drawback"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "374" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    When I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Volume With Spr Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres           |
      | Enter the litres of pure alcohol |
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"

    Examples:
      | errorMessageHeader |
      | There is a problem |


  Scenario Outline: Adjustments Journey - Error Message Validation for Beer in spoilt journey
    #    Error message validation for Beer - Beer Flow starts here
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Spoilt Alcohol Type Page"
    When I select radio button "Beer" on "Spoilt Alcohol Type Page"
    And I click save and continue button on "Spoilt Alcohol Type Page"
    Then I am presented with the "Spoilt Beer Alcohol Volume Page"
    And I click save and continue button on "Spoilt Beer Alcohol Volume Page"
    Then I am presented with the "Spoilt Beer Alcohol Volume Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of spoilt alcoholic product |
      | Enter the litres of pure alcohol                   |
      | Enter the amount of duty paid                      |
    When I enter "3000.75" for "Total Litres" on "Spoilt Beer Alcohol Volume Page"
    And I enter "250.5500" for "Litres Of Pure Alcohol" on "Spoilt Beer Alcohol Volume Page"
    And I enter "100000000000" for "Duty Paid" on "Spoilt Beer Alcohol Volume Page"
    And I click save and continue button on "Spoilt Beer Alcohol Volume Page"
    And I should see the "<errorMessageHeader>" and below error messages
      | The amount of duty paid must be less than £100 billion |

    Examples:
      | errorMessageHeader |
      | There is a problem |

