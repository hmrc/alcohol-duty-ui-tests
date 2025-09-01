@Test @AllTests @QuarterlySpiritsQuestions
Feature: Quarterly Spirits Journey - Change Links - CYA Page

  Scenario:1. To verify the change link functionality at Check Your Answers page - Quarterly Spirits Journey
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
    When I click on "Tell us about spirits produced in the past three months" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"
    When I select radio button "Yes" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Total Of All Spirits Page"
    When I enter "111.11" on "Total Of All Spirits Page"
    And I click save and continue button on "Total Of All Spirits Page"
    Then I am presented with the "Declare Whiskey Page"
    When I enter "222.22" for "Scotch Whisky" on "Declare Whiskey Page"
    And I enter "333.33" for "Irish Whiskey" on "Declare Whiskey Page"
    And I click save and continue button on "Declare Whiskey Page"
    Then I am presented with the "Which Of These Spirits Have You Produced Page"
    When I "select" checkbox "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits" on "Which Of These Spirits Have You Produced Page"
    And I click save and continue button on "Which Of These Spirits Have You Produced Page"
    Then I am presented with the "Declare Other Spirits Produced Page"
    When I enter "Test Spirits" on "Declare Other Spirits Produced Page"
    And I click save and continue button on "Declare Other Spirits Produced Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    And I should see following details at the "Quarterly Spirits Check Your Answers Page"
      | Total of all spirits          | Scotch Whisky                 | Irish Whiskey                 | Type of spirits                                                                              | Other spirits produced |
      | 111.11 litres of pure alcohol | 222.22 litres of pure alcohol | 333.33 litres of pure alcohol | Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits | Test Spirits           |
#To verify 'Change' link functionality for Total of all spirits
    When I click "Change total of all spirits" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Total Of All Spirits Page" with new url
    When I enter "111.99" on "Total Of All Spirits Page"
    And I click save and continue button on "Total Of All Spirits Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
#To verify 'Change' link functionality for Total of Scotch Whisky
    When I click "Change Scotch Whisky" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Declare Whiskey Page" with new url
    When I enter "222.99" for "Scotch Whisky" on "Declare Whiskey Page"
    And I enter "333.99" for "Irish Whiskey" on "Declare Whiskey Page"
    And I click save and continue button on "Declare Whiskey Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
#To verify 'Change' link functionality for Type of spirits
    When I click "Change type of spirits" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Which Of These Spirits Have You Produced Page" with new url
    When I "select" checkbox "Grain spirits" on "Which Of These Spirits Have You Produced Page"
    And I click save and continue button on "Which Of These Spirits Have You Produced Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    #To verify 'Change' link functionality for Other spirits produced
    When I click "Change other spirits produced" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Declare Other Spirits Produced Page" with new url
    When I enter "Test Spirits1" on "Declare Other Spirits Produced Page"
    And I click save and continue button on "Declare Other Spirits Produced Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    And I should see following details at the "Quarterly Spirits Check Your Answers Page"
      | Total of all spirits          | Scotch Whisky                 | Irish Whiskey                 | Type of spirits                                                                                            | Other spirits produced |
      | 111.99 litres of pure alcohol | 222.99 litres of pure alcohol | 333.99 litres of pure alcohol | Grain spirits,Other spirits,Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer | Test Spirits1          |
#To verify removal of Other spirits option
    When I click "Change type of spirits" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Which Of These Spirits Have You Produced Page" with new url
    When I "select" checkbox "Other spirits" on "Which Of These Spirits Have You Produced Page"
    And I click save and continue button on "Which Of These Spirits Have You Produced Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    And I should see following details at the "Quarterly Spirits Check Your Answers Page"
      | Total of all spirits          | Scotch Whisky                 | Irish Whiskey                 | Type of spirits                                                                              |
      | 111.99 litres of pure alcohol | 222.99 litres of pure alcohol | 333.99 litres of pure alcohol | Malt spirits,Grain spirits,Neutral spirits of agricultural origin,Spirits produced from beer |

  Scenario: 2. QSR Journey - To verify quarterly spirits returns link is visible for months January, April, July and October
    Given I cleared the data for the service
#   Use previous period with quarterly spirits
    When I enter redirect url for "Previous Spirits Period Key"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    And I verify the return due date for "Latest Month Selected" on "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Declare alcoholic products for duty       |
      | Declare adjustments from previous returns |
      | Report duty suspended alcohol deliveries  |
      | Report spirits production                 |
      | Send return                               |

  Scenario: 3. QSR Journey - To verify quarterly spirits returns link NOT visible other than months January, April, July and October
    Given I cleared the data for the service
    When I enter redirect url for "Previous Month Period Key"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "ABBCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page" with new url
    And I verify the return due date for "Previous Month Selected" on "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Declare alcoholic products for duty       |
      | Declare adjustments from previous returns |
      | Report duty suspended alcohol deliveries  |
      | Send return                               |
