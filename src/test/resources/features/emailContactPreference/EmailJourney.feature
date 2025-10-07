@EmailContactPreference @ECPTests
Feature: Change contact preference from BTA for Alcohol Duty Returns


  Background: : Common Steps - Alcohol duty journey is redirected to Business Tax Account
    Given I cleared the data for ECP service
    When I navigate to the "Auth Login Stub Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"


  Scenario:1. Email Contact preference Journey - Happy Path
#User on post with email in system-- Change from Post to Email
    And I enter redirect URL on Auth Login Stub Page for "Email Contact Preference"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP1000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Email me when I have a digital message" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Existing Email Page"
    When I select radio button "Yes" on "ECP Existing Email Page"
    And I click continue button on "ECP Existing Email Page"
    Then I am presented with the "ECP Check Your Answers Page"
    And I should see the following Preference details
      | How would you like to be contacted?    | Email address        |
      | Email me when I have a digital message | john.doe@example.com |
    Then I click ECPSubmit on "ECP Check Your Answers Page"
    Then I am presented with the "ECP Confirmation Page"
    And the page source for ECP contains "Your contact preference has been updated"


  Scenario:2. Email Contact preference Journey - Happy Path
#User on post with email in system-- stay in post
    And I enter redirect URL on Auth Login Stub Page for "Email Contact Preference"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP1000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    When I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Send me letters by post" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Enrolled Letters Page"

  Scenario:3. Email Contact preference Journey
#User is on email and Change to Post
    And I enter redirect URL on Auth Login Stub Page for "Email Contact Preference"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP5000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    When I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Send me letters by post" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Correspondence Address Page"
    And I should see the following Preference details
      | Address                                       |
      | Flat 123,1 Example Road,Toronto,P55555,Canada |
    And I click continue button on "ECP Correspondence Address Page"
    Then I am presented with the "ECP Check Your Answers Page"
    And I should see the following Preference details
      | How would you like to be contacted? | Address                                       |
      | Send me letters by post             | Flat 123,1 Example Road,Toronto,P55555,Canada |
    And I click ECPSubmit on "ECP Check Your Answers Page"
    And I am presented with the "ECP Confirmation Page"
    And the page source for ECP contains "Your contact preference has been updated"


  Scenario:4. Email Contact preference Journey - User already on email and Updating to new email address
    #with verified email in ETMP
    And I enter redirect URL on Auth Login Stub Page for "Email Contact Preference"
    And I enter CredID "cred0" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    When I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Email me when I have a digital message" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Enrolled Email Page"
    And I click update email address link on "ECP Enrolled Email Page"
    Then I am presented with the "Enter Email Address Page"
    When I enter email address "jane.doe2@example.com" on "Enter Email Address Page"
    And I click continue button on "Enter Email Address Page"
    Then I am presented with the "ECP Check Your Answers Page"
    When I click ECPSubmit on "ECP Check Your Answers Page"
    Then I am presented with the "ECP Confirmation Page"

  Scenario:5. User on post (with verified email in ETMP), changing to email
  unsuccessfully (email locked)
    And I enter redirect URL on Auth Login Stub Page for "Email Contact Preference"
    And I enter CredID "cred0" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP1002100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    When I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Email me when I have a digital message" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Existing Email Page"
    And I select radio button "No, I want to use a different email" on "ECP Existing Email Page"
    And I click continue button on "ECP Existing Email Page"
    Then I am presented with the "Enter Email Address Page"
    And I enter email address "jane.doe@example.com" on "Enter Email Address Page"
    And I click continue button on "Enter Email Address Page"
    Then I am presented with the "ECP Confirmation Code Limit Page"


  Scenario:6. User on email, updating email (enters same email as existing one)
    And I enter CredID "cred0" on "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Email Update"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP0002100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "ECP Existing Email Page"
    And I select radio button "No, I want to use a different email" on "ECP Existing Email Page"
    And I click continue button on "ECP Existing Email Page"
    Then I am presented with the "Enter Email Address Page"
    And I enter email address "john.doe@example.com" on "Enter Email Address Page"
    And I click continue button on "Enter Email Address Page"
    Then I am presented with the "ECP Check Your Answers Page"
    When I click ECPSubmit on "ECP Check Your Answers Page"
    Then I am presented with the "ECP Confirmation Email Page"

  Scenario:7. Email Contact preference Journey - User on Post and changing to new email address
    #no email in ETMP
    And I enter redirect URL on Auth Login Stub Page for "Email Contact Preference"
    And I enter CredID "cred0" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP9002100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    When I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Email me when I have a digital message" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "Enter Email Address Page"
    When I enter email address "john.doe@example.com" on "Enter Email Address Page"
    And I click continue button on "Enter Email Address Page"
    Then I am presented with the "ECP Check Your Answers Page"
    When I click ECPSubmit on "ECP Check Your Answers Page"
    Then I am presented with the "ECP Confirmation Page"


  Scenario:8. Bounced email
    And I enter CredID "cred0" on "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Email Bounce"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP3002100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "ECP Email Error Page"
    And I click continue button on "ECP Email Error Page"
    And I am presented with the "Enter Email Address Page"
    And I enter email address "jane.doe2@example.com" on "Enter Email Address Page"
    And I click continue button on "Enter Email Address Page"
    Then I am presented with the "ECP Check Your Answers Page"
    When I click ECPSubmit on "ECP Check Your Answers Page"
    Then I am presented with the "ECP Confirmation Page"


  Scenario Outline:9. Email Contact preference Journey - Error Message
    And I enter redirect URL on Auth Login Stub Page for "Email Contact Preference"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP9002100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    And I should see the "<errorMessageHeader>" and below error messages
      | Select how you would like to be contacted |
    And I select radio button "Email me when I have a digital message" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "Enter Email Address Page"
    And I click continue button on "Enter Email Address Page"
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter an email address |
    Examples:
      | errorMessageHeader |
      | There is a problem |

  Scenario Outline:10. Email Contact preference Journey - Error Message
    And I enter redirect URL on Auth Login Stub Page for "Email Contact Preference"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP1000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Email me when I have a digital message" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Existing Email Page"
    And I click continue button on "ECP Existing Email Page"
    And I should see the "<errorMessageHeader>" and below error messages
      | Select ‘Yes’ if john.doe@example.com is your email |


    Examples:
      | errorMessageHeader |
      | There is a problem |

  Scenario Outline:11. Email Contact preference Journey - Error Message
    And I enter redirect URL on Auth Login Stub Page for "Email Contact Preference"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP1000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Email me when I have a digital message" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Existing Email Page"
    When I select radio button "No, I want to use a different email" on "ECP Existing Email Page"
    And I click continue button on "ECP Existing Email Page"
    Then I am presented with the "Enter Email Address Page"
    And I click continue button on "Enter Email Address Page"
    And I should see the "<errorMessageHeader>" and below error messages
      | Enter an email address |


    Examples:
      | errorMessageHeader |
      | There is a problem |











