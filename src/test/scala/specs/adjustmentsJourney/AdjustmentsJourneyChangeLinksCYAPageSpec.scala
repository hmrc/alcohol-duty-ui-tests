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
import specs.tags.{Adjustments, AllTests}
import specsteps.BaseStepDefSteps._

class AdjustmentsJourneyChangeLinksCYAPageSpec extends BaseSpec {

  Feature("Adjustments Journey - Change Links - CYA Page") {

    Scenario(
      "1- Adjustments Journey - Change Link Functionality for Adjustment Type - Under-declaration - Beer",
      AllTests,
      Adjustments
    ) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I select radio button Under-declaration on Adjustment Type Page")
      whenISelectRadioButtonOn("Under-declaration", "Adjustment Type Page")

      And("I click save and continue button on Adjustment Type Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Type Page")

      Then("I am presented with the Adjustment Return Date Page")
      thenIAmPresentedWithThe("Adjustment Return Date Page")

      When("I enter month 09 and year 2023 on Adjustment Return Date Page")
      whenIEnterMonthAndYearOn("09", "2023", "Adjustment Return Date Page")

      And("I click save and continue button on Adjustment Return Date Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Return Date Page")

      Then("I am presented with the Adjustment Tax Type Code Page")
      thenIAmPresentedWithThe("Adjustment Tax Type Code Page")

      When("I enter 311 on Adjustment Tax Type Code Page")
      whenIEnterOn("311", "Adjustment Tax Type Code Page")

      And("I click save and continue button on Adjustment Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code Page")

      Then("I am presented with the Adjustment Volume Page")
      thenIAmPresentedWithThe("Adjustment Volume Page")

      When("I enter 3000.75 for Total Litres on Adjustment Volume Page")
      whenIEnterForOn("3000.75", "Total Litres", "Adjustment Volume Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Adjustment Volume Page")

      And("I click save and continue button on Adjustment Volume Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click Adjustment on Adjustment Check Your Answers Page")
      whenIClickOn("Adjustment", "Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment Type Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Type Page")

      When("I select radio button Over-declaration on Adjustment Type Page")
      whenISelectRadioButtonOn("Over-declaration", "Adjustment Type Page")

      And("I click save and continue button on Adjustment Type Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Type Page")

      Then("I am presented with the Adjustment Return Date Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Return Date Page")

      When("I enter month 09 and year 2023 on Adjustment Return Date Page")
      whenIEnterMonthAndYearOn("09", "2023", "Adjustment Return Date Page")

      And("I click save and continue button on Adjustment Return Date Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Return Date Page")

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Tax Type Code Page")

      When("I enter 371 on Adjustment Tax Type Code Page")
      whenIEnterOn("371", "Adjustment Tax Type Code Page")

      And("I click save and continue button on Adjustment Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code Page")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Volume With Spr Page")

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("3000.75", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 9.8 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("9.8", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click save and continue button on Adjustment Check Your Answers Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment List Page")
      thenIAmPresentedWithThe("Adjustment List Page")

      When("I select radio button No on Adjustment List Page")
      whenISelectRadioButtonOn("No", "Adjustment List Page")

      And("I click save and continue button on Adjustment List Page")
      whenIClickSaveAndContinueButtonOn("Adjustment List Page")

      Then("I am presented with the Task List Page")
      thenIAmPresentedWithThe("Task List Page")

    }

    Scenario(
      "2- Adjustments Journey - Change Link Functionality for Return period being adjusted And Tax Type and SPR Duty Rate - Over-declaration - Cider",
      AllTests,
      Adjustments
    ) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I select radio button Over-declaration on Adjustment Type Page")
      whenISelectRadioButtonOn("Over-declaration", "Adjustment Type Page")

      And("I click save and continue button on Adjustment Type Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Type Page")

      Then("I am presented with the Adjustment Return Date Page")
      thenIAmPresentedWithThe("Adjustment Return Date Page")

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
      whenIEnterMonthAndYearOn("10", "2023", "Adjustment Return Date Page")

      And("I click save and continue button on Adjustment Return Date Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Return Date Page")

      Then("I am presented with the Adjustment Tax Type Code Page")
      thenIAmPresentedWithThe("Adjustment Tax Type Code Page")

      When("I enter 372 on Adjustment Tax Type Code Page")
      whenIEnterOn("372", "Adjustment Tax Type Code Page")

      And("I click save and continue button on Adjustment Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code Page")

      Then("I am presented with the Adjustment Volume With Spr Page")
      thenIAmPresentedWithThe("Adjustment Volume With Spr Page")

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("3000.75", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 9.8 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("9.8", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click Return period being adjusted on Adjustment Check Your Answers Page")
      whenIClickOn("Return period being adjusted", "Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment Return Date Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Return Date Page")

      When("I enter month 12 and year 2023 on Adjustment Return Date Page")
      whenIEnterMonthAndYearOn("12", "2023", "Adjustment Return Date Page")

      And("I click save and continue button on Adjustment Return Date Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Return Date Page")

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Tax Type Code Page")

      When("I enter 372 on Adjustment Tax Type Code Page")
      whenIEnterOn("372", "Adjustment Tax Type Code Page")

      And("I click save and continue button on Adjustment Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code Page")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Volume With Spr Page")

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("3000.75", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 10.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("10.5", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click Tax type on Adjustment Check Your Answers Page")
      whenIClickOn("Tax type", "Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Tax Type Code Page")

      When("I enter 374 on Adjustment Tax Type Code Page")
      whenIEnterOn("374", "Adjustment Tax Type Code Page")

      And("I click save and continue button on Adjustment Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code Page")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Volume With Spr Page")

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("3000.75", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 10.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("10.5", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click SPR duty rate on Adjustment Check Your Answers Page")
      whenIClickOn("SPR duty rate", "Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Volume With Spr Page")

      And("I enter 12.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("12.5", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click save and continue button on Adjustment Check Your Answers Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment List Page")
      thenIAmPresentedWithThe("Adjustment List Page")

      When("I select radio button No on Adjustment List Page")
      whenISelectRadioButtonOn("No", "Adjustment List Page")

      And("I click save and continue button on Adjustment List Page")
      whenIClickSaveAndContinueButtonOn("Adjustment List Page")

      Then("I am presented with the Task List Page")
      thenIAmPresentedWithThe("Task List Page")

    }

    Scenario(
      "3- Adjustments Journey - Change Link Functionality for Volume And New Tax Type - Repackaged Draught Products - Wine",
      AllTests,
      Adjustments
    ) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I select radio button Repackaged draught products on Adjustment Type Page")
      whenISelectRadioButtonOn("Repackaged draught products", "Adjustment Type Page")

      And("I click save and continue button on Adjustment Type Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Type Page")

      Then("I am presented with the Adjustment Return Date Page")
      thenIAmPresentedWithThe("Adjustment Return Date Page")

      When("I enter month 11 and year 2023 on Adjustment Return Date Page")
      whenIEnterMonthAndYearOn("11", "2023", "Adjustment Return Date Page")

      And("I click save and continue button on Adjustment Return Date Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Return Date Page")

      Then("I am presented with the Adjustment Tax Type Code For Repackaged Page")
      thenIAmPresentedWithThe("Adjustment Tax Type Code For Repackaged Page")

      When("I enter 373 on Adjustment Tax Type Code For Repackaged Page")
      whenIEnterOn("373", "Adjustment Tax Type Code For Repackaged Page")

      And("I click save and continue button on Adjustment Tax Type Code For Repackaged Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code For Repackaged Page")

      Then("I am presented with the Adjustment Volume With Spr Page")
      thenIAmPresentedWithThe("Adjustment Volume With Spr Page")

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("3000.75", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 9.8 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("9.8", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      Then("I am presented with the New Tax Type Code Page")
      thenIAmPresentedWithThe("New Tax Type Code Page")

      When("I enter 363 on New Tax Type Code Page")
      whenIEnterOn("363", "New Tax Type Code Page")

      And("I click save and continue button on New Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("New Tax Type Code Page")

      Then("I am presented with the New Spr Duty Rate Page")
      thenIAmPresentedWithThe("New Spr Duty Rate Page")

      When("I enter 11.5 on New Spr Duty Rate Page")
      whenIEnterOn("11.5", "New Spr Duty Rate Page")

      And("I click save and continue button on New Spr Duty Rate Page")
      whenIClickSaveAndContinueButtonOn("New Spr Duty Rate Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click Volume on Adjustment Check Your Answers Page")
      whenIClickOn("Volume", "Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Volume With Spr Page")

      When("I enter 4000.75 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("4000.75", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 350.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("350.5500", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 8.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("8.5", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      Then("I am presented with the New Tax Type Code Page with new url")
      thenIAmPresentedWithTheWithNewUrl("New Tax Type Code Page")

      When("I enter 363 on New Tax Type Code Page")
      whenIEnterOn("363", "New Tax Type Code Page")

      And("I click save and continue button on New Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("New Tax Type Code Page")

      Then("I am presented with the New Spr Duty Rate Page with new url")
      thenIAmPresentedWithTheWithNewUrl("New Spr Duty Rate Page")

      When("I enter 11.5 on New Spr Duty Rate Page")
      whenIEnterOn("11.5", "New Spr Duty Rate Page")

      And("I click save and continue button on New Spr Duty Rate Page")
      whenIClickSaveAndContinueButtonOn("New Spr Duty Rate Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click New SPR duty rate on Adjustment Check Your Answers Page")
      whenIClickOn("New SPR duty rate", "Adjustment Check Your Answers Page")

      Then("I am presented with the New Spr Duty Rate Page with new url")
      thenIAmPresentedWithTheWithNewUrl("New Spr Duty Rate Page")

      When("I enter 14.5 on New Spr Duty Rate Page")
      whenIEnterOn("14.5", "New Spr Duty Rate Page")

      And("I click save and continue button on New Spr Duty Rate Page")
      whenIClickSaveAndContinueButtonOn("New Spr Duty Rate Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click New tax type on Adjustment Check Your Answers Page")
      whenIClickOn("New tax type", "Adjustment Check Your Answers Page")

      Then("I am presented with the New Tax Type Code Page with new url")
      thenIAmPresentedWithTheWithNewUrl("New Tax Type Code Page")

      When("I enter 313 on New Tax Type Code Page")
      whenIEnterOn("313", "New Tax Type Code Page")

      And("I click save and continue button on New Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("New Tax Type Code Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click save and continue button on Adjustment Check Your Answers Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment List Page")
      thenIAmPresentedWithThe("Adjustment List Page")

      When("I select radio button No on Adjustment List Page")
      whenISelectRadioButtonOn("No", "Adjustment List Page")

      And("I click save and continue button on Adjustment List Page")
      whenIClickSaveAndContinueButtonOn("Adjustment List Page")

      Then("I am presented with the Task List Page")
      thenIAmPresentedWithThe("Task List Page")

    }

    Scenario("4 Adjustments Journey - Changing Non SPR to SPR - Drawback - Spirits", AllTests, Adjustments) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I select radio button Drawback on Adjustment Type Page")
      whenISelectRadioButtonOn("Drawback", "Adjustment Type Page")

      And("I click save and continue button on Adjustment Type Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Type Page")

      Then("I am presented with the Adjustment Return Date Page")
      thenIAmPresentedWithThe("Adjustment Return Date Page")

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
      whenIEnterMonthAndYearOn("10", "2023", "Adjustment Return Date Page")

      And("I click save and continue button on Adjustment Return Date Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Return Date Page")

      Then("I am presented with the Adjustment Tax Type Code Page")
      thenIAmPresentedWithThe("Adjustment Tax Type Code Page")

      When("I enter 315 on Adjustment Tax Type Code Page")
      whenIEnterOn("315", "Adjustment Tax Type Code Page")

      And("I click save and continue button on Adjustment Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code Page")

      Then("I am presented with the Adjustment Volume Page")
      thenIAmPresentedWithThe("Adjustment Volume Page")

      When("I enter 3000.75 for Total Litres on Adjustment Volume Page")
      whenIEnterForOn("3000.75", "Total Litres", "Adjustment Volume Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Adjustment Volume Page")

      And("I click save and continue button on Adjustment Volume Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click Tax type on Adjustment Check Your Answers Page")
      whenIClickOn("Tax type", "Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Tax Type Code Page")

      When("I enter 375 on Adjustment Tax Type Code Page")
      whenIEnterOn("375", "Adjustment Tax Type Code Page")

      And("I click save and continue button on Adjustment Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code Page")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Volume With Spr Page")

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("3000.75", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 9.8 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("9.8", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click save and continue button on Adjustment Check Your Answers Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment List Page")
      thenIAmPresentedWithThe("Adjustment List Page")

      When("I select radio button No on Adjustment List Page")
      whenISelectRadioButtonOn("No", "Adjustment List Page")

      And("I click save and continue button on Adjustment List Page")
      whenIClickSaveAndContinueButtonOn("Adjustment List Page")

      Then("I am presented with the Task List Page")
      thenIAmPresentedWithThe("Task List Page")

    }

    Scenario(
      "5- Adjustments Journey - Change SPR to Non SPR - Drawback - Other Fermented Products",
      AllTests,
      Adjustments
    ) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I select radio button Drawback on Adjustment Type Page")
      whenISelectRadioButtonOn("Drawback", "Adjustment Type Page")

      And("I click save and continue button on Adjustment Type Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Type Page")

      Then("I am presented with the Adjustment Return Date Page")
      thenIAmPresentedWithThe("Adjustment Return Date Page")

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
      whenIEnterMonthAndYearOn("10", "2023", "Adjustment Return Date Page")

      And("I click save and continue button on Adjustment Return Date Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Return Date Page")

      Then("I am presented with the Adjustment Tax Type Code Page")
      thenIAmPresentedWithThe("Adjustment Tax Type Code Page")

      When("I enter 374 on Adjustment Tax Type Code Page")
      whenIEnterOn("374", "Adjustment Tax Type Code Page")

      And("I click save and continue button on Adjustment Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code Page")

      Then("I am presented with the Adjustment Volume With Spr Page")
      thenIAmPresentedWithThe("Adjustment Volume With Spr Page")

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("3000.75", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 9.8 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("9.8", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click Tax type on Adjustment Check Your Answers Page")
      whenIClickOn("Tax type", "Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Tax Type Code Page")

      When("I enter 314 on Adjustment Tax Type Code Page")
      whenIEnterOn("314", "Adjustment Tax Type Code Page")

      And("I click save and continue button on Adjustment Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code Page")

      Then("I am presented with the Adjustment Volume Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Adjustment Volume Page")

      When("I enter 3000.75 for Total Litres on Adjustment Volume Page")
      whenIEnterForOn("3000.75", "Total Litres", "Adjustment Volume Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Adjustment Volume Page")

      And("I click save and continue button on Adjustment Volume Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume Page")

      Then("I am presented with the Adjustment Duty Value Page")
      thenIAmPresentedWithThe("Adjustment Duty Value Page")

      When("I click continue button on Adjustment Duty Value Page")
      whenIClickContinueButtonOn("Adjustment Duty Value Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click save and continue button on Adjustment Check Your Answers Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment List Page")
      thenIAmPresentedWithThe("Adjustment List Page")

      When("I select radio button No on Adjustment List Page")
      whenISelectRadioButtonOn("No", "Adjustment List Page")

      And("I click save and continue button on Adjustment List Page")
      whenIClickSaveAndContinueButtonOn("Adjustment List Page")

      Then("I am presented with the Task List Page")
      thenIAmPresentedWithThe("Task List Page")
    }

    Scenario("6 Adjustments Journey - Change Link Functionality - Spoilt - Spirits", AllTests, Adjustments) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I select radio button Spoilt on Adjustment Type Page")
      whenISelectRadioButtonOn("Spoilt", "Adjustment Type Page")

      And("I click save and continue button on Adjustment Type Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Type Page")

      Then("I am presented with the Spoilt Alcohol Type Page")
      thenIAmPresentedWithThe("Spoilt Alcohol Type Page")

      When("I select radio button Spirits on Spoilt Alcohol Type Page")
      whenISelectRadioButtonOn("Spirits", "Spoilt Alcohol Type Page")

      And("I click save and continue button on Spoilt Alcohol Type Page")
      whenIClickSaveAndContinueButtonOn("Spoilt Alcohol Type Page")

      Then("I am presented with the Spoilt Alcohol Volume Page")
      thenIAmPresentedWithThe("Spoilt Alcohol Volume Page")

      When("I enter 3000.75 for Total Litres on Spoilt Alcohol Volume Page")
      whenIEnterForOn("3000.75", "Total Litres", "Spoilt Alcohol Volume Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Spoilt Alcohol Volume Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Spoilt Alcohol Volume Page")

      And("I enter 3255.55 for Duty Paid on Spoilt Alcohol Volume Page")
      whenIEnterForOn("3255.55", "Duty Paid", "Spoilt Alcohol Volume Page")

      And("I click save and continue button on Spoilt Alcohol Volume Page")
      whenIClickSaveAndContinueButtonOn("Spoilt Alcohol Volume Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click Description on Adjustment Check Your Answers Page")
      whenIClickOn("Description", "Adjustment Check Your Answers Page")

      Then("I am presented with the Spoilt Alcohol Type Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Spoilt Alcohol Type Page")

      When("I select radio button Beer on Spoilt Alcohol Type Page")
      whenISelectRadioButtonOn("Beer", "Spoilt Alcohol Type Page")

      And("I click save and continue button on Spoilt Alcohol Type Page")
      whenIClickSaveAndContinueButtonOn("Spoilt Alcohol Type Page")

      Then("I am presented with the Spoilt Beer Alcohol Volume Page")
      thenIAmPresentedWithThe("Spoilt Beer Alcohol Volume Page")

      When("I enter 3000.75 for Total Litres on Spoilt Beer Alcohol Volume Page")
      whenIEnterForOn("3000.75", "Total Litres", "Spoilt Beer Alcohol Volume Page")

      And("I enter 250.5500 for Litres Of Pure Alcohol on Spoilt Beer Alcohol Volume Page")
      whenIEnterForOn("250.5500", "Litres Of Pure Alcohol", "Spoilt Beer Alcohol Volume Page")

      And("I enter 3255.55 for Duty Paid on Spoilt Beer Alcohol Volume Page")
      whenIEnterForOn("3255.55", "Duty Paid", "Spoilt Beer Alcohol Volume Page")

      And("I click save and continue button on Spoilt Beer Alcohol Volume Page")
      whenIClickSaveAndContinueButtonOn("Spoilt Beer Alcohol Volume Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click Duty value on Adjustment Check Your Answers Page")
      whenIClickOn("Duty value", "Adjustment Check Your Answers Page")

      Then("I am presented with the Spoilt Beer Alcohol Volume Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Spoilt Beer Alcohol Volume Page")

      When("I enter 3222.75 for Total Litres on Spoilt Beer Alcohol Volume Page")
      whenIEnterForOn("3222.75", "Total Litres", "Spoilt Beer Alcohol Volume Page")

      And("I enter 255.5500 for Litres Of Pure Alcohol on Spoilt Beer Alcohol Volume Page")
      whenIEnterForOn("255.5500", "Litres Of Pure Alcohol", "Spoilt Beer Alcohol Volume Page")

      And("I enter 3200.55 for Duty Paid on Spoilt Beer Alcohol Volume Page")
      whenIEnterForOn("3200.55", "Duty Paid", "Spoilt Beer Alcohol Volume Page")

      And("I click save and continue button on Spoilt Beer Alcohol Volume Page")
      whenIClickSaveAndContinueButtonOn("Spoilt Beer Alcohol Volume Page")

      Then("I am presented with the Adjustment Check Your Answers Page")
      thenIAmPresentedWithThe("Adjustment Check Your Answers Page")

      When("I click save and continue button on Adjustment Check Your Answers Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Check Your Answers Page")

      Then("I am presented with the Adjustment List Page")
      thenIAmPresentedWithThe("Adjustment List Page")

      When("I select radio button No on Adjustment List Page")
      whenISelectRadioButtonOn("No", "Adjustment List Page")

      And("I click save and continue button on Adjustment List Page")
      whenIClickSaveAndContinueButtonOn("Adjustment List Page")

      Then("I am presented with the Task List Page")
      thenIAmPresentedWithThe("Task List Page")

    }
  }
}
