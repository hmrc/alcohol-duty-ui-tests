@Test @DutySuspendedDeliveries
Feature: Alcohol Duty Return - Duty Suspended Deliveries

  @ZAP @a11y
  Scenario: Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - With option 'Yes' - User with approval for all regime types
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
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
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in your duty suspended beer | Total net quantity of duty suspended cider | Total net quantity of pure alcohol in your duty suspended cider | Total net quantity of duty suspended wine | Total net quantity of pure alcohol in your duty suspended wine | Total net quantity of duty suspended spirits | Total net quantity of pure alcohol in your duty suspended spirits | Total net quantity of duty suspended other fermented products | Total net quantity of pure alcohol in your duty suspended other fermented products |
      | 2000.75 litres                            | 150.55 litres                                                  | 9999.99 litres                             | 99.19 litres                                                    | 7777.77 litres                            | 77.77 litres                                                   | 2100.75 litres                               | 160.55 litres                                                     | 8888.88 litres                                                | 88.88 litres                                                                       |
    When I click continue button on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | You’ve told us you need to declare duty suspended deliveries | Change the deliveries you’ve told us about | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                                    | Completed                                  | Not started                                |

  Scenario: Alcohol Duty Returns - DSD Journey for a user with only wine regime approval
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000111208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Alcohol to declare           |
      | Duty suspended deliveries    |
      | Your spirits and ingredients |
#    Your spirits and ingredients subsection will be removed once the related bug is fixed
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Wine Page"
    When I enter "7777.77" for "Total Wine" on "Duty Suspended Wine Page"
    And I enter "77.77" for "Pure Alcohol In Wine" on "Duty Suspended Wine Page"
    And I click save and continue button on "Duty Suspended Wine Page"
    Then I am presented with the "Duty Suspended Other Fermented Products Page"
    When I enter "8888.88" for "Total Other Fermented Products" on "Duty Suspended Other Fermented Products Page"
    And I enter "88.88" for "Pure Alcohol In Other Fermented Products" on "Duty Suspended Other Fermented Products Page"
    And I click save and continue button on "Duty Suspended Other Fermented Products Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    And I should see the following details
     | Total net quantity of duty suspended wine | Total net quantity of pure alcohol in your duty suspended wine | Total net quantity of duty suspended other fermented products | Total net quantity of pure alcohol in your duty suspended other fermented products |
     | 7777.77 litres                            | 77.77 litres                                                   | 8888.88 litres                                                | 88.88 litres                                                                       |
    When I click continue button on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | You’ve told us you need to declare duty suspended deliveries | Change the deliveries you’ve told us about | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                                    | Completed                                  | Not started                                |

  Scenario: Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - User with beer and spirits regime approval
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000106208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Alcohol to declare           |
      | Duty suspended deliveries    |
      | Your spirits and ingredients |
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Beer Page"
    When I enter "2000.75" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "150.55" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Spirits Page"
    When I enter "2100.75" for "Total Spirits" on "Duty Suspended Spirits Page"
    And I enter "160.55" for "Pure Alcohol In Spirits" on "Duty Suspended Spirits Page"
    And I click save and continue button on "Duty Suspended Spirits Page"
    Then I am presented with the "Duty Suspended Deliveries Check Your Answers Page"
    And I should see the following details
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in your duty suspended beer | Total net quantity of duty suspended spirits | Total net quantity of pure alcohol in your duty suspended spirits |
      | 2000.75 litres                            | 150.55 litres                                                  | 2100.75 litres                               | 160.55 litres                                                     |
    When I click continue button on "Duty Suspended Deliveries Check Your Answers Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | You’ve told us you need to declare duty suspended deliveries | Change the deliveries you’ve told us about | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                                    | Completed                                  | Not started                                |

  Scenario: Alcohol Duty Returns - Declare Duty Suspended Deliveries Page - With option 'No'
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"


  Scenario: Alcohol Duty Returns - Declare Duty Suspended Deliveries - Verify 'Change' links at Check your answer page
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
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
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in your duty suspended beer | Total net quantity of duty suspended cider | Total net quantity of pure alcohol in your duty suspended cider | Total net quantity of duty suspended wine | Total net quantity of pure alcohol in your duty suspended wine | Total net quantity of duty suspended spirits | Total net quantity of pure alcohol in your duty suspended spirits | Total net quantity of duty suspended other fermented products | Total net quantity of pure alcohol in your duty suspended other fermented products |
      | 2000.75 litres                            | 150.55 litres                                                  | 9999.99 litres                             | 99.19 litres                                                    | 7777.77 litres                            | 77.77 litres                                                   | 2100.75 litres                               | 160.55 litres                                                     | 8888.88 litres                                                | 88.88 litres                                                                       |
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
      | Total net quantity of duty suspended beer | Total net quantity of pure alcohol in your duty suspended beer | Total net quantity of duty suspended cider | Total net quantity of pure alcohol in your duty suspended cider | Total net quantity of duty suspended wine | Total net quantity of pure alcohol in your duty suspended wine | Total net quantity of duty suspended spirits | Total net quantity of pure alcohol in your duty suspended spirits | Total net quantity of duty suspended other fermented products | Total net quantity of pure alcohol in your duty suspended other fermented products |
      | 3000.75 litres                            | 250.55 litres                                                  | 1500.35 litres                             | 300.55 litres                                                   | 2800.35 litres                            | 160.65 litres                                                  | 7800.35 litres                               | 460.65 litres                                                     | 8800.35 litres                                                | 560.65 litres                                                                      |
