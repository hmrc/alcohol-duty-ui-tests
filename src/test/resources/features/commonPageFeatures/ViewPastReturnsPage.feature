@Test @AlcoholToDeclare @ViewPastReturnsPage
Feature: Alcohol Duty Journey - Task List Page

  Background: : Common Steps - Alcohol Duty Journey
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirectURL on "Auth Login Stub Page"
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

  Scenario: 1. ADR Journey - To verify the status of the return that is Due on View Past Returns Page
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I enter redirect url for "View Past Returns Page"
    Then I am presented with the "View Past Returns Page"
    And I should see the following subsections
      | Outstanding returns          |
      | Completed returns            |
    And I should see the below details for outstanding returns
      | Period        | Reference | Status        | Action        |
      | August 2023   | None      | DUE           | Submit return |

  Scenario: 2. ADR Journey - To verify the status of the return that is Overdue on View Past Returns Page
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I enter redirect url for "View Past Returns Page"
    Then I am presented with the "View Past Returns Page"
    And I should see the following subsections
      | Outstanding returns          |
      | Completed returns            |
    And I should see the below details for outstanding returns
      | Period        | Reference | Status        | Action        |
      | July 2023     | None      | OVERDUE       | Submit return |

  Scenario: 3. ADR Journey - To verify the status of the completed return on View Past Returns Page
    When I click on "Do you need to declare duty?" hyperlink on "Task List Page"
    Then I am presented with the "Declare Alcohol Duty Question Page"
    When I enter redirect url for "View Past Returns Page"
    Then I am presented with the "View Past Returns Page"
    And I should see the following subsections
      | Outstanding returns          |
      | Completed returns            |
    And I should see the below details for completed returns
      | Period        | Reference           | Status        | Action      |
      | April 2024    | XM002610011506      | COMPLETED     | View return |