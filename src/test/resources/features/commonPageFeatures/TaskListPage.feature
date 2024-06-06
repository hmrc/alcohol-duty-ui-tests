@Test @AlcoholToDeclare @TaskListPage
Feature: Alcohol Duty Journey - Task List Page

  Background: : Common Steps - Alcohol Duty Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000000208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    And  I verify the return due date displayed as "Use this service to submit your Alcohol Duty return for 1 Mar 2024 to 31 Mar 2024." on "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Alcohol to declare           |
      | Duty suspended deliveries    |
      | Your spirits and ingredients |
    And I should see the following status of the submission journey
      | Do you need to declare duty? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Not started                                  | Not started                                |

  Scenario: 1. ADR Journey - To verify the status of the submission changes from 'Not started' to 'Completed' if the answer is set to 'No' at the Declare Alcohol Duty Question Page
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "No" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you don’t need to declare duty | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                                     | Not started                                  | Not started                                |

  Scenario: 2. ADR Journey - To verify the status of the submission changes to 'Not started' if the journey is incomplete
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click back button on "Product Entry Guidance Page"
    And I click back button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your products | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started                 | Not started                                  | Not started                                |

  Scenario: 3. ADR Journey - To verify the status of the submission to 'In progress' if the user not selects any options at the Product List Page
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Product Entry Guidance Page"
    When I click continue button on "Product Entry Guidance Page"
    Then I am presented with the "Product Name Page"
    When I enter "TestName" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "9" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Tax Type Page"
    And I can see below tax type codes on the "Tax Type Page"
      | Beer, tax type code 331                     |
      | Wine, tax type code 333                     |
      | Other fermented products, tax type code 334 |
      | Spirits, tax type code 335                  |
    When I select radio button "Wine, tax type code 333" on "Tax Type Page"
    And I click save and continue button on "Tax Type Page"
    Then I am presented with the "Product Volume Page"
    When I enter "100" on "Product Volume Page"
    And I click save and continue button on "Product Volume Page"
    Then I am presented with the "Duty Due Page"
    When I click continue button on "Duty Due Page"
    Then I am presented with the "Check Your Answers Page"
    And I should see the following details
      | Name     | Alcohol strength | Tax type code | Volume     | Pure alcohol | Duty rate        | Duty due |
      | TestName | 9% ABV           | 333           | 100 litres | 9 litres     | £28.50 per litre | £256.50  |
    When I click save and continue button on "Check Your Answers Page"
    Then I am presented with the "Product List Page"
    When I enter redirect url for "Task List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Change the products you’ve told us about | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | In progress                              | Not started                                  | Not started                                |

  Scenario: 4. DSD Journey - To verify the status of the submission changes from 'Not started' to 'Completed' if the answer is set to 'No' at the Declare Duty Suspended Deliveries Page
    When I click on "Tell us about your duty suspended deliveries" hyperlink on "Task List Page"
    Then I am presented with the "Declare Duty Suspended Deliveries Page"
    When I select radio button "No" on "Declare Duty Suspended Deliveries Page"
    And I click save and continue button on "Declare Duty Suspended Deliveries Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | You don’t need to tell us about any duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                                     | Not started                                |

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
      | Do you need to declare duty? | You’ve told us you need to declare duty suspended deliveries | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                                    | Not started                                  | Not started                                |

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
      | Do you need to declare duty? | You’ve told us you need to declare duty suspended deliveries | Change the deliveries you’ve told us about | Tell us about your spirits and ingredients |
      | Not started                  | Completed                                                    | In progress                                | Not started                                |

  Scenario: 7. QSR Journey - To verify the status of the submission changes from 'Not started' to 'Completed' if the answer is set to 'No' at the Quarterly Spirits Returns Guidance Page
    When I click on "Tell us about your spirits and ingredients" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "No" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | Tell us about your duty suspended deliveries | You don’t need to tell us about any spirits or ingredients |
      | Not started                  | Not started                                  | Completed                                                  |

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
      | Do you need to declare duty? | Tell us about your duty suspended deliveries | You’ve told us you need to declare spirits and ingredients | Tell us about your spirits and ingredients |
      | Not started                  | Not started                                  | Completed                                                  | Not started                                |

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
    When I select checkbox "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other" on "Which Of These Spirits Have You Made Page"
    When I enter redirect url for "Task List Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | Tell us about your duty suspended deliveries | You’ve told us you need to declare spirits and ingredients | Change the spirits and ingredients you’ve told us about |
      | Not started                  | Not started                                  | Completed                                                  | In progress                                             |

  Scenario: 10. QSR Journey - To verify quarterly spirits returns link is not visible for months other than March, June, Sep and Dec
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter redirectURL with Feb Period Key on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000000208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page" with new url
    And  I verify the return due date displayed as "Use this service to submit your Alcohol Duty return for 1 Feb 2024 to 29 Feb 2024." on "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Alcohol to declare        |
      | Duty suspended deliveries |
