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

import specpage.common.{DoYouHaveAppaIdPage, YouNeedAnAppaIdPage}
import specs.BaseSpec
import specs.tags.{AllTests, CommonPages}
import specsteps.BaseStepDefSteps._

class ClaimEnrolmentJourneySpec extends BaseSpec {

  Feature("Claim Enrolment Journey") {

    Scenario("Claim Enrolment Journey - Happy path - When user does not have APPA ID", AllTests, CommonPages) {
      Given("I enter the url for Claim Enrolment journey")
      navigateToPage(DoYouHaveAppaIdPage)

      And("I select radio button No on Do You Have Appa Id Page")
      DoYouHaveAppaIdPage.answer(false)

      And("I click back button on You Need An Appa Id Page")
      YouNeedAnAppaIdPage.clickBackLink()

      Then("I select radio button Yes on Do You Have Appa Id Page")
      DoYouHaveAppaIdPage.answer(true)

    }
  }
}
