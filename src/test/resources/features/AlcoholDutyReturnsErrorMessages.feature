@Test
Feature: Alcohol Duty Returns Journey - Error Messages

  Background: Alcohol Duty Returns Journey - Common Steps
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"

  Scenario Outline:1- Alcohol Duty Returns Journey - Error Message Validations - Product Name Page
    Then I am presented with the "Product Name Page"
    When I click save and continue button on "Product Name Page"
    Then I am presented with the "Product Name Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I enter "<longName>" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Product Name Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage2>"

    Examples:
      | errorMessageHeader | longName                                              | errorMessage1                                | errorMessage2                              |
      | There is a problem | TestName TestName TestName TestName TestName TestName | Enter the name you want to give this product | Product name must be 50 characters or less |

  Scenario Outline:2- Alcohol Duty Returns Journey - Error Message Validations - Alcohol By Volume Page
    Then I am presented with the "Product Name Page"
    When I enter "<correctName>" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Alcohol By Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I enter "<invalidCharacters>" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Alcohol By Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage2>"
    When I enter "<numberTooBig>" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Alcohol By Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage3>"
    When I enter "<numberTooLow>" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Alcohol By Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage4>"
    When I enter "<tooManyDecimals>" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Alcohol By Volume Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage5>"
    When I enter "<correctVolume>" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"

    Examples:
      | errorMessageHeader | correctName | invalidCharacters | numberTooBig | numberTooLow | correctVolume | tooManyDecimals | errorMessage1                                         | errorMessage2                                                    | errorMessage3                                                       | errorMessage4                                                        | errorMessage5                                                                 |
      | There is a problem | TestName    | test              | 999          | 0            | correctVolume | 0.0001          | Enter this product’s Alcohol by Volume (ABV) strength | This product’s Alcohol by Volume (ABV) strength must be a number | This product’s Alcohol by Volume (ABV) strength must be 100 or less | This product’s Alcohol by Volume (ABV) strength must be 0.01 or more | This product’s Alcohol by Volume (ABV) must be a number to two decimal places |

  Scenario Outline:3- Alcohol Duty Returns Journey - Error Message Validations - Draught Relief Question Page
    Then I am presented with the "Product Name Page"
    When I enter "<correctName>" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "<correctVolume>" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Draught Relief Question Page" error page
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"

    Examples:
      | errorMessageHeader | correctName | correctVolume | errorMessage1                                             |
      | There is a problem | TestName    | 5             | Select yes if this product is eligible for Draught Relief |

  Scenario Outline:4- Alcohol Duty Returns Journey - Error Message Validations - Small Relief Producer Question Page
    Then I am presented with the "Product Name Page"
    When I enter "<correctName>" on "Product Name Page"
    And I click save and continue button on "Product Name Page"
    Then I am presented with the "Alcohol By Volume Page"
    When I enter "<correctVolume>" on "Alcohol By Volume Page"
    And I click save and continue button on "Alcohol By Volume Page"
    Then I am presented with the "Draught Relief Question Page"
    When I select radio button "Yes" on "Draught Relief Question Page"
    And I click save and continue button on "Draught Relief Question Page"
    Then I am presented with the "Small Relief Producer Question Page"
    When I click save and continue button on "Small Relief Producer Question Page"
    And The error summary title is "<errorMessageHeader>" and the error message is "<errorMessage1>"
    When I select radio button "Yes" on "Small Relief Producer Question Page"
    And I click save and continue button on "Small Relief Producer Question Page"
#   Then I am presented with the "Tax Type Page"

    Examples:
      | errorMessageHeader | correctName | correctVolume | errorMessage1                                                    |
      | There is a problem | TestName    | 5             | Select yes if this product is eligible for Small Producer Relief |

