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
import specs.tags.ECP
import specsteps.BaseStepDefSteps._

class EmailJourneySpec extends BaseSpec {

  Feature("Change contact preference from BTA for Alcohol Duty Returns") {

    Scenario("1. ECP - User on post changes to existing email in system", ECP) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP1000100211")

      When("I select email on How Would You Like To Be Contacted Page")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(value = true)

      And("I select radio button Yes on ECP Existing Email Page")
      ECPExistingEmailPage.ECPExistingEmail(true)

      And("I click submit button on ECP Check Your Answers Page")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Page")
      ECPConfirmationPage.checkURL

    }

    Scenario("2. ECP - User on post stays on post", ECP) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP1000100211")

      When("I select post on How Would You Like To Be Contacted Page")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(value = false)

      Then("I am presented with the ECP Enrolled Letters Page")
      ECPEnrolledLettersPage.checkURL

    }

    Scenario("3. ECP - User on email changes to Post", ECP) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP5000100211")

      When("I select post on How Would You Like To Be Contacted Page")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(value = false)

      And("I click continue button on ECP Correspondence Address Page")
      ECPCorrespondenceAddressPage.continue()

      And("I click submit button on ECP Check Your Answers Page")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Page")
      ECPConfirmationPage.checkURL

    }

    Scenario("4. ECP - User on email stays on email, then updates to new email address", ECP) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP0000100211")

      When("I select email on How Would You Like To Be Contacted Page")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(value = true)

      And("I click on If this is not the correct address, you can update it hyperlink on ECP Enrolled Email Page")
      ECPEnrolledEmailPage.clickUpdateEmailLink()

      And("I enter jane.doe2@example.com on Enter Email Address Page")
      EnterEmailAddressPage.enterEmailAddress("jane.doe2@example.com")

      And("I click submit button on ECP Check Your Answers Page")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Page")
      ECPConfirmationPage.checkURL

    }

    Scenario(
      "5. ECP - User on post (with verified email in ETMP) changes to email unsuccessfully (email locked)",
      ECP
    ) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP1002100211")

      When("I select email on How Would You Like To Be Contacted Page")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(value = true)

      And("I select radio button No, I want to use a different email on ECP Existing Email Page")
      ECPExistingEmailPage.ECPExistingEmail(ECPRadiobutton = false)

      And("I enter jane.doe@example.com on Enter Email Address Page")
      EnterEmailAddressPage.enterEmailAddress("jane.doe@example.com")

      Then("I am presented with the ECP Confirmation Code Limit Page")
      ECPConfirmationCodeLimitPage.checkURL

    }

    Scenario("6. ECP - User on email updates email (enters same email as existing one)", ECP) {
      Given("I enter the ECP service using the update email url")
      loginForEcp("XMADP0002100211", "Email Update")

      When("I select radio button No, I want to use a different email on ECP Existing Email Page")
      ECPExistingEmailPage.ECPExistingEmail(ECPRadiobutton = false)

      And("I enter john.doe@example.com on Enter Email Address Page")
      EnterEmailAddressPage.enterEmailAddress("john.doe@example.com")

      And("I click submit button on ECP Check Your Answers Page")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Email Page")
      ECPConfirmationEmailPage.checkURL

    }

    Scenario("7. ECP - User on post and changes to new email address", ECP) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP9002100211")

      When("I select email on How Would You Like To Be Contacted Page")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(value = true)

      And("I enter john.doe@example.com on Enter Email Address Page")
      EnterEmailAddressPage.enterEmailAddress("john.doe@example.com")

      And("I click submit button on ECP Check Your Answers Page")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Page")
      ECPConfirmationPage.checkURL

    }

    Scenario("8. ECP - Bounced email", ECP) {
      Given("I enter the ECP service using the bounced email url")
      loginForEcp("XMADP3002100211", "Email Bounce")

      When("I click continue button on ECP Email Error Page")
      ECPEmailErrorPage.continue()

      And("I enter jane.doe2@example.com on Enter Email Address Page")
      EnterEmailAddressPage.enterEmailAddress("jane.doe2@example.com")

      And("I click submit button on ECP Check Your Answers Page")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Page")
      ECPConfirmationPage.checkURL

    }
  }
}
