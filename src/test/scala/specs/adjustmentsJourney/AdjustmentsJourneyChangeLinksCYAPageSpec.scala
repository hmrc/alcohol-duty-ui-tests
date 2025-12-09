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

import specpage.alcoholDuty.adjustments.{AdjustmentCheckYourAnswersPage, AdjustmentDutyValuePage, AdjustmentListPage, AdjustmentReturnDatePage, AdjustmentTaxTypeCodePage, AdjustmentTypePage, AdjustmentVolumePage, AdjustmentVolumeWithSprPage, NewSprDutyRatePage, NewTaxTypeCodePage, SpoiltAlcoholTypePage, SpoiltAlcoholVolumePage, SpoiltBeerAlcoholVolumePage}
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

      When("I select radio button Under-declaration on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Under-declaration")

      Then("I am presented with the Adjustment Return Date Page")
      AdjustmentReturnDatePage.enterDate("09", "2023")

      Then("I am presented with the Adjustment Tax Type Code Page")
      AdjustmentTaxTypeCodePage.enterDetails("311")

      Then("I am presented with the Adjustment Volume Page")
      AdjustmentVolumePage.enterVolumes()

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      Then("I am presented with the Adjustment Type Page with new url")
      AdjustmentTypePage.selectAdjustmentTypeWithNewUrl("Over-declaration")

      When("I enter month 09 and year 2023 on Adjustment Return Date Page")
      AdjustmentReturnDatePage.enterDateWithNewUrl("09","2023")

      When("I enter 371 on Adjustment Tax Type Code Page")
      AdjustmentTaxTypeCodePage.enterDetailsWithNewUrl("371")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("3000.75","250.5500","9.8")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.saveAndContinue()

      Then("I am presented with the Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.url

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
      AdjustmentTypePage.selectAdjustmentType("Over-declaration")

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
      AdjustmentReturnDatePage.enterDate("10","2023")

      Then("I am presented with the Adjustment Tax Type Code Page")
      AdjustmentTaxTypeCodePage.enterDetails("372")

      Then("I am presented with the Adjustment Volume With Spr Page")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75","250.5500","9.8")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickButton("Return period being adjusted")

      Then("I am presented with the Adjustment Return Date Page with new url")
      AdjustmentReturnDatePage.enterDateWithNewUrl("12","2023")

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
      AdjustmentTaxTypeCodePage.enterDetailsWithNewUrl("372")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("3000.75","250.5500","10.5")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickButton("Tax type")

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
      AdjustmentTaxTypeCodePage.enterDetailsWithNewUrl("374")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("3000.75","250.5500","10.5")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickButton("SPR duty rate")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("3000.75","250.5500","12.5")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.saveAndContinue()

      Then("I am presented with the Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.url

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
      AdjustmentTypePage.selectAdjustmentType("Repackaged draught products")

      Then("I am presented with the Adjustment Return Date Page")
      AdjustmentReturnDatePage.enterDate("11","2023")

      Then("I am presented with the Adjustment Tax Type Code For Repackaged Page")
      AdjustmentTaxTypeCodePage.enterDetails("373")

      Then("I am presented with the Adjustment Volume With Spr Page")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75","250.5500","9.8")

      Then("I am presented with the New Tax Type Code Page")
      NewTaxTypeCodePage.enterDetails("363")

      Then("I am presented with the New Spr Duty Rate Page")
      NewSprDutyRatePage.enterDetails("11.5")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickButton("Volume")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("4000.75","350.5500","8.5")

      Then("I am presented with the New Tax Type Code Page with new url")
      NewTaxTypeCodePage.enterDetailsWithNewUrl("363")

      Then("I am presented with the New Spr Duty Rate Page with new url")
      NewSprDutyRatePage.enterDetailsWithNewUrl("11.5")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickButton("New SPR duty rate")

      Then("I am presented with the New Spr Duty Rate Page with new url")
      NewSprDutyRatePage.enterDetailsWithNewUrl("14.5")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickButton("New tax type")

      Then("I am presented with the New Tax Type Code Page with new url")
      NewTaxTypeCodePage.enterDetailsWithNewUrl("313")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.saveAndContinue()

      Then("I am presented with the Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.url

    }

    Scenario("4 Adjustments Journey - Changing Non SPR to SPR - Drawback - Spirits", AllTests, Adjustments) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I select radio button Drawback on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Drawback")

      Then("I am presented with the Adjustment Return Date Page")
      AdjustmentReturnDatePage.enterDate("10","2023")

      Then("I am presented with the Adjustment Tax Type Code Page")
      AdjustmentTaxTypeCodePage.enterDetails("315")

      Then("I am presented with the Adjustment Volume Page")
      AdjustmentVolumePage.enterVolumes()

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickButton("Tax type")

      When("I enter 375 on Adjustment Tax Type Code Page")
      AdjustmentTaxTypeCodePage.enterDetailsWithNewUrl("375")

      Then("I am presented with the Adjustment Volume With Spr Page with new url")
      AdjustmentVolumeWithSprPage.enterVolumesWithNewUrl("3000.75","250.5500","9.8")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.saveAndContinue()

      Then("I am presented with the Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.url

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
      AdjustmentTypePage.selectAdjustmentType("Drawback")

      Then("I am presented with the Adjustment Return Date Page")
      AdjustmentReturnDatePage.enterDate("10","2023")

      Then("I am presented with the Adjustment Tax Type Code Page")
      AdjustmentTaxTypeCodePage.enterDetails("374")

      Then("I am presented with the Adjustment Volume With Spr Page")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75","250.5500","9.8")

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickButton("Tax type")

      Then("I am presented with the Adjustment Tax Type Code Page with new url")
      AdjustmentTaxTypeCodePage.enterDetailsWithNewUrl("314")

      Then("I am presented with the Adjustment Volume Page with new url")
      AdjustmentVolumePage.enterVolumesWithoutSpr()

      Then("I am presented with the Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.saveAndContinue()

      Then("I am presented with the Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.url
    }

    Scenario("6 Adjustments Journey - Change Link Functionality - Spoilt - Spirits", AllTests, Adjustments) {
      Given("I start a return and navigate to the Adjustment Type Page")
      loginAndStartReturn("AABCP0000100208")
      navigateToAdjustmentTypePage()

      When("I select radio button Spoilt on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Spoilt")

      Then("I am presented with the Spoilt Alcohol Type Page")
      SpoiltAlcoholTypePage.selectAlcoholType("Spirits")

      Then("I am presented with the Spoilt Alcohol Volume Page")
      SpoiltAlcoholVolumePage.enterVolumes()

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickButton("Description")

      When("I select radio button Beer on Spoilt Alcohol Type Page")
      SpoiltAlcoholTypePage.selectAlcoholTypeWithNewUrl("Beer")

      When("I enter 3000.75 for Total Litres on Spoilt Beer Alcohol Volume Page")
      SpoiltBeerAlcoholVolumePage.enterVolumes("3000.75","250.5500","3255.55")

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.clickButton("Duty value")

      Then("I am presented with the Spoilt Beer Alcohol Volume Page with new url")
      SpoiltBeerAlcoholVolumePage.enterVolumesWithNewUrl("3222.75","255.5500","3200.55")

      Then("I am presented with the Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.saveAndContinue()

      Then("I am presented with the Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.url
    }
  }
}
