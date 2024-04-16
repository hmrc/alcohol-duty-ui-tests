@Test @DutySuspendedDeliveries
Feature: Alcohol Duty Returns - Declare Duty Suspended Deliveries - Error Messages

  Scenario Outline: Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - Error message validations
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
    When I enter redirect url for "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Select yes if you need to declare any Duty Suspended Deliveries"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Beer Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of pure alcohol in beer in litres"
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of beer in litres"
    When I enter "2000.75" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "150.55" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Cider Page"
    And I click save and continue button on "Duty Suspended Cider Page"
    Then I am presented with the "Duty Suspended Cider Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of pure alcohol in cider in litres"
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of cider in litres"
    When I enter "9999.99" for "Total Cider" on "Duty Suspended Cider Page"
    And I enter "99.19" for "Pure Alcohol In Cider" on "Duty Suspended Cider Page"
    And I click save and continue button on "Duty Suspended Cider Page"
    Then I am presented with the "Duty Suspended Wine Page"
    When I click save and continue button on "Duty Suspended Wine Page"
    Then I am presented with the "Duty Suspended Wine Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of pure alcohol in wine in litres"
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of wine in litres"
    When I enter "9999.99" for "Total Wine" on "Duty Suspended Wine Page"
    And I enter "99.19" for "Pure Alcohol In Wine" on "Duty Suspended Wine Page"
    And I click save and continue button on "Duty Suspended Wine Page"
#   Then I am presented with the "Duty Suspended Spirits Page"
    When I enter redirect url for "Duty Suspended Spirits Page"
    Then I am presented with the "Duty Suspended Spirits Page"
    And I click save and continue button on "Duty Suspended Spirits Page"
    Then I am presented with the "Duty Suspended Spirits Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of pure alcohol in spirits in litres"
    And The error summary title is "<errorMessageHeader>" and the error message is "Enter the volume of spirits in litres"
    When I enter "2100.75" for "Total Spirits" on "Duty Suspended Spirits Page"
    And I enter "160.55" for "Pure Alcohol In Spirits" on "Duty Suspended Spirits Page"
    And I click save and continue button on "Duty Suspended Spirits Page"
#    Then I am presented with the "Duty Suspended Other Fermented Products Page"

    Examples:
      | errorMessageHeader |
      | There is a problem |
