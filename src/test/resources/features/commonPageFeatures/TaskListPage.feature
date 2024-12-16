@Test @AllTests @AlcoholToDeclare @TaskListPage
Feature: Alcohol Duty Journey - Task List Page

  Background: : Common Steps - Alcohol Duty Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    And  I verify the return due date for "Latest Month Selected" on "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Declare alcoholic products for duty       |
      | Declare adjustments from previous returns |
      | Report duty suspended alcohol deliveries  |
      | Report spirits production                 |
      | Send return                               |
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Not yet started                                   | Not yet started                            | Not yet started                              | Not yet started                                         |

  Scenario: 1. ADR Journey - To verify the status of the submission changes from 'Not yet started' to 'Completed' if the answer is set to 'No' at the Declare Alcohol Duty Question Page
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "No" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Not yet started                            | Not yet started                              | Not yet started                                         |

  Scenario: 2. ADR Journey - To verify the status of the submission changes to 'Not yet started' if the journey is incomplete
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer    | Declare cider   | Declare wine    | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | Not yet started | Not yet started | Not yet started | Not yet started | Not yet started                  | Not yet started                            | Not yet started                              | Not yet started                                         |

#Only beer scenario added for this - the rest are exactly the same
  Scenario: 3. ADR Journey - To verify the status of the submission to 'In progress' if the user not selects any options at the Product List Page
    When I click on "Tell us if you have alcoholic products to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    When I click on "Declare beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.55" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "77.55" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "66.34" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "999.19" for "Standard beer at or above 22.1% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "99.13" for "Standard beer at or above 22.1% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "887.54" for "Draught beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "66.44" for "Draught beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fifth" input box
    And I enter "699.45" for "Draught beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I enter "66.89" for "Draught beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "sixth" input box
    And I click save and continue button on "How Much You Need To Declare Beer Page"
    Then I am presented with the "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    When I select radio button "Yes" on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    And I click save and continue button on "Do You Have Multiple Small Producer Relief Duty Rate Beer Page"
    Then I am presented with the "Multiple Small Producer Relief Rate Beer Page"
    When I select radio button "Non-draught beer between 1.3% and 3.4% ABV (361 SPR)" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "9999.99" for "Total litres" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "89.99" for "Litres of pure alcohol" on "Multiple Small Producer Relief Rate Beer Page"
    And I enter "19" for "Duty rate" on "Multiple Small Producer Relief Rate Beer Page"
    And I click save and continue button on "Multiple Small Producer Relief Rate Beer Page"
    Then I am presented with the "Check Your Answers SPR Beer Page"
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    When I enter redirect url for "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Declare beer | Declare cider   | Declare wine    | Declare spirits | Declare other fermented products | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Completed                                         | In progress  | Not yet started | Not yet started | Not yet started | Not yet started                  | Not yet started                            | Not yet started                              | Not yet started                                         |

  Scenario: 4. DSD Journey - To verify the status of the submission changes from 'Not yet started' to 'Completed' if the answer is set to 'No' at the Declare Duty Suspended Deliveries Page
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Not yet started                                   | Not yet started                            | Completed                                    | Not yet started                                         |

  Scenario: 5. DSD Journey - To verify the status of the submission changes to 'Not yet started' if the journey is incomplete
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click back button on "Duty Suspended Deliveries Guidance Page"
    And I click back button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Change the entries you've told us about | Tell us about spirits produced in the past three months |
      | Not yet started                                   | Not yet started                            | Completed                                    | Not yet started                         | Not yet started                                         |

  Scenario: 6. DSD Journey - To verify the status of the submission to 'In progress' if the journey stops at midway
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click continue button on "Duty Suspended Deliveries Guidance Page"
    Then I am presented with the "Duty Suspended Beer Page"
    When I enter "8888.88" for "Total Beer" on "Duty Suspended Beer Page"
    And I enter "88.88" for "Pure Alcohol In Beer" on "Duty Suspended Beer Page"
    And I click save and continue button on "Duty Suspended Beer Page"
    Then I am presented with the "Duty Suspended Cider Page"
    When I enter "9999.99" for "Total Cider" on "Duty Suspended Cider Page"
    And I enter "99.99" for "Pure Alcohol In Cider" on "Duty Suspended Cider Page"
    When I enter redirect url for "Task List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Change the entries you've told us about | Tell us about spirits produced in the past three months |
      | Not yet started                                   | Not yet started                            | Completed                                    | In progress                             | Not yet started                                         |

  Scenario: 7. QSR Journey - To verify the status of the submission changes from 'Not yet started' to 'Completed' if the answer is set to 'No' at the Quarterly Spirits Returns Guidance Page
    When I click on "Tell us about spirits produced in the past three months" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "No" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Not yet started                                   | Not yet started                            | Not yet started                              | Completed                                               |

  Scenario: 8. QSR Journey - To verify the status of the submission changes to 'Not yet started' if the journey is incomplete
    When I click on "Tell us about spirits produced in the past three months" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "Yes" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Total Of All Spirits Page"
    When I click back button on "Total Of All Spirits Page"
    And I click back button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months | Change the spirits you've told us about |
      | Not yet started                                   | Not yet started                            | Not yet started                              | Completed                                               | Not yet started                         |

  Scenario: 9. QSR Journey - To verify the status of the submission to 'In progress' if the journey stops at midway
    When I click on "Tell us about spirits produced in the past three months" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "Yes" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Total Of All Spirits Page"
    When I enter "99" on "Total Of All Spirits Page"
    And I click save and continue button on "Total Of All Spirits Page"
    Then I am presented with the "Declare Whiskey Page"
    When I enter "10.55" for "Scotch Whisky" on "Declare Whiskey Page"
    And I enter "20.67" for "Irish Whiskey" on "Declare Whiskey Page"
    And I click save and continue button on "Declare Whiskey Page"
    Then I am presented with the "Which Of These Spirits Have You Produced Page"
    When I "select" checkbox "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits" on "Which Of These Spirits Have You Produced Page"
    When I enter redirect url for "Task List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months | Change the spirits you've told us about |
      | Not yet started                                   | Not yet started                            | Not yet started                              | Completed                                               | In progress                             |

  Scenario: 10. Adjustments Journey - To verify different statuses at the Task List page
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "No" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Task List Page"
#To verify the status from "Not yet started' to 'Completed' if the answer was set to 'No' at the Adjust Previous Return Page
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Not yet started                                   | Completed                                  | Not yet started                              | Not yet started                                         |
#To verify the "Not yet started' status of 'Change the entries you’ve told us about' if the answer is set to 'Yes' at the Adjust Previous Return Page but the journey is incomplete
    When I click on "Tell us if you have adjustments to declare" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page" with new url
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    And I enter redirect url for "Task List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Declare adjustments | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Not yet started                                   | Completed                                  | Not yet started     | Not yet started                              | Not yet started                                         |
#To verify the status from "Not yet started' to 'In progress' if the journey is incomplete
    When I click on "Declare adjustments" hyperlink on "Task List Page"
    Then I am presented with the "Adjustment Type Page"
    When I select radio button "Under-declaration" on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    Then I am presented with the dynamic header page "Adjustment Return Date Page" "Under-declaration"
    When I enter month "09" and year "2023" on "Adjustment Return Date Page"
    And I click save and continue button on "Adjustment Return Date Page"
    And I enter redirect url for "Task List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Declare adjustments | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Not yet started                                   | Completed                                  | In progress         | Not yet started                              | Not yet started                                         |
    When I click on "Declare adjustments" hyperlink on "Task List Page"
    Then I am presented with the "Adjustment Type Page"
    And I click save and continue button on "Adjustment Type Page"
    And I click save and continue button on "Adjustment Return Date Page"
    Then I am presented with the "Adjustment Tax Type Code Page"
    When I enter "311" on "Adjustment Tax Type Code Page"
    And I click save and continue button on "Adjustment Tax Type Code Page"
    Then I am presented with the "Adjustment Volume Page"
    When I enter "3000.75" for "Total Litres" on "Adjustment Volume Page"
    And I enter "50.55" for "Litres Of Pure Alcohol" on "Adjustment Volume Page"
    And I click save and continue button on "Adjustment Volume Page"
    Then I am presented with the "Adjustment Duty Value Page" "£2,322.59"
    When I click continue button on "Adjustment Duty Value Page"
    Then I am presented with the "Adjustment Check Your Answers Page"
    And I should see the following details
      | Adjustment     | Original return period | Tax type                                         | Volume                                               | Duty value |
      | Under-declared | September 2023         | Non-draught beer between 1.3% and 3.4% ABV (311) | 3,000.75 litres,50.5500 litres of pure alcohol (LPA) | £468.59    |
    When I click save and continue button on "Adjustment Check Your Answers Page"
    Then I am presented with the "Adjustment List Page"
    And I should see the following product details
      | Adjustment type | Description                                      | Duty value | Action        |
      | Under-declared  | Non-draught beer between 1.3% and 3.4% ABV (311) | £468.59    | Change Remove |
    And I enter redirect url for "Task List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Declare adjustments | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Not yet started                                   | Completed                                  | In progress         | Not yet started                              | Not yet started                                         |
#To verify the status from "In progress' to 'Completed' when journey is complete
    When I click on "Declare adjustments" hyperlink on "Task List Page"
    Then I am presented with the "Adjustment List Page"
    When I select radio button "No" on "Adjustment List Page"
    And I click save and continue button on "Adjustment List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Tell us if you have alcoholic products to declare | Tell us if you have adjustments to declare | Declare adjustments | Tell us about your duty suspended deliveries | Tell us about spirits produced in the past three months |
      | Not yet started                                   | Completed                                  | Completed           | Not yet started                              | Not yet started                                         |

  Scenario: 11. Send Return - To verify 'Cannot start' status at the Task List page
    And the status of the Send return is marked as "Cannot Start"
  #'Not yet started' status is covered under alcohol return full journey scenario