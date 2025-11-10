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

class ViewPastPaymentsPageSpec extends BaseSpec {

  Feature("View Past Payments Journey") {

    Scenario("1. ADR Journey - Verify that past year payments can be accessed under cleared payments section", AllTests) {
      Given("I clear the data to view Past Payments")
        givenIClearTheDataToViewPastPayments()  // auto-chosen (score=1.00, BaseStepDefSteps.scala)

      When("I navigate to the Auth Login Stub Page")
        thenINavigateToThe("Auth Login Stub Page")  // auto-chosen (score=0.56, BaseStepDefSteps.scala)

      And("I enter redirect URL on Auth Login Stub Page for View Past Payments Page")
        whenIEnterRedirectURLOnAuthLoginStubPageFor("View Past Payments Page")  // auto-chosen (score=0.64, AlcoholDutyStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIEnterRedirectUrlFor() [0.58] (BaseStepDefSteps.scala) pattern: I enter redirect url for {string}

      And("I select Affinity Type as Organisation on Auth Login Stub Page")
        whenISelectAffinityTypeAsOn("Organisation", "Auth Login Stub Page")  // auto-chosen (score=0.52, AlcoholDutyStepDefSteps.scala)

      And("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID and Identifier Value XMADP0002900211 on Auth Login Stub Page")
        whenIEnterEnrollmentKeyIdentifierNameAndIdentifierValueOn("HMRC-AD-ORG", "APPAID", "XMADP0002900211", "Auth Login Stub Page")  // auto-chosen (score=0.50, AlcoholDutyStepDefSteps.scala)

      And("I click submit button on Auth Login Stub Page")
        whenIClickSubmitButtonOn("Auth Login Stub Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.47] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the View Past Payments Page")
        thenIAmPresentedWithThe("View Past Payments Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on View 2024 payments hyperlink on View Past Payments Page")
        whenIClickOnHyperlinkOn("View 2024 payments", "View Past Payments Page")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Past Payments Page")
        thenIAmPresentedWithThe("Past Payments Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Back to payments hyperlink on Past Payments Page")
        whenIClickOnHyperlinkOn("Back to payments", "Past Payments Page")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the View Past Payments Page")
        thenIAmPresentedWithThe("View Past Payments Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

    }

    Scenario("2. ADR Central Assessment - Manage central assessment charge and pay central assessment charge", AllTests) {
      Given("I clear the data to view Past Payments")
        givenIClearTheDataToViewPastPayments()  // auto-chosen (score=1.00, BaseStepDefSteps.scala)

      When("I navigate to the Auth Login Stub Page")
        thenINavigateToThe("Auth Login Stub Page")  // auto-chosen (score=0.56, BaseStepDefSteps.scala)

      And("I enter redirect URL on Auth Login Stub Page for View Past Payments Page")
        whenIEnterRedirectURLOnAuthLoginStubPageFor("View Past Payments Page")  // auto-chosen (score=0.64, AlcoholDutyStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIEnterRedirectUrlFor() [0.58] (BaseStepDefSteps.scala) pattern: I enter redirect url for {string}

      And("I select Affinity Type as Organisation on Auth Login Stub Page")
        whenISelectAffinityTypeAsOn("Organisation", "Auth Login Stub Page")  // auto-chosen (score=0.52, AlcoholDutyStepDefSteps.scala)

      And("I enter Enrollment Key HMRC-AD-ORG, Identifier Name APPAID and Identifier Value XMADP0002900211 on Auth Login Stub Page")
        whenIEnterEnrollmentKeyIdentifierNameAndIdentifierValueOn("HMRC-AD-ORG", "APPAID", "XMADP0002900211", "Auth Login Stub Page")  // auto-chosen (score=0.50, AlcoholDutyStepDefSteps.scala)

      And("I click submit button on Auth Login Stub Page")
        whenIClickSubmitButtonOn("Auth Login Stub Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.47] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the View Past Payments Page")
        thenIAmPresentedWithThe("View Past Payments Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Manage link on View Past Payments Page")
        whenIClickOnLinkOn("Manage", "View Past Payments Page")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      Then("I am presented with the Manage Central Assessment Page")
        thenIAmPresentedWithThe("Manage Central Assessment Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Pay central assessment charge on Manage Central Assessment Page")
        whenISelectRadioButtonOn("Pay central assessment charge", "Manage Central Assessment Page")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click continue button on Manage Central Assessment Page")
        whenIClickContinueButtonO("Manage Central Assessment Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Pay Central Assessment Charge Page")
        thenIAmPresentedWithThe("Pay Central Assessment Charge Page")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

    }
  }
}
