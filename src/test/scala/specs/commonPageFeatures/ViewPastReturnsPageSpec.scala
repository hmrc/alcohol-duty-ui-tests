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
      givenIClearedTheDataToViewCompletedReturnsFromPreviousYears()

      When("I navigate to the Auth Login Stub Page")
      thenINavigateToThe("Auth Login Stub Page")

      And("I enter redirect URL on Auth Login Stub Page for View Past Returns Page")
      whenIEnterRedirectURLOnAuthLoginStubPageFor("View Past Returns Page")

      And("I select Affinity Type as Organisation on Auth Login Stub Page")
      whenISelectAffinityTypeAsOn("Organisation", "Auth Login Stub Page")

      And(
        "I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID and Identifier Value XMADP0000100211 on Auth Login Stub Page"
      )
      whenIEnterEnrollmentKeyIdentifierNameAndIdentifierValueOn(
        "HMRC-AD-ORG",
        "APPAID",
        "XMADP0000100211",
        "Auth Login Stub Page"
      )

      And("I click submit button on Auth Login Stub Page")
      whenIClickSubmitButtonOn("Auth Login Stub Page")

      Then("I am presented with the View Past Returns Page")
      thenIAmPresentedWithThe("View Past Returns Page")

      When("I click the link to view completed returns from the previous year on View Past Returns Page")
      whenIClickTheLinkToViewCompletedReturnsFromThePreviousYearOn("View Past Returns Page")

      Then("I am presented with the View Completed Returns Page")
      thenIAmPresentedWithThe("View Completed Returns Page")

      And("I click on the first View return link on View Completed Returns Page")
      whenIClickOnTheFirstLinkOn("View return", "View Completed Returns Page")

      Then("I am presented with the View Specific Return Page")
      thenIAmPresentedWithThe("View Specific Return Page")

      And("I click back button on View Completed Returns Page")
      whenIClickBackButtonOn("View Completed Returns Page")

      Then("I am presented with the View Completed Returns Page")
      thenIAmPresentedWithThe("View Completed Returns Page")

      When("I click on Back to current returns hyperlink on View Completed Returns Page")
      whenIClickOnHyperlinkOn("Back to current returns", "View Completed Returns Page")

      Then("I am presented with the View Past Returns Page")
      thenIAmPresentedWithThe("View Past Returns Page")

    }
  }
}
