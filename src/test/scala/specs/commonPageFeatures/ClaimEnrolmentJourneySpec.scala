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
import specs.tags.AllTests
import specsteps.AlcoholDutyStepDefSteps._
import specsteps.BaseStepDefSteps._

class ClaimEnrolmentJourneySpec extends BaseSpec {

  Feature("Claim Enrolment Journey") {

    Scenario("Claim Enrolment Journey - Happy path - When user does not have APPA ID", AllTests) {
      Given("I enter the url for Claim Enrolment journey")
        givenIEnterTheUrlForClaimEnrolmentJourney()  // auto-chosen (score=1.00, AlcoholDutyStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIEnterRedirectUrlFor() [0.47] (BaseStepDefSteps.scala) pattern: I enter redirect url for {string}

      Then("I am presented with the Do You Have Appa Id Page")
        thenIAmPresentedWithThe("Do You Have Appa Id Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button No on Do You Have Appa Id Page")
        whenISelectRadioButtonOn("No", "Do You Have Appa Id Page")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click continue button on Do You Have Appa Id Page")
        whenIClickContinueButtonO("Do You Have Appa Id Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the You Need An Appa Id Page")
        thenIAmPresentedWithThe("You Need An Appa Id Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click back button on You Need An Appa Id Page")
        whenIClickBackButtonOn("You Need An Appa Id Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickContinueButtonO() [0.47] (BaseStepDefSteps.scala) pattern: I click continue button on {string}

      Then("I am presented with the Do You Have Appa Id Page")
        thenIAmPresentedWithThe("Do You Have Appa Id Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Do You Have Appa Id Page")
        whenISelectRadioButtonOn("Yes", "Do You Have Appa Id Page")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click continue button on Do You Have Appa Id Page")
        whenIClickContinueButtonO("Do You Have Appa Id Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

    }
  }
}
