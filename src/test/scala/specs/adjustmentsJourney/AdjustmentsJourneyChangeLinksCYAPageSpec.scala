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

class AdjustmentsJourneyChangeLinksCYAPageSpec extends BaseSpec {

  Feature("Adjustments Journey - Change Links - CYA Page") {

    Scenario("1- Adjustments Journey - Change Link Functionality for Adjustment Type - Under-declaration - Beer") {
      When("I select radio button Under-declaration on Adjustment Type Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Adjustment Type Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("Adjustment Type Page")
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
        whenIEnterMonthAndYearOn("09", "2023", "Adjustment Return Date Page")

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

      When("I enter 311 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 311 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 3000.75 for Total Litres on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Adjustment Volume Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page

      And("I click save and continue button on Adjustment Volume Page")
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

      When("I click Adjustment on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click Adjustment on Adjustment Check Your Answers Page

      Then("I am presented with the Adjustment Type Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

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

      Then("I am presented with the Adjustment Return Date Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

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

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

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

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

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

    }

    Scenario("2- Adjustments Journey - Change Link Functionality for Return period being adjusted And Tax Type and SPR Duty Rate - Over-declaration - Cider") {
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

      When("I click Return period being adjusted on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click Return period being adjusted on Adjustment Check Your Answers Page

      Then("I am presented with the Adjustment Return Date Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter month 12 and year 2023 on Adjustment Return Date Page")
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

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

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

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page

      And("I enter 10.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 10.5 for SPR Duty Rate on Adjustment Volume With Spr Page

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

      When("I click Tax type on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click Tax type on Adjustment Check Your Answers Page

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 374 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 374 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page

      And("I enter 10.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 10.5 for SPR Duty Rate on Adjustment Volume With Spr Page

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

      When("I click SPR duty rate on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click SPR duty rate on Adjustment Check Your Answers Page

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      And("I enter 12.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 12.5 for SPR Duty Rate on Adjustment Volume With Spr Page

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

    Scenario("3- Adjustments Journey - Change Link Functionality for Volume And New Tax Type - Repackaged Draught Products - Wine") {
      When("I select radio button Repackaged draught products on Adjustment Type Page")
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

      When("I enter month 11 and year 2023 on Adjustment Return Date Page")
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

      Then("I am presented with the Adjustment Tax Type Code For Repackaged Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 373 on Adjustment Tax Type Code For Repackaged Page")
        // ⚠️ No step-def match found for: I enter 373 on Adjustment Tax Type Code For Repackaged Page

      And("I click save and continue button on Adjustment Tax Type Code For Repackaged Page")
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

      Then("I am presented with the New Tax Type Code Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.54] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 363 on New Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 363 on New Tax Type Code Page

      And("I click save and continue button on New Tax Type Code Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the New Spr Duty Rate Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.54] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 11.5 on New Spr Duty Rate Page")
        // ⚠️ No step-def match found for: I enter 11.5 on New Spr Duty Rate Page

      And("I click save and continue button on New Spr Duty Rate Page")
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

      When("I click Volume on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click Volume on Adjustment Check Your Answers Page

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 4000.75 for Total Litres on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 4000.75 for Total Litres on Adjustment Volume With Spr Page

      And("I enter 350.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 350.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page

      And("I enter 8.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 8.5 for SPR Duty Rate on Adjustment Volume With Spr Page

      And("I click save and continue button on Adjustment Volume With Spr Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the New Tax Type Code Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 363 on New Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 363 on New Tax Type Code Page

      And("I click save and continue button on New Tax Type Code Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the New Spr Duty Rate Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 11.5 on New Spr Duty Rate Page")
        // ⚠️ No step-def match found for: I enter 11.5 on New Spr Duty Rate Page

      And("I click save and continue button on New Spr Duty Rate Page")
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

      When("I click New SPR duty rate on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click New SPR duty rate on Adjustment Check Your Answers Page

      Then("I am presented with the New Spr Duty Rate Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 14.5 on New Spr Duty Rate Page")
        // ⚠️ No step-def match found for: I enter 14.5 on New Spr Duty Rate Page

      And("I click save and continue button on New Spr Duty Rate Page")
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

      When("I click New tax type on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click New tax type on Adjustment Check Your Answers Page

      Then("I am presented with the New Tax Type Code Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 313 on New Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 313 on New Tax Type Code Page

      And("I click save and continue button on New Tax Type Code Page")
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

    Scenario("4 Adjustments Journey - Changing Non SPR to SPR - Drawback - Spirits") {
      When("I select radio button Drawback on Adjustment Type Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")
        // --- Other possible matches ---
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

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

      When("I enter 315 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 315 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 3000.75 for Total Litres on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Adjustment Volume Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page

      And("I click save and continue button on Adjustment Volume Page")
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

      When("I click Tax type on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click Tax type on Adjustment Check Your Answers Page

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 375 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 375 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

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

    }

    Scenario("5- Adjustments Journey - Change SPR to Non SPR - Drawback - Other Fermented Products") {
      When("I select radio button Drawback on Adjustment Type Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")
        // --- Other possible matches ---
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

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

      When("I enter 374 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 374 on Adjustment Tax Type Code Page

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

      When("I click Tax type on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click Tax type on Adjustment Check Your Answers Page

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 314 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 314 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 3000.75 for Total Litres on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Adjustment Volume Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page

      And("I click save and continue button on Adjustment Volume Page")
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

    Scenario("6 Adjustments Journey - Change Link Functionality - Spoilt - Spirits") {
      When("I select radio button Spoilt on Adjustment Type Page")
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

      Then("I am presented with the Spoilt Alcohol Type Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Spirits on Spoilt Alcohol Type Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Spoilt Alcohol Type Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Spoilt Alcohol Volume Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 3000.75 for Total Litres on Spoilt Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Spoilt Alcohol Volume Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Spoilt Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Spoilt Alcohol Volume Page

      And("I enter 3255.55 for Duty Paid on Spoilt Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 3255.55 for Duty Paid on Spoilt Alcohol Volume Page

      And("I click save and continue button on Spoilt Alcohol Volume Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Description on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click Description on Adjustment Check Your Answers Page

      Then("I am presented with the Spoilt Alcohol Type Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I select radio button Beer on Spoilt Alcohol Type Page")
        // Possible match (best=0.50)
        whenISelectRadioButtonOn("", "")

      And("I click save and continue button on Spoilt Alcohol Type Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Spoilt Beer Alcohol Volume Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 3000.75 for Total Litres on Spoilt Beer Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Spoilt Beer Alcohol Volume Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Spoilt Beer Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Spoilt Beer Alcohol Volume Page

      And("I enter 3255.55 for Duty Paid on Spoilt Beer Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 3255.55 for Duty Paid on Spoilt Beer Alcohol Volume Page

      And("I click save and continue button on Spoilt Beer Alcohol Volume Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        // Possible match (best=0.58)
        thenIAmPresentedWithThe("")
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Duty value on Adjustment Check Your Answers Page")
        // ⚠️ No step-def match found for: I click Duty value on Adjustment Check Your Answers Page

      Then("I am presented with the Spoilt Beer Alcohol Volume Page with new url")
        // Possible match (best=0.62)
        thenIAmPresentedWithTheWithNewUrl("")
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 3222.75 for Total Litres on Spoilt Beer Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 3222.75 for Total Litres on Spoilt Beer Alcohol Volume Page

      And("I enter 255.5500 for Litres Of Pure Alcohol on Spoilt Beer Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 255.5500 for Litres Of Pure Alcohol on Spoilt Beer Alcohol Volume Page

      And("I enter 3200.55 for Duty Paid on Spoilt Beer Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 3200.55 for Duty Paid on Spoilt Beer Alcohol Volume Page

      And("I click save and continue button on Spoilt Beer Alcohol Volume Page")
        // Possible match (best=0.61)
        whenIClickSaveAndContinueButtonOn("")
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
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
  }
}
