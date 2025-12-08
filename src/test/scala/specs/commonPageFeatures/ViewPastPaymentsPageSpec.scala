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

import specpage.common._
import specs.BaseSpec
import specs.tags.{AllTests, CommonPages}
import specsteps.BaseStepDefSteps._

class ViewPastPaymentsPageSpec extends BaseSpec {

  Feature("View Past Payments Journey") {

    Scenario(
      "1. ADR Journey - Verify that past year payments can be accessed under cleared payments section",
      AllTests,
      CommonPages
    ) {
      Given("I log in to view payments")
      loginForPayments()

      When("I click on View 2024 payments hyperlink on View Past Payments Page")
      ViewPastPaymentsPage.viewPastYearPayments()

      And("I click on Back to payments hyperlink on Past Payments Page")
      PastPaymentsPage.backToPayments()

      Then("I am presented with the View Past Payments Page")
      ViewPastPaymentsPage.checkURL

    }

    Scenario(
      "2. ADR Central Assessment - Manage central assessment charge and pay central assessment charge",
      AllTests,
      CommonPages
    ) {
      Given("I log in to view payments")
      loginForPayments()

      When("I click on Manage link on View Past Payments Page")
      ViewPastPaymentsPage.clickManageLink()

      And("I select radio button Pay central assessment charge on Manage Central Assessment Page")
      ManageCentralAssessmentPage.selectOption(submitReturn = false)

      Then("I am presented with the Pay Central Assessment Charge Page")
      PayCentralAssessmentChargePage.checkURL

    }
  }
}
