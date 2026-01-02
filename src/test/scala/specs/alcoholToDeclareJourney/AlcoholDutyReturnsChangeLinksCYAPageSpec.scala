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

package specs.alcoholToDeclareJourney

import specpage.alcoholDuty.adjustments.*
import specpage.alcoholDuty.alcoholToDeclare.Beer.*
import specpage.alcoholDuty.alcoholToDeclare.Cider.*
import specpage.alcoholDuty.alcoholToDeclare.OtherFermentedProducts.*
import specpage.alcoholDuty.alcoholToDeclare.Spirits.*
import specpage.alcoholDuty.alcoholToDeclare.Wine.*
import specpage.alcoholDuty.dutySuspendedDeliveries.*
import specpage.alcoholDuty.quarterlySpiritsQuestion.*
import specpage.common.{ReturnSubmittedPage, ReturnSummaryPage, TaskListPage}
import specs.BaseSpec
import specs.tags.{AlcoholToDeclare, AllTests}
import specsteps.BaseStepDefSteps.*

class AlcoholDutyReturnsChangeLinksCYAPageSpec extends BaseSpec {

  Feature("Alcohol Duty Returns Journey - Change Links - CYA Page") {

    Scenario(
      "Beer- Alcohol Duty Returns Journey - When Multiple SPR is set to 'Yes' - Change link functionality",
      AllTests,
      AlcoholToDeclare
    ) {
      Given("I start a return and select all alcohol regimes")
      loginAndStartReturn("AABCP0000100208")
      selectAllRegimes()

      When("I declare beer and add one multiple SPR declaration")
      TaskListPage.clickHyperlink("Declare beer")
      WhatDoYouNeedToDeclareBeerPage.selectRateBands(
        "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR)"
      )
      HowMuchYouNeedToDeclareBeerPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.selectMultipleSpr(true)
      MultipleSmallProducerReliefRateBeerPage.enterDetailsFor361()

      And("I change the tax type of the multiple SPR declaration from the Check Your Answers SPR Page")
      CheckYourAnswersSPRBeerPage.clickChangeLink("Change Description")
      MultipleSmallProducerReliefRateBeerPage.changeTaxTypeFromCheckYourAnswers()
      CheckYourAnswersSPRBeerPage.continue()

      And("I change the multiple SPR declaration details from the Multiple SPR List")
      MultipleSPRListQuestionBeerPage.clickChangeHyperlink()
      MultipleSmallProducerReliefRateBeerPage.changeDetailsFromMultipleSprList()
      CheckYourAnswersSPRBeerPage.continueAfterChange()

      And("I delete the rate bands with missing multiple SPR declarations")
      MultipleSPRListQuestionBeerPage.addAnother(false)
      YouHaveSomeMissingDetailsPage.addMissingRateBands(false)
      DeleteAlcoholPage.deleteRateBands(true)

      Then("I am presented with the Check Your Answers Returns Beer Page")
      CheckYourAnswersReturnsBeerPage.checkURL

    }

    Scenario(
      "Cider- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality",
      AllTests,
      AlcoholToDeclare
    ) {
      Given("I start a return and select all alcohol regimes")
      loginAndStartReturn("AABCP0000100208")
      selectAllRegimes()

      When("I declare cider and with single SPR")
      TaskListPage.clickHyperlink("Declare cider")
      WhatDoYouNeedToDeclareCiderPage.selectRateBands(
        "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR),Cider between 1.3% and 3.4% ABV (tax type code 372 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)"
      )
      HowMuchYouNeedToDeclareCiderPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateCiderPage.selectMultipleSpr(false)
      SingleSmallProducerReliefRateCiderPage.enterDetailsForAllSprRateBands()

      And("I change the selected rate bands from the Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider to declare")
      WhatDoYouNeedToDeclareCiderPage.continueInCheckMode()
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider to declare")
      WhatDoYouNeedToDeclareCiderPage.unselectRateBandsInCheckMode(
        "Sparkling cider between 5.6% and 8.4% ABV (tax type code 359)"
      )
      HowMuchYouNeedToDeclareCiderPage.enterDetailsForAllRateBands(exclude359 = true)
      DoYouHaveMultipleSmallProducerReliefDutyRateCiderPage.selectMultipleSpr(false)
      SingleSmallProducerReliefRateCiderPage.enterDetailsForAllSprRateBands()

      And("I change the non-SPR volumes from the Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider duty")
      HowMuchYouNeedToDeclareCiderPage.continueInCheckMode()
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider duty")
      HowMuchYouNeedToDeclareCiderPage.updateDetailsInCheckMode()

      And("I change the single SPR volumes from the Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider eligible for Small Producer Relief")
      SingleSmallProducerReliefRateCiderPage.continueInCheckMode()
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider eligible for Small Producer Relief")
      SingleSmallProducerReliefRateCiderPage.updateDetailsInCheckMode()

      And("I click the change links on the Duty Due Cider Page")
      CheckYourAnswersReturnsCiderPage.continue()
      DutyDueCiderPage.clickChangeLink(3)
      CheckYourAnswersReturnsCiderPage.continue()
      DutyDueCiderPage.clickChangeLink(4)

      And("I confirm the declarations and complete the journey")
      CheckYourAnswersReturnsCiderPage.continue()
      DutyDueCiderPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }

    Scenario("To verify the change link functionalities from the Return Summary Page", AllTests, AlcoholToDeclare) {
      Given("I start a return and select all alcohol regimes")
      loginAndStartReturn("AABCP0000100208")
      selectAllRegimes()

      When("I declare beer (one non-SPR rate band only)")
      TaskListPage.clickHyperlink("Declare beer")
      WhatDoYouNeedToDeclareBeerPage.selectRateBands("Beer at or above 22.1% ABV (tax type code 341)")
      HowMuchYouNeedToDeclareBeerPage.enterDetailsFor341()
      CheckYourAnswersReturnsBeerPage.continue()
      DutyDueBeerPage.continue()
      TaskListPage.checkURL

      And("I declare cider (one non-SPR rate band only)")
      TaskListPage.clickHyperlink("Declare cider")
      WhatDoYouNeedToDeclareCiderPage.selectRateBands("Cider between 1.3% and 3.4% ABV (tax type code 312)")
      HowMuchYouNeedToDeclareCiderPage.enterDetailsFor312()
      CheckYourAnswersReturnsCiderPage.continue()
      DutyDueCiderPage.continue()
      TaskListPage.checkURL

      And("I declare wine (one non-SPR rate band only)")
      TaskListPage.clickHyperlink("Declare wine")
      DeclaringYourWineForDutyPage.continue()
      WhatDoYouNeedToDeclareWinePage.selectRateBands("Wine between 1.3% and 3.4% ABV (tax type code 313)")
      HowMuchYouNeedToDeclareWinePage.enterDetailsFor313()
      CheckYourAnswersReturnsWinePage.continue()
      DutyDueWinePage.continue()
      TaskListPage.checkURL

      And("I declare spirits (one non-SPR rate band only)")
      TaskListPage.clickHyperlink("Declare spirits")
      WhatDoYouNeedToDeclareSpiritsPage.selectRateBands("Spirits between 1.3% and 3.4% ABV (tax type code 315)")
      HowMuchYouNeedToDeclareSpiritsPage.enterDetailsFor315()
      CheckYourAnswersReturnsSpiritsPage.continue()
      DutyDueSpiritsPage.continue()
      TaskListPage.checkURL

      And("I declare other fermented products (one non-SPR rate band only)")
      TaskListPage.clickHyperlink("Declare other fermented products")
      WhatDoYouNeedToDeclareOtherFermentedProductPage.selectRateBands(
        "Other fermented products between 1.3% and 3.4% ABV (tax type code 314)"
      )
      HowMuchYouNeedToDeclareOtherFermentedProductPage.enterDetailsFor314()
      CheckYourAnswersReturnsOtherFermentedProductPage.continue()
      DutyDueOtherFermentedProductPage.continue()
      TaskListPage.checkURL

      And("I add one repackaged (non-SPR) adjustment")
      TaskListPage.clickHyperlink("Tell us if you have adjustments to declare")
      DeclareAdjustmentQuestionPage.declareAdjustments(true)
      AdjustmentTypePage.selectAdjustmentType("Repackaged draught products")
      AdjustmentReturnDatePage.enterDate("11", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("353")
      AdjustmentVolumePage.enterVolumes()
      NewTaxTypeCodePage.enterDetails("313")
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()
      AdjustmentListPage.addAnother(false)
      TaskListPage.checkURL

      And("I declare duty suspended deliveries")
      TaskListPage.clickHyperlink("Tell us if you have delivered or received finished products in duty suspense")
      DeclareDutySuspendedDeliveriesPage.declareDSD(true)
      DutySuspendedDeliveriesGuidancePage.continue()
      DutySuspendedBeerPage.enterVolumes()
      DutySuspendedCiderPage.enterVolumes()
      DutySuspendedWinePage.enterVolumes()
      DutySuspendedSpiritsPage.enterVolumes()
      DutySuspendedOtherFermentedProductsPage.enterVolumes()
      DutySuspendedDeliveriesCheckYourAnswersPage.continue()
      TaskListPage.checkURL

      And("I declare quarterly spirits")
      TaskListPage.clickHyperlink("Tell us about spirits produced in the past three months")
      QuarterlySpiritsReturnsGuidancePage.declareSpirits(true)
      TotalOfAllSpiritsPage.enterVolume("99")
      DeclareWhiskeyPage.enterVolumes()
      WhichOfTheseSpiritsHaveYouProducedPage.selectSpiritTypes(
        "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits"
      )
      DeclareOtherSpiritsProducedPage.enterDetails("Test Spirits")
      QuarterlySpiritsCheckYourAnswersPage.continue()
      TaskListPage.checkURL

      Then("I click the change links for alcohol declarations on the Return Summary Page")
      TaskListPage.clickHyperlink("Check duty payable and send your return")
      ReturnSummaryPage.clickChangeLink("Change Declared spirits duty")
      CheckYourAnswersReturnsSpiritsPage.checkURL
      navigateToPage(ReturnSummaryPage)
      ReturnSummaryPage.clickChangeLink("Change Declared wine duty")
      CheckYourAnswersReturnsWinePage.checkURL
      navigateToPage(ReturnSummaryPage)
      ReturnSummaryPage.clickChangeLink("Change Declared cider duty")
      CheckYourAnswersReturnsCiderPage.checkURL
      navigateToPage(ReturnSummaryPage)
      ReturnSummaryPage.clickChangeLink("Change Declared other fermented products duty")
      CheckYourAnswersReturnsOtherFermentedProductPage.checkURL
      navigateToPage(ReturnSummaryPage)
      ReturnSummaryPage.clickChangeLink("Change Declared beer duty")
      CheckYourAnswersReturnsBeerPage.checkURL

      And("I click the change link for adjustments on the Return Summary Page")
      navigateToPage(ReturnSummaryPage)
      ReturnSummaryPage.clickChangeLink("Change Adjustment duty value")
      AdjustmentListPage.checkURL

      And("I click the change link for duty suspended deliveries on the Return Summary Page")
      navigateToPage(ReturnSummaryPage)
      ReturnSummaryPage.clickChangeLink("Change Duty suspended alcohol")
      DutySuspendedDeliveriesCheckYourAnswersPage.checkURL

      And("I click the change link for quarterly spirits on the Return Summary Page")
      navigateToPage(ReturnSummaryPage)
      ReturnSummaryPage.clickChangeLink("Change Spirits production")
      QuarterlySpiritsCheckYourAnswersPage.checkURL

      Then("I submit the return")
      navigateToPage(ReturnSummaryPage)
      ReturnSummaryPage.continue()
      ReturnSubmittedPage.checkURL

    }
  }
}
