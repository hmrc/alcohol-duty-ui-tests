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
    When I click on "Have you produced spirits from raw materials?" hyperlink on "Task List Page"
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
    Then I am presented with the "Which Of These Spirits Have You Made Page"
    When I "select" checkbox "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer" on "Which Of These Spirits Have You Made Page"
    And I click save and continue button on "Which Of These Spirits Have You Made Page"
    Then I am presented with the "How Much Grain Have You Used Page"
    When I enter "444.44" for "Malted barley" on "How Much Grain Have You Used Page"
    And I enter "555.55" for "Wheat" on "How Much Grain Have You Used Page"
    And I enter "666.66" for "Maize" on "How Much Grain Have You Used Page"
    And I enter "777.77" for "Rye" on "How Much Grain Have You Used Page"
    And I enter "888.88" for "Unmalted grain" on "How Much Grain Have You Used Page"
    And I select radio button "No" on "How Much Grain Have You Used Page"
    And I click save and continue button on "How Much Grain Have You Used Page"
    Then I am presented with the "How Much Alcohol Have You Used Page"
    When I enter "147.99" for "Beer" on "How Much Alcohol Have You Used Page"
    And I enter "258.99" for "Wine" on "How Much Alcohol Have You Used Page"
    And I enter "369.99" for "Made-wine" on "How Much Alcohol Have You Used Page"
    And I enter "123.99" for "Cider or perry" on "How Much Alcohol Have You Used Page"
    And I click save and continue button on "How Much Alcohol Have You Used Page"
    Then I am presented with the "Declare Ethylene Gas Or Molasses Page"
    When I enter "898.88" for "Ethylene Gas" on "Declare Ethylene Gas Or Molasses Page"
    And I enter "879.99" for "Molasses" on "Declare Ethylene Gas Or Molasses Page"
    And I select radio button "No" on "Declare Ethylene Gas Or Molasses Page"
    And I click save and continue button on "Declare Ethylene Gas Or Molasses Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    And I should see following details at the "Quarterly Spirits Check Your Answers Page"
      | Total of all spirits | Total of Scotch whisky | Total of Irish whiskey | Type of spirits                                                                | Malted barley | Wheat         | Maize         | Rye           | Unmalted Grain | Beer          | Wine          | Made-wine     | Cider/perry   | Ethylene gas  | Molasses      |
      | 111.11 litres        | 222.22 litres          | 333.33 litres          | Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer | 444.44 tonnes | 555.55 tonnes | 666.66 tonnes | 777.77 tonnes | 888.88 tonnes  | 147.99 litres | 258.99 litres | 369.99 litres | 123.99 litres | 898.88 tonnes | 879.99 tonnes |
#To verify 'Change' link functionality for Total of all spirits
    When I click "Change total of all spirits" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Total Of All Spirits Page" with new url
    When I enter "111.99" on "Total Of All Spirits Page"
    And I click save and continue button on "Total Of All Spirits Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
#To verify 'Change' link functionality for Total of Scotch whisky
    When I click "Change total of Scotch whisky" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Declare Whiskey Page" with new url
    When I enter "222.99" for "Scotch Whisky" on "Declare Whiskey Page"
    And I enter "333.99" for "Irish Whiskey" on "Declare Whiskey Page"
    And I click save and continue button on "Declare Whiskey Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
#To verify 'Change' link functionality for Type of spirits
    When I click "Change type of spirits" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Which Of These Spirits Have You Made Page" with new url
    When I "select" checkbox "Grain spirits,Other" on "Which Of These Spirits Have You Made Page"
    And I click save and continue button on "Which Of These Spirits Have You Made Page"
    Then I am presented with the "Declare Other Spirits Produced Page" with new url
    When I enter "Test Spirits" on "Declare Other Spirits Produced Page"
    And I click save and continue button on "Declare Other Spirits Produced Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
#To verify 'Change' link functionality for Maize
    When I click "Change maize" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "How Much Grain Have You Used Page" with new url
    And I enter "666.99" for "Maize" on "How Much Grain Have You Used Page"
    And I select radio button "Yes" on "How Much Grain Have You Used Page"
    And I click save and continue button on "How Much Grain Have You Used Page"
    Then I am presented with the "Declare Other Malted Grains Page" with new url
    When I enter "Test Grain" for "Other Malted Grains Types" on "Declare Other Malted Grains Page"
    And I enter "999.99" for "Other Malted Grains Quantity" on "Declare Other Malted Grains Page"
    And I click save and continue button on "Declare Other Malted Grains Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
#To verify 'Change' link functionality for Test Grain
    When I click "Change test grain" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Declare Other Malted Grains Page" with new url
    When I enter "Test Grain2" for "Other Malted Grains Types" on "Declare Other Malted Grains Page"
    And I enter "100.99" for "Other Malted Grains Quantity" on "Declare Other Malted Grains Page"
    And I click save and continue button on "Declare Other Malted Grains Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
#To verify 'Change' link functionality for Beer
    When I click "Change beer" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "How Much Alcohol Have You Used Page" with new url
    When I enter "199.99" for "Beer" on "How Much Alcohol Have You Used Page"
    And I click save and continue button on "How Much Alcohol Have You Used Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
#To verify 'Change' link functionality for Molasses
    When I click "Change molasses" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Declare Ethylene Gas Or Molasses Page" with new url
    And I enter "999.99" for "Molasses" on "Declare Ethylene Gas Or Molasses Page"
    And I select radio button "Yes" on "Declare Ethylene Gas Or Molasses Page"
    And I click save and continue button on "Declare Ethylene Gas Or Molasses Page"
    Then I am presented with the "Declare Other Ingredients Page" with new url
    When I enter "Test Other Ingredients" for "Other Ingredients Used Types" on "Declare Other Ingredients Page"
    And I enter "969.99" for "Other Ingredients Used Quantity" on "Declare Other Ingredients Page"
    And I click save and continue button on "Declare Other Ingredients Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
#To verify 'Change' link functionality for Test Other Ingredients
    When I click "Change test other ingredients" on "Quarterly Spirits Check Your Answers Page"
    Then I am presented with the "Declare Other Ingredients Page" with new url
    And I click save and continue button on "Declare Other Ingredients Page"
    Then I am presented with the "Quarterly Spirits Check Your Answers Page"
    And I should see following details at the "Quarterly Spirits Check Your Answers Page"
      | Total of all spirits | Total of Scotch whisky | Total of Irish whiskey | Type of spirits                                                                              | Other spirits produced | Malted barley | Wheat         | Maize         | Rye           | Unmalted Grain | Test Grain2   | Beer          | Wine          | Made-wine     | Cider/perry   | Ethylene gas  | Molasses      | Test Other Ingredients |
      | 111.99 litres        | 222.99 litres          | 333.99 litres          | Grain spirits,Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer | Test Spirits           | 444.44 tonnes | 555.55 tonnes | 666.99 tonnes | 777.77 tonnes | 888.88 tonnes  | 100.99 tonnes | 199.99 litres | 258.99 litres | 369.99 litres | 123.99 litres | 898.88 tonnes | 999.99 tonnes | 969.99 tonnes          |

  Scenario: 2. QSR Journey - To verify quarterly spirits returns link is not visible for months other than March, June, Sep and Dec
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Alcohol Duty Service"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    When I enter redirect url for "Previous Month Period Key"
    Then I am presented with the "Before You Start Page" with new url
    And  I verify the return due date for "Previous Month Selected" on "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    And I should see the following subsections
      | Declare duty on your alcoholic products   |
      | Declare adjustments from previous returns |
      | Report duty suspended alcohol deliveries  |
      | Send return                               |