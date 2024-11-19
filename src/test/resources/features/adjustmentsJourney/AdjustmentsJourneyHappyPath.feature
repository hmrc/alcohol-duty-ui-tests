@Test @AllTests @Adjustments
Feature: Adjustments Journey

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
    When I click on "Do you need to declare any adjustments?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"

  Scenario: Adjustments Journey - Validating under-declaration-reason removal from task List page when amount is changed to less than £1000 - Under-declaration - Beer - With SPR
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare any adjustments?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"
    When I select radio button "Under-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Page" "Under-declaration"
    When I enter month "09" and year "2023" on "Adjustment Return Date Page"
    And I click save and continue button on "Adjustment Return Date Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "371" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment     | Original return period | Tax type                                         | SPR duty rate | Volume                                                        | Duty value |
      | Under-declared | September 2023         | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £9.80         | 3,000.75 litres of beer,250.5500 litres of pure alcohol (LPA) | £2,455.39  |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Under-declared  | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £2,455.39  | Change Remove |
#    Updating Under-declaration reason page starts here
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you need to declare duty | You told us you need to declare one or more adjustments | Declare adjustments | Reason for under-declared alcoholic products | Tell us about your duty suspended deliveries | Have you produced spirits from raw materials? |
      | Not yet started                     | Completed                                               | Completed           | Not yet started                              | Not yet started                              | Not yet started                               |
    When I click on "Reason for under-declared alcoholic products" hyperlink on "Task List Page"
    Then I am presented with the "Under Declaration Reason Page"
    When I enter "Test Under Declaration Reason" on "Under Declaration Reason Page"
    And I click save and continue button on "Under Declaration Reason Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you need to declare duty | You told us you need to declare one or more adjustments | Declare adjustments | Reason for under-declared alcoholic products | Tell us about your duty suspended deliveries | Have you produced spirits from raw materials? |
      | Not yet started                     | Completed                                               | Completed           | Completed                                    | Not yet started                              | Not yet started                               |
#    Updating the declared value to be less than £1000
    When I click on "Declare adjustments" hyperlink on "Task List Page"
    Then I am presented with the "Adjustment List Page"
    When I click "Change Hyperlink" on "Adjustment List Page"
    Then I am presented with the "Adjustment Check Your Answers Page" with new url
    When I click "Volume" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Volume With Spr Page" with new url
    When I enter "2000.55" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "100.25" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "6.50" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "£651.62"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment     | Original return period | Tax type                                         | SPR duty rate | Volume                                                        | Duty value |
      | Under-declared | September 2023         | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £6.50         | 2,000.55 litres of beer,100.2500 litres of pure alcohol (LPA) | £651.62    |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Under-declared  | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £651.62    | Change Remove |
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you need to declare duty | You told us you need to declare one or more adjustments | Declare adjustments | Tell us about your duty suspended deliveries | Have you produced spirits from raw materials? |
      | Not yet started                     | Completed                                               | Completed           | Not yet started                              | Not yet started                               |

  Scenario: Adjustments Journey - Validating over-declaration-reason removal from task List page when amount is changed to less than £1000 after deleting one of the adjustment- Over-declaration - Cider - With SPR
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare any adjustments?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Over-declaration"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "372" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "1000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "150.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "4.5" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£677.47"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                          | SPR duty rate | Volume                                                         | Duty value |
      | Over-declared | October 2023           | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £4.50         | 1,000.75 litres of cider,150.5500 litres of pure alcohol (LPA) | −£677.47   |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value | Action        |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR) | −£677.47   | Change Remove |
#    Adding new over-declaration to test over-declaration reason page
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Over-declaration"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "372" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "1000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "150.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "4.5" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£677.47"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                          | SPR duty rate | Volume                                                         | Duty value |
      | Over-declared | October 2023           | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £4.50         | 1,000.75 litres of cider,150.5500 litres of pure alcohol (LPA) | −£677.47   |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value | Action        |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR) | −£677.47   | Change Remove |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR) | −£677.47   | Change Remove |
    #    Updating Over-declaration reason page starts here
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you need to declare duty | You told us you need to declare one or more adjustments | Declare adjustments | Reason for over-declared alcoholic products | Tell us about your duty suspended deliveries | Have you produced spirits from raw materials? |
      | Not yet started                     | Completed                                               | Completed           | Not yet started                             | Not yet started                              | Not yet started                               |
    When I click on "Reason for over-declared alcoholic products" hyperlink on "Task List Page"
    Then I am presented with the "Over Declaration Reason Page"
    When I enter "Test over Declaration Reason" on "Over Declaration Reason Page"
    And I click save and continue button on "Over Declaration Reason Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you need to declare duty | You told us you need to declare one or more adjustments | Declare adjustments | Reason for over-declared alcoholic products | Tell us about your duty suspended deliveries | Have you produced spirits from raw materials? |
      | Not yet started                     | Completed                                               | Completed           | Completed                                   | Not yet started                              | Not yet started                               |
    When I click on "Declare adjustments" hyperlink on "Task List Page"
    Then I am presented with the "Adjustment List Page"
    When I click "Remove Hyperlink" on "Adjustment List Page"
    Then I am presented with the "Remove Adjustment Page"
    When I select radio button "No" on "Remove Adjustment Page"
    And I click save and continue button on "Remove Adjustment Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value | Action        |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR) | −£677.47   | Change Remove |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR) | −£677.47   | Change Remove |
    When I click "Remove Hyperlink" on "Adjustment List Page"
    Then I am presented with the "Remove Adjustment Page"
    When I select radio button "Yes" on "Remove Adjustment Page"
    And I click save and continue button on "Remove Adjustment Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value | Action        |
      | Over-declared   | Draught cider between 1.3% and 3.4% ABV (372 SPR) | −£677.47   | Change Remove |
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you need to declare duty | You told us you need to declare one or more adjustments | Declare adjustments | Tell us about your duty suspended deliveries | Have you produced spirits from raw materials? |
      | Not yet started                     | Completed                                               | Completed           | Not yet started                              | Not yet started                               |

#  The below test data need to be updated once OFP(Other Fermented Products) flag is turned on
  Scenario: Adjustments Journey - Spoilt Journey for a user with only Beer approval
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000114208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare any adjustments?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Spoilt Beer Alcohol Volume Page"
    When I enter "3000.75" for "Total Litres" on "Spoilt Beer Alcohol Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Spoilt Beer Alcohol Volume Page"
    And I enter "3255.55" for "Duty Paid" on "Spoilt Beer Alcohol Volume Page"
    And I click save and continue button on "Spoilt Beer Alcohol Volume Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Description | Volume                                                        | Duty value |
      | Spoilt     | Beer        | 3,000.75 litres of beer,250.5500 litres of pure alcohol (LPA) | −£3,255.55 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description | Duty value | Action        |
      | Spoilt          | Beer        | −£3,255.55 | Change Remove |
