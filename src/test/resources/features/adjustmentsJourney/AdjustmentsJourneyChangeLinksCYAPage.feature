@Test @Adjustments
Feature: Adjustments Journey - Change Links - CYA Page

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
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Adjustment Question Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"

  @ZAP @a11y @check1
  Scenario: Adjustments Journey - Happy path - Under-declaration - Beer - Change Link for Adjustment Type
    When I select radio button "Under-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Page" "Under-declaration"
    When I enter month "09" and year "2023" on "Adjustment Return Date Page"
    And I click save and continue button on "Adjustment Return Date Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "311" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,322.59"
#    And I can see below text for "pure alcohol"
#      | the Alcohol by Volume (ABV) strength of this entry is 5% |
#      | you need to declare 500 litres of this entry             |
#    And I can see below text for "duty due"
#      | the entry having 25 litres of pure alcohol (Lpa)                   |
#      | the duty rate for this entry being £9.27 per litre of pure alcohol |
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment      | Original return period | Tax type                                         | Volume                                                     | Duty value  |
      | Under-declared  | September 2023         | Non-draught beer between 1.3% and 3.4% ABV (311) | 3000.75 litres of beer,250.55 litres of pure alcohol (Lpa) | £2,322.59   |
    When I click "Adjustment" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Type Page" with new url
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Adjustment Return Date Over Dec Page" with new url
    When I enter month "09" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page" with new url
    When I enter "311" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page" with new url
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,322.59"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment      | Original return period | Tax type                                         | Volume                                                     | Duty value  |
      | Over-declared   | September 2023         | Non-draught beer between 1.3% and 3.4% ABV (311) | 3000.75 litres of beer,250.55 litres of pure alcohol (Lpa) | £2,322.59   |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type  | Description                                       | Duty value   | Action         |
      | Over-declared    | Non-draught beer between 1.3% and 3.4% ABV (311)  | £2,322.59    | Change Remove  |

  Scenario: Adjustments Journey - Happy path - Over-declaration - Cider - With SPR - Change Link for Original Return Period And Tax Type
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Over-declaration"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "372" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment      | Original return period | Tax type                                          | SPR duty rate | Volume                                                      | Duty value  |
      | Over-declared   | October 2023           | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £9.80         | 3000.75 litres of cider,250.55 litres of pure alcohol (Lpa) | −£2,455.39  |
    When I click "Original return period" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Return Date Over Dec Page" with new url
    When I enter month "12" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "372" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "10.5" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment      | Original return period | Tax type                                          | SPR duty rate | Volume                                                      | Duty value  |
      | Over-declared   | December 2023           | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £10.50         | 3000.75 litres of cider,250.55 litres of pure alcohol (Lpa) | −£2,630.77  |
    When I click "Tax type" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Return Date Over Dec Page" with new url
    When I enter month "12" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "374" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "10.5" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment      | Original return period | Tax type                                          | SPR duty rate | Volume                                                      | Duty value  |
      | Over-declared   | December 2023           | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | £10.50         | 3000.75 litres of other fermented products,250.55 litres of pure alcohol (Lpa) | −£2,630.77  |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type  | Description                                       | Duty value   | Action         |
      | Over-declared    | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | −£2,630.77   | Change Remove  |
