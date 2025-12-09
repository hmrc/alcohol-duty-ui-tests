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

import specpage.alcoholDuty.adjustments.{AdjustmentCheckYourAnswersPage, AdjustmentDutyValuePage, AdjustmentListPage, AdjustmentReturnDatePage, AdjustmentTaxTypeCodePage, AdjustmentTypePage, AdjustmentVolumeWithSprPage, UnderDeclarationReasonPage}
import specpage.common.TaskListPage
import specs.BaseSpec
import specs.tags.{Adjustments, AllTests}
import specsteps.BaseStepDefSteps._

class AdjustmentsJourneyHappyPathSpec extends BaseSpec {

  Feature("Adjustments Journey") {

    Scenario(
      "Adjustments Journey - Validating under-declaration-reason removal from task List page when amount is changed to less than £1000 - Under-declaration - Beer - With SPR",
      AllTests,
      Adjustments
    ) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I select radio button Under-declaration on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Under-declaration")

      Then("I enter month 09 and year 2023 on Adjustment Return Date Page")
      AdjustmentReturnDatePage.enterDate("09","2023")

      When("I enter 371 on Adjustment Tax Type Code Page")
      AdjustmentTaxTypeCodePage.enterDetails("371")

      When("I enter volumes on Adjustment Volume With Spr Page")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75","250.5500","9.8")

      Then("I click save and continue on the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I click save and continue on the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      Then("I select No radio button on the Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I click on Tell us why products were under-declared hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us why products were under-declared")

      When("I enter Test Under Declaration Reason on Under Declaration Reason Page")
      UnderDeclarationReasonPage.enterDetails("Test Under Declaration Reason")

      When("I click on Declare adjustments hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare adjustments")

      When("I click Change Hyperlink on Adjustment List Page")
      AdjustmentListPage.clickHyperlink("Change")

      When("I click Volume on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickChangeLinkWithNewUrl("Volume")

      Then("I enter volumes on Adjustment Volume With Spr Page with new url")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("2000.55","100.2500","6.50")

      Then("I click save and continue on the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I click save and continue on the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      Then("I select radio button No on Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }

    Scenario(
      "Adjustments Journey - Validating over-declaration-reason removal from task List page when amount is changed to less than £1000 after deleting one of the adjustment- Over-declaration - Cider - With SPR",
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

      When("I enter 1000.75 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("1000.75", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 150.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("150.5500", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 4.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("4.5", "SPR Duty Rate", "Adjustment Volume With Spr Page")

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

      When("I select radio button Yes on Adjustment List Page")
      whenISelectRadioButtonOn("Yes", "Adjustment List Page")

      And("I click save and continue button on Adjustment List Page")
      whenIClickSaveAndContinueButtonOn("Adjustment List Page")

      Then("I am presented with the Adjustment Type Page")
      thenIAmPresentedWithThe("Adjustment Type Page")

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

      When("I enter 1000.75 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("1000.75", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 150.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("150.5500", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 4.5 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("4.5", "SPR Duty Rate", "Adjustment Volume With Spr Page")

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

      When("I click on Tell us why products were over-declared hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Tell us why products were over-declared", "Task List Page")

      Then("I am presented with the Over Declaration Reason Page")
      thenIAmPresentedWithThe("Over Declaration Reason Page")

      When("I enter Test Over Declaration Reason on Over Declaration Reason Page")
      whenIEnterOn("Test Over Declaration Reason", "Over Declaration Reason Page")

      And("I click save and continue button on Over Declaration Reason Page")
      whenIClickSaveAndContinueButtonOn("Over Declaration Reason Page")

      Then("I am presented with the Task List Page")
      thenIAmPresentedWithThe("Task List Page")

      When("I click on Declare adjustments hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Declare adjustments", "Task List Page")

      Then("I am presented with the Adjustment List Page")
      thenIAmPresentedWithThe("Adjustment List Page")

      When("I click Remove Hyperlink on Adjustment List Page")
      whenIClickOn("Remove Hyperlink", "Adjustment List Page")

      Then("I am presented with the Remove Adjustment Page")
      thenIAmPresentedWithThe("Remove Adjustment Page")

      When("I select radio button No on Remove Adjustment Page")
      whenISelectRadioButtonOn("No", "Remove Adjustment Page")

      And("I click save and continue button on Remove Adjustment Page")
      whenIClickSaveAndContinueButtonOn("Remove Adjustment Page")

      Then("I am presented with the Adjustment List Page")
      thenIAmPresentedWithThe("Adjustment List Page")

      When("I click Remove Hyperlink on Adjustment List Page")
      whenIClickOn("Remove Hyperlink", "Adjustment List Page")

      Then("I am presented with the Remove Adjustment Page")
      thenIAmPresentedWithThe("Remove Adjustment Page")

      When("I select radio button Yes on Remove Adjustment Page")
      whenISelectRadioButtonOn("Yes", "Remove Adjustment Page")

      And("I click save and continue button on Remove Adjustment Page")
      whenIClickSaveAndContinueButtonOn("Remove Adjustment Page")

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
