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

import specpage.ECP.*
import specpage.auth.JourneyType.{EcpBouncedEmail, EcpUpdateEmail}
import specs.BaseSpec
import specs.tags.ECP
import specsteps.BaseStepDefSteps.*

class EmailJourneySpec extends BaseSpec {

  Feature("Change contact preference from BTA for Alcohol Duty Returns") {

    Scenario("1. ECP - User on post changes to existing email in system", ECP) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP1000100211")

      When("I select email and use the existing email in ETMP")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(email = true)
      ECPExistingEmailPage.ECPExistingEmail(true)
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Page")
      ECPConfirmationPage.checkURL

    }

    Scenario("2. ECP - User on post stays on post", ECP) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP1000100211")

      When("I select post on How Would You Like To Be Contacted Page")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(email = false)

      Then("I am presented with the ECP Enrolled Letters Page")
      ECPEnrolledLettersPage.checkURL

    }

    Scenario("3. ECP - User on email changes to Post", ECP) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP5000100211")

      When("I change my contact preference to post")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(email = false)
      ECPCorrespondenceAddressPage.continue()
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Page")
      ECPConfirmationPage.checkURL

    }

    Scenario("4. ECP - User on email stays on email, then updates to new email address", ECP) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP0000100211")

      When("I select email and choose to update my email address")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(email = true)
      ECPEnrolledEmailPage.clickUpdateEmailLink()

      And("I submit a new email address")
      EnterEmailAddressPage.enterEmailAddress("jane.doe2@example.com")
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

      When("I select email and choose not to use the existing email in ETMP")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(email = true)
      ECPExistingEmailPage.ECPExistingEmail(ECPRadiobutton = false)

      And("I enter an email address that is locked")
      EnterEmailAddressPage.enterEmailAddress("jane.doe@example.com")

      Then("I am presented with the ECP Confirmation Code Limit Page")
      ECPConfirmationCodeLimitPage.checkURL

    }

    Scenario("6. ECP - User on email updates email (enters same email as existing one)", ECP) {
      Given("I enter the ECP service using the update email url")
      loginForEcp("XMADP0002100211", EcpUpdateEmail)

      When("I update my email to the same email as my existing one")
      ECPExistingEmailPage.ECPExistingEmail(false)
      EnterEmailAddressPage.enterEmailAddress("john.doe@example.com")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Email Page")
      ECPConfirmationEmailPage.checkURL

    }

    Scenario("7. ECP - User on post and changes to new email address", ECP) {
      Given("I enter the ECP service using the change preference url")
      loginForEcp("XMADP9002100211")

      When("I select email and submit a new email address")
      HowWouldYouLikeToBeContactedPage.HowWouldYouLikeToBeContacted(email = true)
      EnterEmailAddressPage.enterEmailAddress("john.doe@example.com")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Page")
      ECPConfirmationPage.checkURL

    }

    Scenario("8. ECP - Bounced email", ECP) {
      Given("I enter the ECP service using the bounced email url")
      loginForEcp("XMADP3002100211", EcpBouncedEmail)

      When("I submit a new email address to replace the bounced email")
      ECPEmailErrorPage.continue()
      EnterEmailAddressPage.enterEmailAddress("jane.doe2@example.com")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the ECP Confirmation Page")
      ECPConfirmationPage.checkURL

    }
  }
}
