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

      When("I add an under-declaration adjustment with value exceeding £1000")
      AdjustmentTypePage.selectAdjustmentType("Under-declaration")
      AdjustmentReturnDatePage.enterDate("09", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("371")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75", "250.5500", "9.8")
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()
      AdjustmentListPage.addAnother(false)
      TaskListPage.checkURL

      And("I enter the under-declaration reason")
      TaskListPage.clickHyperlink("Tell us why products were under-declared")
      UnderDeclarationReasonPage.enterDetails("Test Under Declaration Reason")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I change the adjustment volumes and save")
      TaskListPage.clickHyperlink("Declare adjustments")
      AdjustmentListPage.selectHyperlink("Change Hyperlink")
      AdjustmentCheckYourAnswersPage.clickChangeLinkWithNewUrl("Volume")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("2000.55", "100.2500", "6.50")
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()
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

      When("I add two over-declaration adjustments with value exceeding £1000")
      AdjustmentTypePage.selectAdjustmentType("Over-declaration")
      AdjustmentReturnDatePage.enterDate("10", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("372")
      AdjustmentVolumeWithSprPage.enterVolumes("1000.75", "150.5500", "4.5")
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()
      AdjustmentListPage.addAnother(true)
      AdjustmentTypePage.selectAdjustmentType("Over-declaration")
      AdjustmentReturnDatePage.enterDate("10", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("372")
      AdjustmentVolumeWithSprPage.enterVolumes("1000.75", "150.5500", "4.5")
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()
      AdjustmentListPage.addAnother(false)
      TaskListPage.checkURL

      And("I enter the over-declaration reason")
      TaskListPage.clickHyperlink("Tell us why products were over-declared")
      OverDeclarationReasonPage.enterDetails("Test Over Declaration Reason")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I remove one adjustment and save the answers")
      TaskListPage.clickHyperlink("Declare adjustments")
      AdjustmentListPage.selectHyperlink("Remove Hyperlink")
      RemoveAdjustmentPage.remove(false)
      AdjustmentListPage.selectHyperlink("Remove Hyperlink")
      RemoveAdjustmentPage.remove(true)
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }
  }
}
