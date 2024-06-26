@Test @AdjustmentsErrorMessage
Feature: Adjustments Journey - Error Messages

  Scenario Outline: Adjustments Journey - Error Message Validations
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
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Declare Adjustment Question Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if you need to enter an adjustment."
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Adjustment Type Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select the adjustment you need to make"
    When I select radio button "Under-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Duty Due Date Selection Page" "Under-declaration"
    And I click save and continue button on "Duty Due Date Selection Page"
    Then I am presented with the "Duty Due Date Selection Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter a month and year"
    When I enter month "09" and year "2023" on "DutyDue Date Selection Page"
    And I click save and continue button on "Duty Due Date Selection Page"
    Then I am presented with the "Adjustment Alcohol By Volume Page"
    And I click save and continue button on "Adjustment Alcohol By Volume Page"
    Then I am presented with the "Adjustment Alcohol By Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the ABV of this adjustment"
    When I enter "5" on "Adjustment Alcohol By Volume Page"
    And I click save and continue button on "Adjustment Alcohol By Volume Page"
    Then I am presented with the "Adjustment Tax Type Page"
    And I click save and continue button on "Adjustment Tax Type Page"
    Then I am presented with the "Adjustment Tax Type Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter a valid 3 digit tax type"
    When I enter "371" on "Adjustment Tax Type Page"
    And I click save and continue button on "Adjustment Tax Type Page"
    Then I am presented with the "Adjustment Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Adjustment Small Producer Relief Duty Rate Page"
    Then I am presented with the "Adjustment Small Producer Relief Duty Rate Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter your Small Producer Relief duty rate"
    When I enter "10.9" on "Adjustment Small Producer Relief Duty Rate Page"
    And I click save and continue button on "Adjustment Small Producer Relief Duty Rate Page"
    Then I am presented with the "Adjustment Volume Page"
    When I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of this adjustment"

    Examples:
      | errorMessageHeader |
      | There is a problem |