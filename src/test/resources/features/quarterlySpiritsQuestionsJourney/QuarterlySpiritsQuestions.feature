@Test @QuarterlySpiritsQuestions
Feature: Quarterly Spirits Questions

  Background: Common steps - Quarterly Spirits Journey
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
    When I click on "Tell us about your spirits and ingredients" hyperlink on "Task List Page"
    Then I am presented with the "Quarterly Spirits Returns Guidance Page"

  @ZAP @a11y
  Scenario: Quarterly Spirits Questions Journey- Happy path - With option 'Yes'
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
    And I click save and continue button on "Which Of These Spirits Have You Made Page"
    Then I am presented with the "Declare Other Spirits Produced Page"
    When I enter "Test Spirits" on "Declare Other Spirits Produced Page"
    And I click save and continue button on "Declare Other Spirits Produced Page"
    Then I am presented with the "How Much Grain Have You Used Page"
    When I enter "222.22" for "Malted barley" on "How Much Grain Have You Used Page"
    And I enter "333.33" for "Wheat" on "How Much Grain Have You Used Page"
    And I enter "444.44" for "Maize" on "How Much Grain Have You Used Page"
    And I enter "555.55" for "Rye" on "How Much Grain Have You Used Page"
    And I enter "666.66" for "Unmalted grain" on "How Much Grain Have You Used Page"
    And I select radio button "Yes" on "How Much Grain Have You Used Page"
    And I click save and continue button on "How Much Grain Have You Used Page"
    Then I am presented with the "Declare Other Malted Grains Page"
    When I enter "Test Grain" for "Other Malted Grains Types" on "Declare Other Malted Grains Page"
    And I enter "156.54" for "Other Malted Grains Quantity" on "Declare Other Malted Grains Page"
    And I click save and continue button on "Declare Other Malted Grains Page"
    Then I am presented with the "How Much Alcohol Have You Used Page"
    When I enter "555.55" for "Beer" on "How Much Alcohol Have You Used Page"
    And I enter "666.66" for "Wine" on "How Much Alcohol Have You Used Page"
    And I enter "777.77" for "Made-wine" on "How Much Alcohol Have You Used Page"
    And I enter "888.88" for "Cider or perry" on "How Much Alcohol Have You Used Page"
    And I click save and continue button on "How Much Alcohol Have You Used Page"
    Then I am presented with the "Declare Ethylene Gas Or Molasses Page"
    When I enter "465.55" for "Ethylene Gas" on "Declare Ethylene Gas Or Molasses Page"
    And I enter "745.66" for "Molasses" on "Declare Ethylene Gas Or Molasses Page"
    And I select radio button "Yes" on "Declare Ethylene Gas Or Molasses Page"
    And I click save and continue button on "Declare Ethylene Gas Or Molasses Page"
    Then I am presented with the "Declare Other Ingredients Page"
    When I enter "Test Other Ingredients" for "Other Ingredients Used Types" on "Declare Other Ingredients Page"
    And I enter "2045.55" for "Other Ingredients Used Quantity" on "Declare Other Ingredients Page"
    And I click save and continue button on "Declare Other Ingredients Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    And I should see following details at the "Quarterly Spirits Check Your Answers Page"
      | Total of all spirits | Total of Scotch whisky | Total of Irish whiskey | Type of spirits                                                                | Other spirits produced | Malted barley | Wheat         | Maize         | Rye           | Unmalted Grain | Test Grain    | Beer          | Wine          | Made-wine     | Cider/perry   | Ethylene gas  | Molasses      | Test Other Ingredients |
      | 99 litres            | 10.55 litres           | 20.67 litres           | Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer | Test Spirits           | 222.22 tonnes | 333.33 tonnes | 444.44 tonnes | 555.55 tonnes | 666.66 tonnes  | 156.54 tonnes | 555.55 litres | 666.66 litres | 777.77 litres | 888.88 litres | 465.55 tonnes | 745.66 tonnes | 2045.55 tonnes         |
    When I click save and continue button on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | Do you need to declare duty? | Tell us about your duty suspended deliveries | You’ve told us you need to declare spirits and ingredients | Change the spirits and ingredients you’ve told us about |
      | Not started                  | Not started                                  | Completed                                                  | Completed                                               |

  Scenario: Quarterly Spirits Questions Journey- Happy path - With option 'No'
    When I select radio button "No" on "Quarterly Spirits Returns Guidance Page"
    And I click save and continue button on "Quarterly Spirits Returns Guidance Page"
    Then I am presented with the "Task List Page"