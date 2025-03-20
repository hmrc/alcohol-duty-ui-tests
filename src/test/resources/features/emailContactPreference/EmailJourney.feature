@EmailContactPreference
Feature: Change contact preference from BTA for Alcohol Duty Returns


  Background: : Common Steps - Alcohol duty journey is redirected to Business Tax Account
    Given I cleared the data for the service
    When I navigate to the "Auth Login Stub Page"
    And I enter redirect URL on Auth Login Stub Page for "Business Tax Account Page"
    And I select Affinity Type as "Organisation" on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-AD-ORG", Identifier Name "APPAID" and Identifier Value "AABCP0000100208" on "Auth Login Stub Page"
    And I click submit button on "Auth Login Stub Page"
    Then I am presented with the "Business Tax Account Page"


  Scenario:1. Email Contact preference Journey - Happy Path - Change to Email
#Change to Email
    When I am presented with the "Business Tax Account Page"
    And I click on "Change to email" hyperlink on "Business Tax Account Page"
    Then I am presented with the "How would you like to be contacted Page"
    When I select radio button "Email me when I have a message in my account" on "How would you like to be contacted"
    And I click continue button on "How would you like to be contacted"
    Then I am presented with the "What is the email address we should use to contact you about your Alcohol Duty"
    When I enter "test@gmail.com" on "What is the email address we should use to contact you about your Alcohol Duty page"
    And I click continue button on "What is the email address we should use to contact you about your Alcohol Duty"
    Then I am presented with the "Enter code to confirm your email address"
    When I enter "DNCLRK" on "Enter code to confirm your email address page"
    And I click confirm button on "Enter code to confirm your email address page"
    Then I am presented with the "Contact Preference Check Your Answers Page"
    And I should see the following details
      | How would you like to be contacted?| Email me when I have a message in my account   | Change |
      | Email address| 	test@gmail.com | Change |
    Then I click submit button on "Check your answers Page"
    Then I am presented with the "confirmation Page"
    And the page source contains "Your contact preference has been updated"
    Then I am presented with the "We will email you at test@gmail.com when you have a new message in your account"



  Scenario:2. Email Contact preference Journey - Happy Path - Change to Post
#Change to Post
    When I am presented with the "Business Tax Account Page"
    And I click on "Change to post" hyperlink on "Business Tax Account Page"
    When I select radio button "Send me letters by post" on "How would you like to be contacted"
    And I click continue button on "How would you like to be contacted"
    Then I am presented with the "Contact Preference Check Your Answers Page"
    And I should see the following details
      | How would you like to be contacted?| Send me letters by post| Change |
    Then I click submit button on "Check your answers Page"
    Then I am presented with the "confirmation Page"
    And the page source contains "Your contact preference has been updated"
    Then I am presented with the "We will send you letters about you Alcohol Duty returns by post."

  Scenario:3. Email Contact preference Journey - Happy Path - Change to Update to email address
    #Yes - Existing email page
    When I am presented with the "Business Tax Account Page"
    And I click on "Update email address" hyperlink on "Business Tax Account Page"
    Then I am presented with the "Is test@gmail.com your email?"
    When I select radio button "Yes" on "existing-email page"
    And I click continue button on "existing-email page"
    Then I am presented with the "Is test@gmail.com your email?"
    Then I am presented with the "Update email address Check Your Answers page"
    And I should see the following details
      | How would you like to be contacted?| Email me when I have a message in my account   | Change |
      | Email address| 	test@gmail.com | Change |
    Then I click submit button on "Check your answers Page"
    Then I am presented with the "confirmation Page"
    Then I am presented with the "We will email you when you have a new message in your account"

  Scenario:4. Email Contact preference Journey - Happy Path - Change to Update to email address
     #No - Existing email page
    When I am presented with the "Business Tax Account Page"
    And I click on "Update email address" hyperlink on "Business Tax Account Page"
    Then I am presented with the "Is test@gmail.com your email?"
    When I select radio button "No, I want to use a different email" on "existing-email page"
    And I click continue button on "existing-email page"
    Then I am presented with the "What is the email address we should use to contact you about your Alcohol Duty"
    When I enter "test12@gmail.com" on "What is the email address we should use to contact you about your Alcohol Duty page"
    And I click continue button on "What is the email address we should use to contact you about your Alcohol Duty"
    Then I am presented with the "Enter code to confirm your email address"
    When I enter "DNCLRK" on "Enter code to confirm your email address page"
    And I click confirm button on "Enter code to confirm your email address page"
    Then I am presented with the "Contact Preference Check Your Answers Page"
    And I should see the following details
      | How would you like to be contacted?| Email me when I have a message in my account   | Change |
      | Email address| 	test12@gmail.com | Change |
    Then I click submit button on "Check your answers Page"
    Then I am presented with the "confirmation Page"
    And the page source contains "Your contact preference has been updated"
    Then I am presented with the "We will email you at test12@gmail.com when you have a new message in your account."












