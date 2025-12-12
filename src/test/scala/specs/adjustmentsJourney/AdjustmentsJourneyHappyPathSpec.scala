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

import specpage.alcoholDuty.adjustments._
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
      AdjustmentReturnDatePage.enterDate("09", "2023")

      When("I enter 371 on Adjustment Tax Type Code Page")
      AdjustmentTaxTypeCodePage.enterDetails("371")

      When("I enter volumes on Adjustment Volume With Spr Page")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75", "250.5500", "9.8")

      Then("I click save and continue on the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I click save and continue on the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      Then("I select No radio button on the Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      Then("I click on Tell us why products were under-declared hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us why products were under-declared")

      When("I enter Test Under Declaration Reason on Under Declaration Reason Page")
      UnderDeclarationReasonPage.enterDetails("Test Under Declaration Reason")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare adjustments hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare adjustments")

      When("I click Change Hyperlink on Adjustment List Page")
      AdjustmentListPage.selectHyperlink("Change Hyperlink")

      When("I click Volume on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickChangeLinkWithNewUrl("Volume")

      Then("I enter volumes on Adjustment Volume With Spr Page with new url")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("2000.55", "100.2500", "6.50")

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
      AdjustmentTypePage.selectAdjustmentType("Over-declaration")

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
      AdjustmentReturnDatePage.enterDate("10", "2023")

      When("I enter 372 on Adjustment Tax Type Code Page")
      AdjustmentTaxTypeCodePage.enterDetails("372")

      When("I enter volumes on Total Litres on Adjustment Volume With Spr Page")
      AdjustmentVolumeWithSprPage.enterVolumes("1000.75", "150.5500", "4.5")

      When("I click continue button on Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      When("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      When("I select radio button Yes on Adjustment List Page")
      AdjustmentListPage.addAnother(true)

      When("I select radio button Over-declaration on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Over-declaration")

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
      AdjustmentReturnDatePage.enterDate("10", "2023")

      When("I enter 372 on Adjustment Tax Type Code Page")
      AdjustmentTaxTypeCodePage.enterDetails("372")

      When("I enter 1000.75 for Total Litres on Adjustment Volume With Spr Page")
      AdjustmentVolumeWithSprPage.enterVolumes("1000.75", "150.5500", "4.5")

      When("I click continue button on Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      When("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      When("I select radio button No on Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us why products were over-declared hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us why products were over-declared")

      When("I enter Test Over Declaration Reason on Over Declaration Reason Page")
      OverDeclarationReasonPage.enterDetails("Test Over Declaration Reason")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare adjustments hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare adjustments")

      When("I click Remove Hyperlink on Adjustment List Page")
      AdjustmentListPage.selectHyperlink("Remove Hyperlink")

      When("I select radio button No on Remove Adjustment Page")
      RemoveAdjustmentPage.remove(false)

      When("I click Remove Hyperlink on Adjustment List Page")
      AdjustmentListPage.selectHyperlink("Remove Hyperlink")

      When("I select radio button Yes on Remove Adjustment Page")
      RemoveAdjustmentPage.remove(true)

      When("I select radio button No on Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL
    }
  }
}
