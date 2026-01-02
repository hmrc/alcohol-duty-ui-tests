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

      When("I enter an under-declaration adjustment (beer, non-SPR)")
      AdjustmentTypePage.selectAdjustmentType("Under-declaration")
      AdjustmentReturnDatePage.enterDate("09", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("311")
      AdjustmentVolumePage.enterVolumes()
      AdjustmentDutyValuePage.continue()

      And("I change the adjustment type to over-declaration (beer, SPR) from the Check Your Answers page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("Adjustment")
      AdjustmentTypePage.selectAdjustmentTypeWithNewUrl("Over-declaration")
      AdjustmentReturnDatePage.enterDateWithNewUrl("09", "2023")
      AdjustmentTaxTypeCodePage.enterDetailsWithNewUrl("371")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("3000.75", "250.5500", "9.8")
      AdjustmentDutyValuePage.continue()

      And("I add the adjustment and complete the journey")
      AdjustmentCheckYourAnswersPage.continue()
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }

    Scenario(
      "2- Adjustments Journey - Change Link Functionality for Return period being adjusted And Tax Type and SPR Duty Rate - Over-declaration - Cider",
      AllTests,
      Adjustments
    ) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I enter an over-declaration adjustment (cider, SPR)")
      AdjustmentTypePage.selectAdjustmentType("Over-declaration")
      AdjustmentReturnDatePage.enterDate("10", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("372")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75", "250.5500", "9.8")
      AdjustmentDutyValuePage.continue()

      And("I change the Return period being adjusted from the Check Your Answers page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("Return period being adjusted")
      AdjustmentReturnDatePage.enterDateWithNewUrl("12", "2023")
      AdjustmentTaxTypeCodePage.enterDetailsWithNewUrl("372")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("3000.75", "250.5500", "10.5")
      AdjustmentDutyValuePage.continue()

      And("I change the tax type (to OFP, SPR) from the Check Your Answers page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("Tax type")
      AdjustmentTaxTypeCodePage.enterDetailsWithNewUrl("374")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("3000.75", "250.5500", "10.5")
      AdjustmentDutyValuePage.continue()

      And("I change the SPR duty rate from the Check Your Answers page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("SPR duty rate")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("3000.75", "250.5500", "12.5")
      AdjustmentDutyValuePage.continue()

      And("I add the adjustment and complete the journey")
      AdjustmentCheckYourAnswersPage.continue()
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }

    Scenario(
      "3- Adjustments Journey - Change Link Functionality for Volume And New Tax Type - Repackaged Draught Products - Wine",
      AllTests,
      Adjustments
    ) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I enter a repackaged adjustment (SPR)")
      AdjustmentTypePage.selectAdjustmentType("Repackaged draught products")
      AdjustmentReturnDatePage.enterDate("11", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("373")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75", "250.5500", "9.8")
      NewTaxTypeCodePage.enterDetails("363")
      NewSprDutyRatePage.enterDetails("11.5")
      AdjustmentDutyValuePage.continue()

      And("I change the volumes from the Check Your Answers page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("Volume")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("4000.75", "350.5500", "8.5")
      NewTaxTypeCodePage.enterDetailsWithNewUrl("363")
      NewSprDutyRatePage.enterDetailsWithNewUrl("11.5")
      AdjustmentDutyValuePage.continue()

      And("I change the new SPR duty rate from the Check Your Answers page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("New SPR duty rate")
      NewSprDutyRatePage.enterDetailsWithNewUrl("14.5")
      AdjustmentDutyValuePage.continue()

      And("I change the new tax type (to non-SPR) from the Check Your Answers page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("New tax type")
      NewTaxTypeCodePage.enterDetailsWithNewUrl("313")
      AdjustmentDutyValuePage.continue()

      And("I add the adjustment and complete the journey")
      AdjustmentCheckYourAnswersPage.continue()
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }

    Scenario("4 Adjustments Journey - Changing Non SPR to SPR - Drawback - Spirits", AllTests, Adjustments) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I enter a drawback adjustment (spirits, non-SPR)")
      AdjustmentTypePage.selectAdjustmentType("Drawback")
      AdjustmentReturnDatePage.enterDate("10", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("315")
      AdjustmentVolumePage.enterVolumes()
      AdjustmentDutyValuePage.continue()

      And("I change the tax type (to SPR) from the Check Your Answers page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("Tax type")
      AdjustmentTaxTypeCodePage.enterDetailsWithNewUrl("375")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("3000.75", "250.5500", "9.8")
      AdjustmentDutyValuePage.continue()

      And("I add the adjustment and complete the journey")
      AdjustmentCheckYourAnswersPage.continue()
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }

    Scenario(
      "5- Adjustments Journey - Change SPR to Non SPR - Drawback - Other Fermented Products",
      AllTests,
      Adjustments
    ) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I enter a drawback adjustment (OFP, SPR)")
      AdjustmentTypePage.selectAdjustmentType("Drawback")
      AdjustmentReturnDatePage.enterDate("10", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("374")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75", "250.5500", "9.8")
      AdjustmentDutyValuePage.continue()

      And("I change the tax type (to non-SPR) from the Check Your Answers page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("Tax type")
      AdjustmentTaxTypeCodePage.enterDetailsWithNewUrl("314")
      AdjustmentVolumePage.enterVolumesWithNewUrl()
      AdjustmentDutyValuePage.continue()

      And("I add the adjustment and complete the journey")
      AdjustmentCheckYourAnswersPage.continue()
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }

    Scenario("6 Adjustments Journey - Change Link Functionality - Spoilt - Spirits", AllTests, Adjustments) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I enter a spoilt adjustment for spirits")
      AdjustmentTypePage.selectAdjustmentType("Spoilt")
      SpoiltAlcoholTypePage.selectAlcoholType("Spirits")
      SpoiltAlcoholVolumePage.enterVolumes()

      And("I change the alcohol type to beer from the Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("Description")
      SpoiltAlcoholTypePage.selectAlcoholTypeWithNewUrl("Beer")
      SpoiltAlcoholVolumePage.enterVolumes()

      And("I change the volumes and duty value from the Check Your Answers page")
      AdjustmentCheckYourAnswersPage.clickChangeLink("Duty value")
      SpoiltAlcoholVolumePage.enterVolumesWithNewUrl("3222.75", "255.5500", "3200.55")

      And("I add the adjustment and complete the journey")
      AdjustmentCheckYourAnswersPage.continue()
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }
  }
}
