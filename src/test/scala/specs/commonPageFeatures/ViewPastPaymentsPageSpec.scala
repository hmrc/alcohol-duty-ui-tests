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

package specs.commonPageFeatures

import specs.BaseSpec
import specs.tags.{AllTests, CommonPages, ZapTests}
import specsteps.BaseStepDefSteps._

class ViewPastPaymentsPageSpec extends BaseSpec {

  Feature("View Past Payments Journey") {

    Scenario(
      "1. ADR Journey - Verify that past year payments can be accessed under cleared payments section",
      AllTests,
      CommonPages,
      ZapTests
    ) {
      Given("I log in to view payments")
      loginForPayments()

      Then("I am presented with the View Past Payments Page")
      thenIAmPresentedWithThe("View Past Payments Page")

      When("I click on View 2024 payments hyperlink on View Past Payments Page")
      whenIClickOnHyperlinkOn("View 2024 payments", "View Past Payments Page")

      Then("I am presented with the Past Payments Page")
      thenIAmPresentedWithThe("Past Payments Page")

      When("I click on Back to payments hyperlink on Past Payments Page")
      whenIClickOnHyperlinkOn("Back to payments", "Past Payments Page")

      Then("I am presented with the View Past Payments Page")
      thenIAmPresentedWithThe("View Past Payments Page")

    }

    Scenario(
      "2. ADR Central Assessment - Manage central assessment charge and pay central assessment charge",
      AllTests,
      CommonPages,
      ZapTests
    ) {
      Given("I log in to view payments")
      loginForPayments()

      Then("I am presented with the View Past Payments Page")
      thenIAmPresentedWithThe("View Past Payments Page")

      When("I click on Manage link on View Past Payments Page")
      whenIClickOnLinkOn("Manage", "View Past Payments Page")

      Then("I am presented with the Manage Central Assessment Page")
      thenIAmPresentedWithThe("Manage Central Assessment Page")

      When("I select radio button Pay central assessment charge on Manage Central Assessment Page")
      whenISelectRadioButtonOn("Pay central assessment charge", "Manage Central Assessment Page")

      And("I click continue button on Manage Central Assessment Page")
      whenIClickContinueButtonOn("Manage Central Assessment Page")

      Then("I am presented with the Pay Central Assessment Charge Page")
      thenIAmPresentedWithThe("Pay Central Assessment Charge Page")

    }
  }
}
