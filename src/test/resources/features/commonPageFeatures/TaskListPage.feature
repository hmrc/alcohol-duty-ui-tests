@Test @AlcoholToDeclare @TaskListPage
Feature: Alcohol Duty Journey - Task List Page

  Background: : Common Steps - Alcohol Duty Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    And  I verify the return due date for "Latest Month Selected" on "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Alcohol to declare                       |
      | Declare adjustments from earlier returns |
      | Duty suspended deliveries                |
      | Your spirits and ingredients             |
      | Send return                              |
    And I should see the following status of the submission journey
      | Do you need to declare duty? | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Not started                             | Not started                                  | Not started                                |

  Scenario: 1. ADR Journey - To verify the status of the submission changes from 'Not started' to 'Completed' if the answer is set to 'No' at the Declare Alcohol Duty Question Page
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "No" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you don’t need to declare duty | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                                     | Not started                             | Not started                                  | Not started                                |

  Scenario: 2. ADR Journey - To verify the status of the submission changes to 'Not started' if the journey is incomplete
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started             | Not started              | Not started             | Not started                | Not started                                 | Not started                             | Not started                                  | Not started                                |

#Only beer scenario added for this - the rest are exactly the same
  Scenario: 3. ADR Journey - To verify the status of the submission to 'In progress' if the user not selects any options at the Product List Page
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    When I click on "Tell us about your beer" hyperlink on "Task List Page"
    Then I am presented with the "What Do You Need To Declare Beer Page"
    When I "select" checkbox "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer exceeding 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361),Beer between 3.5% and 8.4% ABV (tax type code 366),Beer between 1.3% and 3.4% ABV (tax type code 371),Beer between 3.5% and 8.4% ABV (tax type code 376)" on "What Do You Need To Declare Beer Page"
    And I click save and continue button on "What Do You Need To Declare Beer Page"
    Then I am presented with the "How Much You Need To Declare Beer Page"
    When I enter "945.55" for "Standard beer between 1.3% and 3.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "55.55" for "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "first" input box
    And I enter "898.34" for "Standard beer between 3.5% and 8.4% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "77.55" for "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "second" input box
    And I enter "667.32" for "Standard beer between 8.5% and 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "66.34" for "Standard beer between 8.5% and 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "third" input box
    And I enter "999.19" for "Standard beer exceeding 22% ABV - Total litres" on "How Much You Need To Declare Beer Page" at "fourth" input box
    And I enter "99.13" for "Standard beer exceeding 22% ABV - Pure alcohol" on "How Much You Need To Declare Beer Page" at "fourth" input box
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
    And I should see following details at the "Check Your Answers SPR Beer Page"
      | Description                                          | Total beer      | Total pure alcohol | Duty rate        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99 litres | 89.99 Lpa          | £19.00 per litre |
    When I click continue button on "Check Your Answers SPR Beer Page"
    Then I am presented with the "Multiple SPR List Question Beer Page"
    And I should see the following product details
      | Description                                          | Total volume declared | Pure alcohol declared | SPR duty rate    | Action        |
      | Non-draught beer between 1.3% and 3.4% ABV (361 SPR) | 9,999.99l             | 89.99 Lpa             | £19.00 per litre | Change Remove |
    When I enter redirect url for "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | In progress             | Not started              | Not started             | Not started                | Not started                                 | Not started                             | Not started                                  | Not started                                |

  Scenario: 4. DSD Journey - To verify the status of the submission changes from 'Not started' to 'Completed' if the answer is set to 'No' at the Declare Duty Suspended Deliveries Page
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | Do you need to declare any adjustments? | You don’t need to tell us about any duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Not started                             | Completed                                                     | Not started                                |

  Scenario: 5. DSD Journey - To verify the status of the submission changes to 'Not started' if the journey is incomplete
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "Yes" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Duty Suspended Deliveries Guidance Page"
    When I click back button on "Duty Suspended Deliveries Guidance Page"
    And I click back button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | Do you need to declare any adjustments? | You’ve told us you need to declare duty suspended deliveries | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Not started                             | Completed                                                    | Not started                                  | Not started                                |

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
      | Do you need to declare duty? | Do you need to declare any adjustments? | You’ve told us you need to declare duty suspended deliveries | Change the deliveries you’ve told us about | Tell us about your spirits and ingredients |
      | Not started                  | Not started                             | Completed                                                    | In progress                                | Not started                                |

  Scenario: 7. QSR Journey - To verify the status of the submission changes from 'Not started' to 'Completed' if the answer is set to 'No' at the Quarterly Spirits Returns Guidance Page
    When I click on "Tell us about your spirits and ingredients" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "No" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | You don’t need to tell us about any spirits or ingredients |
      | Not started                  | Not started                             | Not started                                  | Completed                                                  |

  Scenario: 8. QSR Journey - To verify the status of the submission changes to 'Not started' if the journey is incomplete
    When I click on "Tell us about your spirits and ingredients" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "Yes" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Total Of All Spirits Page"
    When I click back button on "Total Of All Spirits Page"
    And I click back button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | You’ve told us you need to declare spirits and ingredients | Tell us about your spirits and ingredients |
      | Not started                  | Not started                             | Not started                                  | Completed                                                  | Not started                                |

  Scenario: 9. QSR Journey - To verify the status of the submission to 'In progress' if the journey stops at midway
    When I click on "Tell us about your spirits and ingredients" hyperlink on "Task List Page"
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
    Then I am presented with the "Which Of These Spirits Have You Made Page"
    When I "select" checkbox "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other" on "Which Of These Spirits Have You Made Page"
    When I enter redirect url for "Task List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | You’ve told us you need to declare spirits and ingredients | Change the spirits and ingredients you’ve told us about |
      | Not started                  | Not started                             | Not started                                  | Completed                                                  | In progress                                             |

  Scenario: 10. QSR Journey - To verify quarterly spirits returns link is not visible for months other than March, June, Sep and Dec
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter redirectURL for "Previous Month Period Key"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page" with new url
    And  I verify the return due date for "Previous Month Selected" on "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Alcohol to declare                       |
      | Declare adjustments from earlier returns |
      | Duty suspended deliveries                |
      | Send return                              |

  Scenario: 11. Adjustments Journey - To verify different statuses at the Task List page
    When I click on "Do you need to declare any adjustments?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page"
    When I select radio button "No" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    Then I am presented with the "Task List Page"
#To verify the status from "Not started' to 'Completed' if the answer was set to 'No' at the Adjust Previous Return Page
    And I should see the following status of the submission journey
      | Do you need to declare duty? | You’ve told us you do not need to declare any adjustments | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                                 | Not started                                  | Not started                                |
#To verify the "Not started' status of 'Change the entries you’ve told us about' if the answer is set to 'Yes' at the Adjust Previous Return Page but the journey is incomplete
    When I click on "You’ve told us you do not need to declare any adjustments" hyperlink on "Task List Page"
    Then I am presented with the "Declare Adjustment Question Page" with new url
    When I select radio button "Yes" on "Declare Adjustment Question Page"
    And I click save and continue button on "Declare Adjustment Question Page"
    And I enter redirect url for "Task List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | You’ve told us you need to declare an adjustment | Change the entries you’ve told us about | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                        | Not started                             | Not started                                  | Not started                                |
