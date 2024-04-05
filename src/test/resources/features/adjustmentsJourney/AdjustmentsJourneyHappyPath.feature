@Test @Adjustments
Feature: Adjustments Journey

  Background: : Common Steps - Adjustments Journey
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Alcohol to declare |
    And I should see the following status of the submission journey
      | Do you need to declare duty? |
      | Not started                  |
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I enter redirect url for "Declare Adjustment Question Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"

  @ZAP @a11y
  Scenario: Adjustments Journey - Happy path - Under declarations - SPR & DR No
    When I select radio button "Under-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "DutyDue Date Selection Page" "Under-declaration"
    When I enter month "09" and year "2023" on "DutyDue Date Selection Page"
    And I click save and continue button on "Duty Due Date Selection Page"
    Then I am presented with the "Adjustment Alcohol By Volume Page"
    When I enter "5" on "Adjustment Alcohol By Volume Page"
    And I click save and continue button on "Adjustment Alcohol By Volume Page"
    Then I am presented with the "Adjustment Tax Type Page"
    When I enter "311" on "Adjustment Tax Type Page"
    And I click save and continue button on "Adjustment Tax Type Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "500" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
#    Then I am presented with the "Your Calculations Page"


  @ZAP @a11y
  Scenario: Adjustments Journey - Happy path - Under declarations
    When I select radio button "Under-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "DutyDue Date Selection Page" "Under-declaration"
    When I enter month "09" and year "2023" on "DutyDue Date Selection Page"
    And I click save and continue button on "Duty Due Date Selection Page"
    Then I am presented with the "Adjustment Alcohol By Volume Page"
    When I enter "5" on "Adjustment Alcohol By Volume Page"
    And I click save and continue button on "Adjustment Alcohol By Volume Page"
    Then I am presented with the "Adjustment Tax Type Page"
    When I enter "311" on "Adjustment Tax Type Page"
    And I click save and continue button on "Adjustment Tax Type Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "500" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
#    Then I am presented with the "Your Calculations Page"

  Scenario: Adjustments Journey - Happy path - Over declarations - SPR Yes & DR Yes
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
#    Then I am presented with the "Your Calculations Page"

  Scenario: Adjustments Journey - Happy path - Spoilt - SPR Yes & DR No
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
#    Then I am presented with the "Your Calculations Page"

  Scenario: Adjustments Journey - Happy path - Drawback - SPR No & DR Yes
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
#    Then I am presented with the "Your Calculations Page"

  Scenario: Adjustments Journey - Happy path - Repackaged draught products - SPR & DR No
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
#    Then I am presented with the "Your Calculations Page"


