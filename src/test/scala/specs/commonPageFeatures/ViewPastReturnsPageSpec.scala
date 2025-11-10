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

class ViewPastReturnsPageSpec extends BaseSpec {

  Feature("View Past Returns Journey") {

    Scenario("1. ADR Journey - View Completed Returns from previous years", AllTests) {
      Given("I cleared the data to view completed returns from previous years")
        givenIClearedTheDataToViewCompletedReturnsFromPreviousYears()  // auto-chosen (score=1.00, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // givenIClearTheDataToViewPastPayments() [0.52] (BaseStepDefSteps.scala) pattern: I clear the data to view Past Payments
        // whenIClickTheLinkToViewCompletedReturnsFromThePreviousYearOn() [0.50] (BaseStepDefSteps.scala) pattern: I click the link to view completed returns from the previous year on {string}
        // givenIClearedTheDataForTheService() [0.50] (BaseStepDefSteps.scala) pattern: I cleared the data for the service

      When("I navigate to the Auth Login Stub Page")
        thenINavigateToThe("Auth Login Stub Page")  // auto-chosen (score=0.56, BaseStepDefSteps.scala)

      And("I enter redirect URL on Auth Login Stub Page for View Past Returns Page")
        whenIEnterRedirectURLOnAuthLoginStubPageFor("View Past Returns Page")  // auto-chosen (score=0.64, AlcoholDutyStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIEnterRedirectUrlFor() [0.58] (BaseStepDefSteps.scala) pattern: I enter redirect url for {string}

      And("I select Affinity Type as Organisation on Auth Login Stub Page")
        whenISelectAffinityTypeAsOn("Organisation", "Auth Login Stub Page")  // auto-chosen (score=0.52, AlcoholDutyStepDefSteps.scala)

      And("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID and Identifier Value XMADP0000100211 on Auth Login Stub Page")
        whenIEnterEnrollmentKeyIdentifierNameAndIdentifierValueOn("HMRC-AD-ORG", "APPAID", "XMADP0000100211", "Auth Login Stub Page")  // auto-chosen (score=0.50, AlcoholDutyStepDefSteps.scala)

      And("I click submit button on Auth Login Stub Page")
        whenIClickSubmitButtonOn("Auth Login Stub Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.47] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the View Past Returns Page")
        thenIAmPresentedWithThe("View Past Returns Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click the link to view completed returns from the previous year on View Past Returns Page")
        whenIClickTheLinkToViewCompletedReturnsFromThePreviousYearOn("View Past Returns Page")  // auto-chosen (score=0.65, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // givenIClearedTheDataToViewCompletedReturnsFromPreviousYears() [0.51] (BaseStepDefSteps.scala) pattern: I cleared the data to view completed returns from previous years
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}
        // whenIClickOnTheFirstLinkOn() [0.47] (BaseStepDefSteps.scala) pattern: I click on the first {string} link on {string}

      Then("I am presented with the View Completed Returns Page")
        thenIAmPresentedWithThe("View Completed Returns Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      And("I click on the first View return link on View Completed Returns Page")
        whenIClickOnTheFirstLinkOn("View return", "View Completed Returns Page")  // auto-chosen (score=0.54, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}
        // whenIClickTheLinkToViewCompletedReturnsFromThePreviousYearOn() [0.45] (BaseStepDefSteps.scala) pattern: I click the link to view completed returns from the previous year on {string}

      Then("I am presented with the View Specific Return Page")
        thenIAmPresentedWithThe("View Specific Return Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      And("I click back button on View Completed Returns Page")
        whenIClickBackButtonOn("View Completed Returns Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickContinueButtonO() [0.47] (BaseStepDefSteps.scala) pattern: I click continue button on {string}

      Then("I am presented with the View Completed Returns Page")
        thenIAmPresentedWithThe("View Completed Returns Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Back to current returns hyperlink on View Completed Returns Page")
        whenIClickOnHyperlinkOn("Back to current returns", "View Completed Returns Page")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the View Past Returns Page")
        thenIAmPresentedWithThe("View Past Returns Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

    }
  }
}
