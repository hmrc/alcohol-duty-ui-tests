@Test @Adjustments
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
    When I click on "Do you need to declare any adjustments?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"

  @ZAP @a11y
  Scenario: Adjustments Journey - Happy path - Under-declaration - Beer - Without SPR
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
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment     | Original return period | Tax type                                         | Volume                                                     | Duty value |
      | Under-declared | September 2023         | Non-draught beer between 1.3% and 3.4% ABV (311) | 3000.75 litres of beer,250.55 litres of pure alcohol (Lpa) | £2,322.59  |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311) | £2,322.59  | Change Remove |

  @ZAP @a11y
  Scenario: Adjustments Journey - Happy path - Under-declaration - Beer - With SPR
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
      | Adjustment     | Original return period | Tax type                                         | SPR duty rate | Volume                                                     | Duty value |
      | Under-declared | September 2023         | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £9.80         | 3000.75 litres of beer,250.55 litres of pure alcohol (Lpa) | £2,455.39  |
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
      | Do you need to declare duty? | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for under-declaration | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                        | Completed                               | Not started                  | Not started                                  | Not started                                |
    When I click on "Reason for under-declaration" hyperlink on "Task List Page"
    Then I am presented with the "Under Declaration Reason Page"
    When I enter "Test Under Declaration Reason" on "Under Declaration Reason Page"
    And I click save and continue button on "Under Declaration Reason Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for under-declaration | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                        | Completed                               | Completed                    | Not started                                  | Not started                                |
#    Updating the declared value to be less than £1000
    When I click on "Change the entries you’ve told us about" hyperlink on "Task List Page"
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
      | Adjustment     | Original return period | Tax type                                         | SPR duty rate | Volume                                                     | Duty value |
      | Under-declared | September 2023         | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £6.50         | 2000.55 litres of beer,100.25 litres of pure alcohol (Lpa) | £651.62    |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Under-declared  | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £651.62    | Change Remove |
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                        | Completed                               | Not started                                  | Not started                                |

  Scenario: Adjustments Journey - Happy path - Over-declaration - Cider - Without SPR
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Over-declaration"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "312" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,322.59"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                          | Volume                                                      | Duty value |
      | Over-declared | October 2023           | Non-draught cider between 1.3% and 3.4% ABV (312) | 3000.75 litres of cider,250.55 litres of pure alcohol (Lpa) | −£2,322.59 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                       | Duty value | Action        |
      | Over-declared   | Non-draught cider between 1.3% and 3.4% ABV (312) | −£2,322.59 | Change Remove |

  Scenario: Adjustments Journey - Happy path - Over-declaration - Cider - With SPR
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
      | Adjustment    | Original return period | Tax type                                          | SPR duty rate | Volume                                                      | Duty value |
      | Over-declared | October 2023           | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £4.50         | 1000.75 litres of cider,150.55 litres of pure alcohol (Lpa) | −£677.47   |
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
      | Adjustment    | Original return period | Tax type                                          | SPR duty rate | Volume                                                      | Duty value |
      | Over-declared | October 2023           | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £4.50         | 1000.75 litres of cider,150.55 litres of pure alcohol (Lpa) | −£677.47   |
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
      | Do you need to declare duty? | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for over-declaration | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                        | Completed                               | Not started                 | Not started                                  | Not started                                |
    When I click on "Reason for over declaration" hyperlink on "Task List Page"
    Then I am presented with the "Over Declaration Reason Page"
    When I enter "Test over Declaration Reason" on "Over Declaration Reason Page"
    And I click save and continue button on "Over Declaration Reason Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Reason for over-declaration | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                        | Completed                               | Completed                   | Not started                                  | Not started                                |
    When I click on "Change the entries you’ve told us about" hyperlink on "Task List Page"
    Then I am presented with the "Adjustment List Page"
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
      | Do you need to declare duty? | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                        | Completed                               | Not started                                  | Not started                                |

  @ZAP @a11y
  Scenario: Adjustments Journey - Happy path - Repackaged Draught Products - Wine - With SPR
    When I select radio button "Repackaged draught products" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Repackaged draught products"
    When I enter month "11" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "373" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
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
      | Adjustment | Original return period | Original tax type                                | New tax type                                         | SPR duty rate | Volume                                                     | Duty value |
      | Repackaged | November 2023          | Draught wine between 1.3% and 3.4% ABV (373 SPR) | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | £11.50        | 3000.75 litres of wine,250.55 litres of pure alcohol (Lpa) | £425.93    |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (373 SPR) | £425.93    | Change Remove |

  Scenario: Adjustments Journey - Happy path - Spoilt - Spirits - Without SPR
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Spoilt Alcohol Page" "Spoilt"
    When I enter month "10" and year "2023" on "Adjustment Return Date Spoilt Alcohol Page"
    And I click save and continue button on "Adjustment Return Date Spoilt Alcohol Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "315" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,322.59"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Tax type                                            | Volume                                                        | Duty value |
      | Spoilt     | October 2023           | Non-draught spirits between 1.3% and 3.4% ABV (315) | 3000.75 litres of spirits,250.55 litres of pure alcohol (Lpa) | −£2,322.59 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                         | Duty value | Action        |
      | Spoilt          | Non-draught spirits between 1.3% and 3.4% ABV (315) | −£2,322.59 | Change Remove |

  Scenario: Adjustments Journey - Happy path - Spoilt - Spirits - With SPR
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Spoilt Alcohol Page" "Spoilt"
    When I enter month "10" and year "2023" on "Adjustment Return Date Spoilt Alcohol Page"
    And I click save and continue button on "Adjustment Return Date Spoilt Alcohol Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "375" on "Adjustment Tax Type Code Page"
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
      | Adjustment | Original return period | Tax type                                            | SPR duty rate | Volume                                                        | Duty value |
      | Spoilt     | October 2023           | Draught spirits between 1.3% and 3.4% ABV (375 SPR) | £9.80         | 3000.75 litres of spirits,250.55 litres of pure alcohol (Lpa) | −£2,455.39 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                         | Duty value | Action        |
      | Spoilt          | Draught spirits between 1.3% and 3.4% ABV (375 SPR) | −£2,455.39 | Change Remove |

  Scenario: Adjustments Journey - Happy path - Drawback - Other Fermented Products - Without SPR
    When I select radio button "Drawback" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Drawback"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "314" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,322.59"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Tax type                                                             | Volume                                                                         | Duty value |
      | Drawback   | October 2023           | Non-draught other fermented products between 1.3% and 3.4% ABV (314) | 3000.75 litres of other fermented products,250.55 litres of pure alcohol (Lpa) | −£2,322.59 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value | Action        |
      | Drawback        | Non-draught other fermented products between 1.3% and 3.4% ABV (314) | −£2,322.59 | Change Remove |

  Scenario: Adjustments Journey - Happy path - Drawback - Other Fermented Products - With SPR
    When I select radio button "Drawback" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Drawback"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "374" on "Adjustment Tax Type Code Page"
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
      | Adjustment | Original return period | Tax type                                                             | SPR duty rate | Volume                                                                         | Duty value |
      | Drawback   | October 2023           | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | £9.80         | 3000.75 litres of other fermented products,250.55 litres of pure alcohol (Lpa) | −£2,455.39 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value | Action        |
      | Drawback        | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | −£2,455.39 | Change Remove |

  @ZAP @a11y
  Scenario: Adjustments Journey - Add Another Adjustment & Remove Adjustment
    When I select radio button "Drawback" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Drawback"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "374" on "Adjustment Tax Type Code Page"
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
      | Adjustment | Original return period | Tax type                                                             | SPR duty rate | Volume                                                                         | Duty value |
      | Drawback   | October 2023           | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | £9.80         | 3000.75 litres of other fermented products,250.55 litres of pure alcohol (Lpa) | −£2,455.39 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value | Action        |
      | Drawback        | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | −£2,455.39 | Change Remove |
