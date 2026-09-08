/*
 * Copyright 2026 HM Revenue & Customs
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
import specpage.common.{ContactPreferenceCompletePage, TaskListPage}
import specs.BaseSpec
import specs.tags.{AllTests, ECP}
import specsteps.BaseStepDefSteps.*

class PreReturnContactPreferenceSpec extends BaseSpec {

  Feature("Contact preference check before starting an Alcohol Duty return") {

    Scenario(
      "1. PreReturn - User on post with a verified email already on file confirms that email",
      AllTests,
      ECP
    ) {
      Given("I start a return with an appaId that is on post and has a verified email on file")
      loginAndStartReturnWithContactPreferenceCheck("AABCP1000100208")

      When("I am asked my contact preference and choose email using my existing verified email address")
      ECPBeforeYouStartPage.continueByEmail("john.doe@example.com")

      And("I confirm my answers")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the confirmation page for an email already on file")
      ECPConfirmationEmailPage.continueReturn()

      And("I am returned to the Before You Start page for my return")
      ContactPreferenceCompletePage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL
    }

    Scenario(
      "2. PreReturn - User on post with no email on file sets up a new email",
      AllTests,
      ECP
    ) {
      Given("I start a return with an appaId that is on post and has no email on file")
      loginAndStartReturnWithContactPreferenceCheck("AABCP9000100208")

      When("I am asked my contact preference and choose email, entering a new email address")
      ECPBeforeYouStartPage.continueByEmail("jane.doe2@example.com")

      And("I confirm my answers")
      ECPCheckYourAnswersPage.ecpSubmitButton()

      Then("I am presented with the contact preference updated confirmation page")
      ECPConfirmationPage.continueReturn()

      And("I am returned to the Before You Start page for my return")
      ContactPreferenceCompletePage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL
    }
  }
}
