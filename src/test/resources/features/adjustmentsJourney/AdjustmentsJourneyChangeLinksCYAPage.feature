@AllTests @AdjustmentsChangeLinks
Feature: Adjustments Journey - Change Links - CYA Page

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
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Adjustment Type Page"

  @Test
  Scenario:1- Adjustments Journey - Change Link Functionality for Adjustment Type - Under-declaration - Beer
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
      | Adjustment     | Original return period | Tax type                                         | Volume                                                | Duty value |
      | Under-declared | September 2023         | Non-draught beer between 1.3% and 3.4% ABV (311) | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | £2,322.59  |
    When I click "Adjustment" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Type Page" with new url
    When I select radio button "Over-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Adjustment Return Date Over Dec Page" with new url
    When I enter month "09" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page" with new url
    When I enter "371" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page" with new url
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                         | SPR duty rate | Volume                                                | Duty value |
      | Over-declared | September 2023         | Draught beer between 1.3% and 3.4% ABV (371 SPR) | £9.80         | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,455.39 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Over-declared   | Draught beer between 1.3% and 3.4% ABV (371 SPR) | −£2,455.39 | Change Remove |

  @Test
  Scenario:2- Adjustments Journey - Change Link Functionality for Original Return Period And Tax Type and SPR Duty Rate - Over-declaration - Cider
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
      | Adjustment    | Original return period | Tax type                                          | SPR duty rate | Volume                                                | Duty value |
      | Over-declared | October 2023           | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £9.80         | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,455.39 |
#    Change Link Functionality for Original return period starts here
    When I click "Original return period" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Return Date Over Dec Page" with new url
    When I enter month "12" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code Page" with new url
    When I enter "372" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page" with new url
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "10.5" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                          | SPR duty rate | Volume                                                | Duty value |
      | Over-declared | December 2023          | Draught cider between 1.3% and 3.4% ABV (372 SPR) | £10.50        | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,630.77 |
#    Change Link Functionality for Tax type starts here
    When I click "Tax type" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Tax Type Code Page" with new url
    When I enter "374" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page" with new url
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "10.5" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                                             | SPR duty rate | Volume                                                | Duty value |
      | Over-declared | December 2023          | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | £10.50        | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,630.77 |
#    Change Link Functionality for SPR duty rate starts here
    When I click "SPR duty rate" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Volume With Spr Page" with new url
    And I enter "12.5" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£3,131.87"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment    | Original return period | Tax type                                                             | SPR duty rate | Volume                                                | Duty value |
      | Over-declared | December 2023          | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | £12.50        | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£3,131.87 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value | Action        |
      | Over-declared   | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | −£3,131.87 | Change Remove |

  @Test
  Scenario:3- Adjustments Journey - Change Link Functionality for Volume And New Tax Type - Repackaged Draught Products - Wine
    When I select radio button "Repackaged draught products" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Repackaged draught products"
    When I enter month "11" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
    Then I am presented with the "Adjustment Tax Type Code For Repackaged Page"
    When I enter "373" on "Adjustment Tax Type Code For Repackaged Page"
    And I click save and continue button on "Adjustment Tax Type Code For Repackaged Page"
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
      | Adjustment | Original return period | Original tax type                                | New tax type                                         | SPR duty rate | Volume                                                | Duty value |
      | Repackaged | November 2023          | Draught wine between 1.3% and 3.4% ABV (373 SPR) | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | £11.50        | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | £425.93    |
#    Change Link Functionality for Volume starts here
    When I click "Volume" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Volume With Spr Page" with new url
    When I enter "4000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "350.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "8.5" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "New Tax Type Code Page" with new url
    When I enter "363" on "New Tax Type Code Page"
    And I click save and continue button on "New Tax Type Code Page"
    Then I am presented with the "New Spr Duty Rate Page" with new url
    When I enter "11.5" on "New Spr Duty Rate Page"
    And I click save and continue button on "New Spr Duty Rate Page"
    Then I am presented with the "Adjustment Duty Value Page" "£1,051.65"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Original tax type                                | New tax type                                         | SPR duty rate | Volume                                                | Duty value |
      | Repackaged | November 2023          | Draught wine between 1.3% and 3.4% ABV (373 SPR) | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | £11.50        | 4,000.75 litres,350.5500 litres of pure alcohol (LPA) | £1,051.65  |
#    Change Link Functionality for SPR duty rate in case of Repackaged Journey
    When I click "New SPR duty rate" on "Adjustment Check Your Answers Page"
    Then I am presented with the "New Spr Duty Rate Page" with new url
    When I enter "14.5" on "New Spr Duty Rate Page"
    And I click save and continue button on "New Spr Duty Rate Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,103.30"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Original tax type                                | New tax type                                         | SPR duty rate | Volume                                                | Duty value |
      | Repackaged | November 2023          | Draught wine between 1.3% and 3.4% ABV (373 SPR) | Non-draught wine between 1.3% and 3.4% ABV (363 SPR) | £14.50        | 4,000.75 litres,350.5500 litres of pure alcohol (LPA) | £2,103.30  |
#    Change Link Functionality for New Tax type starts here
    When I click "New tax type" on "Adjustment Check Your Answers Page"
    Then I am presented with the "New Tax Type Code Page" with new url
    When I enter "313" on "New Tax Type Code Page"
    And I click save and continue button on "New Tax Type Code Page"
