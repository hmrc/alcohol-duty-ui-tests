@EmailContactPreference
Feature: Change contact preference from BTA for Alcohol Duty Returns


  Background: : Common Steps - Alcohol duty journey is redirected to Business Tax Account
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Email Contact Preference"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
#    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP1000100211" on "Auth Login Stub Page"
#    And I click submit button on "Auth Login Stub Page"
#    Then I am presented with the "How Would You Like To Be Contacted Page"

 @Test
  Scenario:1. Email Contact preference Journey - Happy Path
#User on post with email in system-- Change from Post to Email
   And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP1000100211" on "Auth Login Stub Page"
   And I click submit button on "Auth Login Stub Page"
   Then I am presented with the "How Would You Like To Be Contacted Page"
    When I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Email me when I have a digital message" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Existing Email Page"
    When I select radio button "Yes" on "ECP Existing Email Page"
    And I click continue button on "ECP Existing Email Page"
    Then I am presented with the "ECP Check Your Answers Page"
    And I should see the following Preference details
      | How would you like to be contacted?    | Email address|
      | Email me when I have a digital message  | john.doe@example.com |
    Then I click ECPSubmit on "ECP Check Your Answers Page"
    Then I am presented with the "ECP Confirmation Page"
   And the page source for ECP contains "Your contact preference has been updated"


  Scenario:2. Email Contact preference Journey - Happy Path
#User on post with email in system-- stay in post
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP1000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    When I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Send me letters by post" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Enrolled Letters Page"
#     And I am presented with the message  "We will send messages about your Alcohol Duty return to your correspondence address" on "ECP Enrolled Letters Page"

  Scenario:3. Email Contact preference Journey
##User is on email and Change to Post
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP5000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    When I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Send me letters by post" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Correspondence Address Page"
     And I should see the following Preference details
      | Address                                      |
      |Flat 123,1 Example Road,Toronto,P55555,Canada |
     And I click continue button on "ECP Correspondence Address Page"
     Then I am presented with the "ECP Check Your Answers Page"
    And I should see the following Preference details
     | How would you like to be contacted? |  Address |
     | Send me letters by post             |Flat 123,1 Example Road,Toronto,P55555,Canada |
      And I click ECPSubmit on "ECP Check Your Answers Page"
      And I am presented with the "ECP Confirmation Page"
      And the page source for ECP contains "Your contact preference has been updated"


  Scenario:4. Email Contact preference Journey - Happy Path - Update to new email address
    #Yes - Existing email page
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP1000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    When I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Email me when I have a digital message" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"
    Then I am presented with the "ECP Existing Email Page"
    When I select radio button "No, I want to use a different email" on "ECP Existing Email Page"
    And I click continue button on "ECP Existing Email Page"
    Then I am presented with the "Enter Email Address Page"
    When I enter "jane.doe@example.com" on "Enter Email Address Page"
#    Then I am presented with the "ECP Confirmation Code Limit Page"

  Scenario:5. User on post (with verified email in ETMP), changing to email
  unsuccessfully (email locked)
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "XMADP1000100211" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "How Would You Like To Be Contacted Page"
    When I am presented with the "How Would You Like To Be Contacted Page"
    And I select radio button "Email me when I have a digital message" on "How Would You Like To Be Contacted Page"
    And I click continue button on "How Would You Like To Be Contacted Page"


 Scenario Outline:6. Email Contact preference Journey - Error Message
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
      |There is a problem  |

  Scenario Outline:7. Email Contact preference Journey - Error Message
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
      |There is a problem  |

  Scenario Outline:8. Email Contact preference Journey - Error Message
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
      |There is a problem  |





#    When I am presented with the "Business Tax Account Page"
#    And I click on "Update email address" hyperlink on "Business Tax Account Page"
#    Then I am presented with the "Is test@gmail.com your email?"
#    When I select radio button "Yes" on "existing-email page"
#    And I click continue button on "existing-email page"
#    Then I am presented with the "Is test@gmail.com your email?"
#    Then I am presented with the "Update email address Check Your Answers page"
#    And I should see the following details
#      | How would you like to be contacted?| Email me when I have a message in my account   | Change |
#      | Email address| 	test@gmail.com | Change |
#    Then I click submit button on "Check your answers Page"
#    Then I am presented with the "confirmation Page"
#    Then I am presented with the "We will email you when you have a new message in your account"
#
#  Scenario:4. Email Contact preference Journey - Happy Path - Change to Update to email address
#     #No - Existing email page
#    When I am presented with the "Business Tax Account Page"
#    And I click on "Update email address" hyperlink on "Business Tax Account Page"
#    Then I am presented with the "Is test@gmail.com your email?"
#    When I select radio button "No, I want to use a different email" on "existing-email page"
#    And I click continue button on "existing-email page"
#    Then I am presented with the "What is the email address we should use to contact you about your Alcohol Duty"
#    When I enter "test12@gmail.com" on "What is the email address we should use to contact you about your Alcohol Duty page"
#    And I click continue button on "What is the email address we should use to contact you about your Alcohol Duty"
#    Then I am presented with the "Enter code to confirm your email address"
#    When I enter "DNCLRK" on "Enter code to confirm your email address page"
#    And I click confirm button on "Enter code to confirm your email address page"
#    Then I am presented with the "Contact Preference Check Your Answers Page"
#    And I should see the following details
#      | How would you like to be contacted?| Email me when I have a message in my account   | Change |
#      | Email address| 	test12@gmail.com | Change |
#    Then I click submit button on "Check your answers Page"
#    Then I am presented with the "confirmation Page"
#    And the page source contains "Your contact preference has been updated"
#    Then I am presented with the "We will email you at test12@gmail.com when you have a new message in your account."
#
#
#
#
#
#
#
#
#
#
#
#