#    The journey to add new adjustment starts here
    When I select radio button "Yes" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Adjustment Type Page"
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Spoilt Alcohol Page" "Spoilt"
    When I enter month "10" and year "2023" on "Adjustment Return Date Spoilt Alcohol Page"
    And I click save and continue button on "Adjustment Return Date Spoilt Alcohol Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "375" on "Adjustment Tax Type Code Page"
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
      | Adjustment | Original return period | Tax type                                            | SPR duty rate | Volume                                                        | Duty value |
      | Spoilt     | October 2023           | Draught spirits between 1.3% and 3.4% ABV (375 SPR) | £9.80         | 3000.75 litres of spirits,250.55 litres of pure alcohol (Lpa) | −£2,455.39 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value | Action        |
      | Drawback        | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | −£2,455.39 | Change Remove |
      | Spoilt          | Draught spirits between 1.3% and 3.4% ABV (375 SPR)                  | −£2,455.39 | Change Remove |
#    The journey to remove adjustment starts here
    When I click "Remove Hyperlink" on "Adjustment List Page"
    Then I am presented with the "Remove Adjustment Page"
    When I select radio button "No" on "Remove Adjustment Page"
    And I click save and continue button on "Remove Adjustment Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value | Action        |
      | Drawback        | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | −£2,455.39 | Change Remove |
      | Spoilt          | Draught spirits between 1.3% and 3.4% ABV (375 SPR)                  | −£2,455.39 | Change Remove |
    When I click "Remove Hyperlink" on "Adjustment List Page"
    Then I am presented with the "Remove Adjustment Page"
    When I select radio button "Yes" on "Remove Adjustment Page"
    And I click save and continue button on "Remove Adjustment Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                         | Duty value | Action        |
      | Spoilt          | Draught spirits between 1.3% and 3.4% ABV (375 SPR) | −£2,455.39 | Change Remove |

