@Test @AdjustmentsErrorMessage
Feature: Adjustments Journey - Error Message Validations

  Background: : Common Steps - Adjustments Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare any adjustments?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"

  Scenario Outline: Adjustments Journey - Error Message Validations
#    Error message validation for Beer - Under-declaration Flow starts here
    When I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Declare Adjustment Question Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select yes if you need to tell us about adjustments to any previous returns |
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"
    When I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Adjustment Type Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Select the type of adjustment you need to make |
    When I select radio button "Under-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Page" "Under-declaration"
    When I click save and continue button on "Adjustment Return Date Page"
    Then I am presented with the "Adjustment Return Date Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the date you paid duty |
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
      | Enter the total litres of beer             |
      | Enter the litres of pure alcohol in beer   |
      | Enter your Small Producer Relief duty rate |
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment      | Original return period | Tax type                                         | SPR duty rate | Volume                                                     | Duty value  |
      | Under-declared  | September 2023         | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £9.80         | 3000.75 litres of beer,250.55 litres of pure alcohol (Lpa) | £2,455.39   |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type  | Description                                       | Duty value   | Action         |
      | Under-declared   | Draught beer between 1.3% and 3.4% ABV (371 SPR)  | £2,455.39    | Change Remove  |
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
      | Enter the total litres of cider             |
      | Enter the litres of pure alcohol in cider   |
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment      | Original return period | Tax type                                          | SPR duty rate | Volume                                                      | Duty value  |
      | Over-declared   | October 2023           | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £9.80         | 3000.75 litres of cider,250.55 litres of pure alcohol (Lpa) | −£2,455.39  |
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
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "373" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    When I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Volume With Spr Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of wine             |
      | Enter the litres of pure alcohol in wine   |
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
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
      | Adjustment      | Original return period | Original tax type                                | New tax type                                         | SPR duty rate |Volume                                                      | Duty value  |
      | Repackaged      | November 2023          | Draught wine between 1.3% and 3.4% ABV (373 SPR) | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | £9.80         | 3000.75 litres of wine,250.55 litres of pure alcohol (Lpa) | £425.93     |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
#   Error message validation for Spirits - Spoilt starts here
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Spoilt Alcohol Page" "Spoilt"
    When I enter month "10" and year "2023" on "Adjustment Return Date Spoilt Alcohol Page"
    And I click save and continue button on "Adjustment Return Date Spoilt Alcohol Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "375" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    When I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Volume With Spr Page" error page
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter the total litres of spirits                |
      | Enter the litres of pure alcohol in spirits      |
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment     | Original return period | Tax type                                            | SPR duty rate | Volume                                                        | Duty value  |
      | Spoilt         | October 2023           | Draught spirits between 1.3% and 3.4% ABV (375 SPR) | £9.80         | 3000.75 litres of spirits,250.55 litres of pure alcohol (Lpa) | −£2,455.39  |
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
      | Enter the total litres of other fermented products                |
      | Enter the litres of pure alcohol in other fermented products      |
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment      | Original return period | Tax type                                                             | SPR duty rate | Volume                                                                         | Duty value  |
      | Drawback        | October 2023           | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | £9.80         | 3000.75 litres of other fermented products,250.55 litres of pure alcohol (Lpa) | −£2,455.39  |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"

    Examples:
      | errorMessageHeader |
      | There is a problem |

