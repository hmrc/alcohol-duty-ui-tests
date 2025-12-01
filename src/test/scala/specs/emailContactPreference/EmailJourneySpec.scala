/*
 * Copyright 2025 HM Revenue & Customs
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package specs.emailContactPreference

import specpage.ECP._
import specs.BaseSpec
import specs.tags.{ECP, ZapTests}
import specsteps.BaseStepDefSteps._

class EmailJourneySpec extends BaseSpec {

  Feature("Change contact preference from BTA for Alcohol Duty Returns") {

    Scenario("1. ECP - User on post changes to existing email in system", ECP, ZapTests) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP1000100211")

      When("I select email on the How Would You Like To Be Contacted Page")
      HowWouldYouLikeToBeContactedPage.selectPreference(email = true)

      Then("I am presented with the ECP Existing Email Page")
      thenIAmPresentedWithThe("ECP Existing Email Page")

      When("I select radio button Yes on ECP Existing Email Page")
      whenISelectRadioButtonOn("Yes", "ECP Existing Email Page")

      And("I click continue button on ECP Existing Email Page")
      whenIClickContinueButtonOn("ECP Existing Email Page")

      Then("I am presented with the ECP Check Your Answers Page")
      thenIAmPresentedWithThe("ECP Check Your Answers Page")

      When("I click ECPSubmit on ECP Check Your Answers Page")
      whenIClickECPSubmitOn("ECP Check Your Answers Page")

      Then("I am presented with the ECP Confirmation Page")
      thenIAmPresentedWithThe("ECP Confirmation Page")

    }

    Scenario("2. ECP - User on post stays on post", ECP, ZapTests) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP1000100211")

      Then("I am presented with the How Would You Like To Be Contacted Page")
      thenIAmPresentedWithThe("How Would You Like To Be Contacted Page")

      When("I select radio button Send me letters by post on How Would You Like To Be Contacted Page")
      whenISelectRadioButtonOn("Send me letters by post", "How Would You Like To Be Contacted Page")

      And("I click continue button on How Would You Like To Be Contacted Page")
      whenIClickContinueButtonOn("How Would You Like To Be Contacted Page")

      Then("I am presented with the ECP Enrolled Letters Page")
      thenIAmPresentedWithThe("ECP Enrolled Letters Page")

    }

    Scenario("3. ECP - User on email changes to Post", ECP, ZapTests) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP5000100211")

      Then("I am presented with the How Would You Like To Be Contacted Page")
      thenIAmPresentedWithThe("How Would You Like To Be Contacted Page")

      When("I select radio button Send me letters by post on How Would You Like To Be Contacted Page")
      whenISelectRadioButtonOn("Send me letters by post", "How Would You Like To Be Contacted Page")

      And("I click continue button on How Would You Like To Be Contacted Page")
      whenIClickContinueButtonOn("How Would You Like To Be Contacted Page")

      Then("I am presented with the ECP Correspondence Address Page")
      thenIAmPresentedWithThe("ECP Correspondence Address Page")

      When("I click continue button on ECP Correspondence Address Page")
      whenIClickContinueButtonOn("ECP Correspondence Address Page")

      Then("I am presented with the ECP Check Your Answers Page")
      thenIAmPresentedWithThe("ECP Check Your Answers Page")

      When("I click ECPSubmit on ECP Check Your Answers Page")
      whenIClickECPSubmitOn("ECP Check Your Answers Page")

      Then("I am presented with the ECP Confirmation Page")
      thenIAmPresentedWithThe("ECP Confirmation Page")

    }

    Scenario("4. ECP - User on email stays on email, then updates to new email address", ECP, ZapTests) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP0000100211")

      Then("I am presented with the How Would You Like To Be Contacted Page")
      thenIAmPresentedWithThe("How Would You Like To Be Contacted Page")

      When("I select radio button Email me when I have a digital message on How Would You Like To Be Contacted Page")
      whenISelectRadioButtonOn("Email me when I have a digital message", "How Would You Like To Be Contacted Page")

      And("I click continue button on How Would You Like To Be Contacted Page")
      whenIClickContinueButtonOn("How Would You Like To Be Contacted Page")

      Then("I am presented with the ECP Enrolled Email Page")
      thenIAmPresentedWithThe("ECP Enrolled Email Page")

      When("I click on If this is not the correct address, you can update it hyperlink on ECP Enrolled Email Page")
      whenIClickOnHyperlinkOn("If this is not the correct address, you can update it", "ECP Enrolled Email Page")

      And("I enter jane.doe2@example.com on Enter Email Address Page")
      EnterEmailAddressPage.enterEmailAddress("jane.doe2@example.com")

      Then("I am presented with the ECP Check Your Answers Page")
      thenIAmPresentedWithThe("ECP Check Your Answers Page")

      When("I click ECPSubmit on ECP Check Your Answers Page")
      whenIClickECPSubmitOn("ECP Check Your Answers Page")

      Then("I am presented with the ECP Confirmation Page")
      thenIAmPresentedWithThe("ECP Confirmation Page")

    }

    Scenario(
      "5. ECP - User on post (with verified email in ETMP) changes to email unsuccessfully (email locked)",
      ECP,
      ZapTests
    ) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP1002100211")

      Then("I am presented with the How Would You Like To Be Contacted Page")
      thenIAmPresentedWithThe("How Would You Like To Be Contacted Page")

      When("I select radio button Email me when I have a digital message on How Would You Like To Be Contacted Page")
      whenISelectRadioButtonOn("Email me when I have a digital message", "How Would You Like To Be Contacted Page")

      And("I click continue button on How Would You Like To Be Contacted Page")
      whenIClickContinueButtonOn("How Would You Like To Be Contacted Page")

      Then("I am presented with the ECP Existing Email Page")
      thenIAmPresentedWithThe("ECP Existing Email Page")

      When("I select radio button No, I want to use a different email on ECP Existing Email Page")
      whenISelectRadioButtonOn("No, I want to use a different email", "ECP Existing Email Page")

      And("I click continue button on ECP Existing Email Page")
      whenIClickContinueButtonOn("ECP Existing Email Page")

      And("I enter jane.doe@example.com on Enter Email Address Page")
      EnterEmailAddressPage.enterEmailAddress("jane.doe@example.com")

      Then("I am presented with the ECP Confirmation Code Limit Page")
      thenIAmPresentedWithThe("ECP Confirmation Code Limit Page")

    }

    Scenario("6. ECP - User on email updates email (enters same email as existing one)", ECP, ZapTests) {
      Given("I enter the ECP service using the update email url")
      loginForEcp("XMADP0002100211", "Email Update")

      Then("I am presented with the ECP Existing Email Page")
      thenIAmPresentedWithThe("ECP Existing Email Page")

      When("I select radio button No, I want to use a different email on ECP Existing Email Page")
      whenISelectRadioButtonOn("No, I want to use a different email", "ECP Existing Email Page")

      And("I click continue button on ECP Existing Email Page")
      whenIClickContinueButtonOn("ECP Existing Email Page")

      And("I enter john.doe@example.com on Enter Email Address Page")
      EnterEmailAddressPage.enterEmailAddress("john.doe@example.com")

      Then("I am presented with the ECP Check Your Answers Page")
      thenIAmPresentedWithThe("ECP Check Your Answers Page")

      When("I click ECPSubmit on ECP Check Your Answers Page")
      whenIClickECPSubmitOn("ECP Check Your Answers Page")

      Then("I am presented with the ECP Confirmation Email Page")
      thenIAmPresentedWithThe("ECP Confirmation Email Page")

    }

    Scenario("7. ECP - User on post and changes to new email address", ECP, ZapTests) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP9002100211")

      Then("I am presented with the How Would You Like To Be Contacted Page")
      thenIAmPresentedWithThe("How Would You Like To Be Contacted Page")

      When("I select radio button Email me when I have a digital message on How Would You Like To Be Contacted Page")
      whenISelectRadioButtonOn("Email me when I have a digital message", "How Would You Like To Be Contacted Page")

      And("I click continue button on How Would You Like To Be Contacted Page")
      whenIClickContinueButtonOn("How Would You Like To Be Contacted Page")

      And("I enter john.doe@example.com on Enter Email Address Page")
      EnterEmailAddressPage.enterEmailAddress("john.doe@example.com")

      Then("I am presented with the ECP Check Your Answers Page")
      thenIAmPresentedWithThe("ECP Check Your Answers Page")

      When("I click ECPSubmit on ECP Check Your Answers Page")
      whenIClickECPSubmitOn("ECP Check Your Answers Page")

      Then("I am presented with the ECP Confirmation Page")
      thenIAmPresentedWithThe("ECP Confirmation Page")

    }

    Scenario("8. ECP - Bounced email", ECP, ZapTests) {
      Given("I enter the ECP service using the bounced email url")
      loginForEcp("XMADP3002100211", "Email Bounce")

      Then("I am presented with the ECP Email Error Page")
      thenIAmPresentedWithThe("ECP Email Error Page")

      When("I click continue button on ECP Email Error Page")
      whenIClickContinueButtonOn("ECP Email Error Page")

      And("I enter jane.doe2@example.com on Enter Email Address Page")
      EnterEmailAddressPage.enterEmailAddress("jane.doe2@example.com")

      Then("I am presented with the ECP Check Your Answers Page")
      thenIAmPresentedWithThe("ECP Check Your Answers Page")

      When("I click ECPSubmit on ECP Check Your Answers Page")
      whenIClickECPSubmitOn("ECP Check Your Answers Page")

      Then("I am presented with the ECP Confirmation Page")
      thenIAmPresentedWithThe("ECP Confirmation Page")

    }
  }
}
