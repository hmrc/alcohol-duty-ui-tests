@Test @AllTests @UnauthenticatedJourney
Feature: Alcohol To Declare Page

  Background: : Common Steps - Alcohol to declare page
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"

  @ZAP @a11y
  Scenario:1. Alcohol to declare page - user with all regimes approvals
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    And I should see the following alcohol types
      | Beer                     |
      | Cider                    |
      | Wine                     |
      | Spirits                  |
      | Other fermented products |
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page" error page
    And I should see the "There is a problem" and below error messages
      | Select the types of alcoholic products you need to declare |
    When I "select" checkbox "Beer,Cider,Wine,Spirits,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Tell us about your cider | Tell us about your wine | Tell us about your spirits | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries | Tell us about your spirits and ingredients |
      | Completed                               | Not started             | Not started              | Not started             | Not started                | Not started                                 | Not started                             | Not started                                  | Not started                                |

  Scenario:2. Alcohol to declare page - user with 'Wine' and 'Other Fermented Product' approvals
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000111208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "What Alcohol Do You Need To Declare Page"
    And I should see the following alcohol types
      | Wine                     |
      | Other fermented products |
    When I "select" checkbox "Wine,Other fermented products" on "What Alcohol Do You Need To Declare Page"
    And I click save and continue button on "What Alcohol Do You Need To Declare Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your wine | Tell us about your other fermented products | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries |
      | Completed                               | Not started             | Not started                                 | Not started                             | Not started                                  |

  Scenario:3. Alcohol to declare page - user with only one approval should be redirected Task List page
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000014208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Before You Start Page"
    When I click continue button on "Before You Start Page"
    Then I am presented with the "Task List Page"
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I select radio button "Yes" on "Declare Alcohol Duty Question Page"
    And I click save and continue button on "Declare Alcohol Duty Question Page"
    Then I am presented with the "Task List Page"
    And I should see the following status of the submission journey
      | You’ve told us you need to declare duty | Tell us about your beer | Do you need to declare any adjustments? | Tell us about your duty suspended deliveries |
      | Completed                               | Not started             | Not started                             | Not started                                  |