#    The new tax type code is Non SPR so New SPR duty rate page is skipped
    Then I am presented with the "Adjustment Duty Value Page" "£269.92"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Original tax type                                | New tax type                                     | SPR duty rate | Volume                                                | Duty value |
      | Repackaged | November 2023          | Draught wine between 1.3% and 3.4% ABV (373 SPR) | Non-draught wine between 1.3% and 3.4% ABV (313) | £8.50         | 4,000.75 litres,350.5500 litres of pure alcohol (LPA) | £269.92    |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Repackaged      | Draught wine between 1.3% and 3.4% ABV (373 SPR) | £269.92    | Change Remove |

  Scenario:4 Adjustments Journey - Changing Non SPR to SPR - Drawback - Spirits
    When I select radio button "Drawback" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Over Dec Page" "Drawback"
    When I enter month "10" and year "2023" on "Adjustment Return Date Over Dec Page"
    And I click save and continue button on "Adjustment Return Date Over Dec Page"
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
      | Adjustment | Original return period | Tax type                                            | Volume                                                | Duty value |
      | Drawback   | October 2023           | Non-draught spirits between 1.3% and 3.4% ABV (315) | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,322.59 |
    When I click "Tax type" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Tax Type Code Page" with new url
    When I enter "375" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume With Spr Page" with new url
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume With Spr Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume With Spr Page"
    And I enter "9.8" for "SPR Duty Rate" on "Adjustment Volume With Spr Page"
    And I click save and continue button on "Adjustment Volume With Spr Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,455.39"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Tax type                                            | SPR duty rate | Volume                                                | Duty value |
      | Drawback   | October 2023           | Draught spirits between 1.3% and 3.4% ABV (375 SPR) | £9.80         | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,455.39 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                         | Duty value | Action        |
      | Drawback        | Draught spirits between 1.3% and 3.4% ABV (375 SPR) | −£2,455.39 | Change Remove |

  Scenario:5- Adjustments Journey - Change SPR to Non SPR - Drawback - Other Fermented Products
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
      | Adjustment | Original return period | Tax type                                                             | SPR duty rate | Volume                                                | Duty value |
      | Drawback   | October 2023           | Draught other fermented products between 1.3% and 3.4% ABV (374 SPR) | £9.80         | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,455.39 |
    When I click "Tax type" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment Tax Type Code Page" with new url
    When I enter "314" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page" with new url
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "-£2,322.59"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Original return period | Tax type                                                             | Volume                                                | Duty value |
      | Drawback   | October 2023           | Non-draught other fermented products between 1.3% and 3.4% ABV (314) | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£2,322.59 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                                          | Duty value | Action        |
      | Drawback        | Non-draught other fermented products between 1.3% and 3.4% ABV (314) | −£2,322.59 | Change Remove |

  Scenario:6 Adjustments Journey - Change Link Functionality - Spoilt - Spirits
    When I select radio button "Spoilt" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the "Spoilt Alcohol Type Page"
    When I select radio button "Spirits" on "Spoilt Alcohol Type Page"
    And I click save and continue button on "Spoilt Alcohol Type Page"
    Then I am presented with the "Spoilt Alcohol Volume Page"
    When I enter "3000.75" for "Total Litres" on "Spoilt Alcohol Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Spoilt Alcohol Volume Page"
    And I enter "3255.55" for "Duty Paid" on "Spoilt Alcohol Volume Page"
    And I click save and continue button on "Spoilt Alcohol Volume Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Description | Volume                                                | Duty value |
      | Spoilt     | Spirits     | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£3,255.55 |
    When I click "Description" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Spoilt Alcohol Type Page" with new url
    When I select radio button "Beer" on "Spoilt Alcohol Type Page"
    And I click save and continue button on "Spoilt Alcohol Type Page"
    Then I am presented with the "Spoilt Beer Alcohol Volume Page"
    When I enter "3000.75" for "Total Litres" on "Spoilt Beer Alcohol Volume Page"
    And I enter "250.55" for "Litres Of Pure Alcohol" on "Spoilt Beer Alcohol Volume Page"
    And I enter "3255.55" for "Duty Paid" on "Spoilt Beer Alcohol Volume Page"
    And I click save and continue button on "Spoilt Beer Alcohol Volume Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Description | Volume                                                | Duty value |
      | Spoilt     | Beer        | 3,000.75 litres,250.5500 litres of pure alcohol (LPA) | −£3,255.55 |
    When I click "Duty value" on "Adjustment Check Your Answers Page"
    Then I am presented with the "Spoilt Beer Alcohol Volume Page" with new url
    When I enter "3222.75" for "Total Litres" on "Spoilt Beer Alcohol Volume Page"
    And I enter "255.55" for "Litres Of Pure Alcohol" on "Spoilt Beer Alcohol Volume Page"
    And I enter "3200.55" for "Duty Paid" on "Spoilt Beer Alcohol Volume Page"
    And I click save and continue button on "Spoilt Beer Alcohol Volume Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment | Description | Volume                                                | Duty value |
      | Spoilt     | Beer        | 3,222.75 litres,255.5500 litres of pure alcohol (LPA) | −£3,200.55 |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description | Duty value | Action        |
      | Spoilt          | Beer        | −£3,200.55 | Change Remove |
