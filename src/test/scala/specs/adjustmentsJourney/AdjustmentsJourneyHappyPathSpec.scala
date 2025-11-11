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

package specs.adjustmentsJourney

import specs.BaseSpec
import specsteps.BaseStepDefSteps._

class AdjustmentsJourneyHappyPathSpec extends BaseSpec {

  Feature("Adjustments Journey") {

    Scenario("Adjustments Journey - Validating under-declaration-reason removal from task List page when amount is changed to less than £1000 - Under-declaration - Beer - With SPR") {
      When("I select radio button Under-declaration on Adjustment Type Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Adjustment Type Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Return Date Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter month 09 and year 2023 on Adjustment Return Date Page")
        // Possible match (best=0.47)
        whenIEnterMonthAndYearOn("", "", "")

      And("I click save and continue button on Adjustment Return Date Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Adjustment Tax Type Code Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 371 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 371 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume With Spr Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page

      And("I enter 9.8 for SPR Duty Rate on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 9.8 for SPR Duty Rate on Adjustment Volume With Spr Page

      And("I click save and continue button on Adjustment Volume With Spr Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Duty Value Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Adjustment Duty Value Page")
        // Possible match (best=0.58)
        whenIClickContinueButtonO("")
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Adjustment Check Your Answers Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button No on Adjustment List Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Adjustment List Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Tell us why products were under-declared hyperlink on Task List Page")
        // Possible match (best=0.50)
        whenIClickOnHyperlinkOn("", "")
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Under Declaration Reason Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter Test Under Declaration Reason on Under Declaration Reason Page")
        // ⚠️ No step-def match found for: I enter Test Under Declaration Reason on Under Declaration Reason Page

      And("I click save and continue button on Under Declaration Reason Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Declare adjustments hyperlink on Task List Page")
        // Possible match (best=0.50)
        whenIClickOnHyperlinkOn("", "")
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Adjustment List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Hyperlink on Adjustment List Page")
        // Possible match (best=0.50)
        whenIClickOnHyperlinkOn("", "")
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Adjustment Check Your Answers Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I click Volume on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click Volume on Adjustment Check Your Answers Page

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 2000.55 for Total Litres on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 2000.55 for Total Litres on Adjustment Volume With Spr Page

      And("I enter 100.2500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 100.2500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page

      And("I enter 6.50 for SPR Duty Rate on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 6.50 for SPR Duty Rate on Adjustment Volume With Spr Page

      And("I click save and continue button on Adjustment Volume With Spr Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Duty Value Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Adjustment Duty Value Page")
        // Possible match (best=0.58)
        whenIClickContinueButtonO("")
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Adjustment Check Your Answers Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button No on Adjustment List Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Adjustment List Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

    }

    Scenario("Adjustments Journey - Validating over-declaration-reason removal from task List page when amount is changed to less than £1000 after deleting one of the adjustment- Over-declaration - Cider - With SPR") {
      When("I select radio button Over-declaration on Adjustment Type Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Adjustment Type Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Return Date Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
        // Possible match (best=0.47)
        whenIEnterMonthAndYearOn("", "", "")

      And("I click save and continue button on Adjustment Return Date Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Adjustment Tax Type Code Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 372 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 372 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume With Spr Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 1000.75 for Total Litres on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 1000.75 for Total Litres on Adjustment Volume With Spr Page

      And("I enter 150.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 150.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page

      And("I enter 4.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 4.5 for SPR Duty Rate on Adjustment Volume With Spr Page

      And("I click save and continue button on Adjustment Volume With Spr Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Duty Value Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Adjustment Duty Value Page")
        // Possible match (best=0.58)
        whenIClickContinueButtonO("")
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Adjustment Check Your Answers Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Adjustment List Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Adjustment List Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Type Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Over-declaration on Adjustment Type Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Adjustment Type Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Return Date Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
        // Possible match (best=0.47)
        whenIEnterMonthAndYearOn("", "", "")

      And("I click save and continue button on Adjustment Return Date Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Adjustment Tax Type Code Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 372 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 372 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume With Spr Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 1000.75 for Total Litres on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 1000.75 for Total Litres on Adjustment Volume With Spr Page

      And("I enter 150.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 150.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page

      And("I enter 4.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 4.5 for SPR Duty Rate on Adjustment Volume With Spr Page

      And("I click save and continue button on Adjustment Volume With Spr Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Duty Value Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Adjustment Duty Value Page")
        // Possible match (best=0.58)
        whenIClickContinueButtonO("")
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Adjustment Check Your Answers Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button No on Adjustment List Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Adjustment List Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Tell us why products were over-declared hyperlink on Task List Page")
        // Possible match (best=0.50)
        whenIClickOnHyperlinkOn("", "")
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Over Declaration Reason Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter Test over Declaration Reason on Over Declaration Reason Page")
        // ⚠️ No step-def match found for: I enter Test over Declaration Reason on Over Declaration Reason Page

      And("I click save and continue button on Over Declaration Reason Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Declare adjustments hyperlink on Task List Page")
        // Possible match (best=0.50)
        whenIClickOnHyperlinkOn("", "")
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Adjustment List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Remove Hyperlink on Adjustment List Page")
        // Possible match (best=0.50)
        whenIClickOnHyperlinkOn("", "")
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Remove Adjustment Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button No on Remove Adjustment Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Remove Adjustment Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Remove Hyperlink on Adjustment List Page")
        // Possible match (best=0.50)
        whenIClickOnHyperlinkOn("", "")
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Remove Adjustment Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Remove Adjustment Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Remove Adjustment Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button No on Adjustment List Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Adjustment List Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

    }
  }
}
