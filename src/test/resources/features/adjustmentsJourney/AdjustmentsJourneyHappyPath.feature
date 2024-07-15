@wip @Adjustments
Feature: Adjustments Journey

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

  @ZAP @a11y
  Scenario: Adjustments Journey - Happy path - Undeclaration - Beer - Without SPR
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
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in your duty suspended beer | Total net quantity of duty suspended cider | Total net quantity of pure alcohol in your duty suspended cider | Total net quantity of duty suspended wine | Total net quantity of pure alcohol in your duty suspended wine | Total net quantity of duty suspended spirits | Total net quantity of pure alcohol in your duty suspended spirits | Total net quantity of duty suspended other fermented products | Total net quantity of pure alcohol in your duty suspended other fermented products |
      | 3000.75 litres                            | 250.55 litres                                                  | 1500.35 litres                             | 300.55 litres                                                   | 2800.35 litres                            | 160.65 litres                                                  | 7800.35 litres                               | 460.65 litres                                                     | 8800.35 litres                                                | 560.65 litres                                                                      |


  Scenario: Adjustments Journey - Happy path - When user is eligible for both SPR and DR and enters respective Tax Type Code - Over declarations
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "DutyDue Date Selection Page" "Over-declaration"
    When I enter month "09" and year "2023" on "Duty Due Date Selection Page"
    And I click save and continue button on "DutyDue Date Selection Page"
    Then I am presented with the "Adjustment Alcohol By Volume Page"
    When I enter "5" on "Adjustment Alcohol By Volume Page"
    And I click save and continue button on "Adjustment Alcohol By Volume Page"
    Then I am presented with the "Adjustment Tax Type Page"
    When I enter "371" on "Adjustment Tax Type Page"
    And I click save and continue button on "Adjustment Tax Type Page"
    Then I am presented with the "Adjustment Small Producer Relief Duty Rate Page"
    When I enter "10.9" on "Adjustment Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Adjustment Small Producer Relief Duty Rate Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "600" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 5% |
      | you need to declare 600 litres of this entry             |
    And I can see below text for "duty due"
      | the entry having 30 litres of pure alcohol (Lpa)                    |
      | the duty rate for this entry being £10.90 per litre of pure alcohol |
    When I click continue button on "Adjustment Duty Due Page"
#   Then I am presented with the "Adjustment Check Your Answers Page"

  Scenario: Adjustments Journey - Happy path - When user is eligible for SPR and not eligible for DR and enters respective Tax Type Code - Spoilt
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "DutyDue Date Selection Page" "Spoilt"
    When I enter month "09" and year "2023" on "Duty Due Date Selection Page"
    And I click save and continue button on "DutyDue Date Selection Page"
    Then I am presented with the "Adjustment Alcohol By Volume Page"
    When I enter "5" on "Adjustment Alcohol By Volume Page"
    And I click save and continue button on "Adjustment Alcohol By Volume Page"
    Then I am presented with the "Adjustment Tax Type Page"
    When I enter "364" on "Adjustment Tax Type Page"
    And I click save and continue button on "Adjustment Tax Type Page"
    Then I am presented with the "Adjustment Small Producer Relief Duty Rate Page"
    When I enter "10.9" on "Adjustment Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Adjustment Small Producer Relief Duty Rate Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "700" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 5% |
      | you need to declare 700 litres of this entry             |
    And I can see below text for "duty due"
      | the entry having 35 litres of pure alcohol (Lpa)                    |
      | the duty rate for this entry being £10.90 per litre of pure alcohol |
    When I click continue button on "Adjustment Duty Due Page"
#   Then I am presented with the "Adjustment Check Your Answers Page"

  Scenario: Adjustments Journey - Happy path - Happy path - When user is not eligible for SPR and eligible for DR and enters respective Tax Type Code - Drawback
    When I select radio button "Drawback" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Duty Due Date Selection Page" "Drawback"
    When I enter month "09" and year "2023" on "Duty Due Date Selection Page"
    And I click save and continue button on "Duty Due Date Selection Page"
    Then I am presented with the "Adjustment Alcohol By Volume Page"
    When I enter "5" on "Adjustment Alcohol By Volume Page"
    And I click save and continue button on "Adjustment Alcohol By Volume Page"
    Then I am presented with the "Adjustment Tax Type Page"
    When I enter "351" on "Adjustment Tax Type Page"
    And I click save and continue button on "Adjustment Tax Type Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "800" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 5% |
      | you need to declare 800 litres of this entry             |
    And I can see below text for "duty due"
      | the entry having 40 litres of pure alcohol (Lpa)                   |
      | the duty rate for this entry being £8.42 per litre of pure alcohol |
    When I click continue button on "Adjustment Duty Due Page"
#   Then I am presented with the "Adjustment Check Your Answers Page"

  Scenario: Adjustments Journey - Happy path - When user is not eligible for both SPR and DR and enters respective Tax Type Code - Repackaged draught products
    When I select radio button "Repackaged draught products" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Duty Due Date Selection Page" "Repackaged draught products"
    When I enter month "09" and year "2023" on "Duty Due Date Selection Page"
    And I click save and continue button on "Duty Due Date Selection Page"
    Then I am presented with the "Adjustment Alcohol By Volume Page"
    When I enter "5" on "Adjustment Alcohol By Volume Page"
    And I click save and continue button on "Adjustment Alcohol By Volume Page"
    Then I am presented with the "Adjustment Tax Type Page"
    When I enter "312" on "Adjustment Tax Type Page"
    And I click save and continue button on "Adjustment Tax Type Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "900" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Due Page"
    And I can see below text for "pure alcohol"
      | the Alcohol by Volume (ABV) strength of this entry is 5% |
      | you need to declare 900 litres of this entry             |
    And I can see below text for "duty due"
      | the entry having 45 litres of pure alcohol (Lpa)                   |
      | the duty rate for this entry being £9.27 per litre of pure alcohol |
    When I click continue button on "Adjustment Duty Due Page"
#   Then I am presented with the "Adjustment Check Your Answers Page"


