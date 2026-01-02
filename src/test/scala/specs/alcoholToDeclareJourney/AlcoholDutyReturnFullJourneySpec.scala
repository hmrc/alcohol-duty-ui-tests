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

import specpage.alcoholDuty.adjustments._
import specpage.alcoholDuty.alcoholToDeclare.Beer._
import specpage.alcoholDuty.alcoholToDeclare.Cider._
import specpage.alcoholDuty.alcoholToDeclare.OtherFermentedProducts._
import specpage.alcoholDuty.alcoholToDeclare.Spirits._
import specpage.alcoholDuty.alcoholToDeclare.Wine._
import specpage.alcoholDuty.alcoholToDeclare._
import specpage.alcoholDuty.dutySuspendedDeliveries._
import specpage.alcoholDuty.quarterlySpiritsQuestion._
import specpage.common._
import specs.BaseSpec
import specs.tags.{AlcoholToDeclare, AllTests}
import specsteps.BaseStepDefSteps._

class AlcoholDutyReturnFullJourneySpec extends BaseSpec {

  Feature("Alcohol Duty Returns Journey") {

    Scenario("1. Alcohol Duty Returns Journey - Happy Path - Positive Value Submission", AllTests, AlcoholToDeclare) {
      Given("I start a return and select all alcohol regimes")
      loginAndStartReturn("AABCP0000100208")
      selectAllRegimes()

      When("I declare beer with single SPR")
      TaskListPage.clickHyperlink("Declare beer")
      WhatDoYouNeedToDeclareBeerPage.selectRateBands(
        "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR)"
      )
      HowMuchYouNeedToDeclareBeerPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.selectMultipleSpr(false)
      SingleSmallProducerReliefRateBeerPage.enterDetailsForAllSprRateBands()
      CheckYourAnswersReturnsBeerPage.continue()
      DutyDueBeerPage.continue()
      TaskListPage.checkURL

      And("I declare cider with single SPR")
      TaskListPage.clickHyperlink("Declare cider")
      WhatDoYouNeedToDeclareCiderPage.selectRateBands(
        "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR),Cider between 1.3% and 3.4% ABV (tax type code 372 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)"
      )
      HowMuchYouNeedToDeclareCiderPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateCiderPage.selectMultipleSpr(false)
      SingleSmallProducerReliefRateCiderPage.enterDetailsForAllSprRateBands()
      CheckYourAnswersReturnsCiderPage.continue()
      DutyDueCiderPage.continue()
      TaskListPage.checkURL

      And("I declare wine with single SPR")
      TaskListPage.clickHyperlink("Declare wine")
      DeclaringYourWineForDutyPage.continue()
      WhatDoYouNeedToDeclareWinePage.selectRateBands(
        "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363 SPR),Wine between 3.5% and 8.4% ABV (tax type code 368 SPR),Wine between 1.3% and 3.4% ABV (tax type code 373 SPR),Wine between 3.5% and 8.4% ABV (tax type code 378 SPR)"
      )
      HowMuchYouNeedToDeclareWinePage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateWinePage.selectMultipleSpr(false)
      SingleSmallProducerReliefRateWinePage.enterDetailsForAllSprRateBands()
      CheckYourAnswersReturnsWinePage.continue()
      DutyDueWinePage.continue()
      TaskListPage.checkURL

      And("I declare spirits with single SPR")
      TaskListPage.clickHyperlink("Declare spirits")
      WhatDoYouNeedToDeclareSpiritsPage.selectRateBands(
        "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365 SPR),Spirits between 3.5% and 8.4% ABV (tax type code 370 SPR),Spirits between 1.3% and 3.4% ABV (tax type code 375 SPR),Spirits between 3.5% and 8.4% ABV (tax type code 380 SPR)"
      )
      HowMuchYouNeedToDeclareSpiritsPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateSpiritsPage.selectMultipleSpr(false)
      SingleSmallProducerReliefRateSpiritsPage.enterDetailsForAllSprRateBands()
      CheckYourAnswersReturnsSpiritsPage.continue()
      DutyDueSpiritsPage.continue()
      TaskListPage.checkURL

      And("I declare other fermented products with single SPR")
      TaskListPage.clickHyperlink("Declare other fermented products")
      WhatDoYouNeedToDeclareOtherFermentedProductPage.selectRateBands(
        "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364 SPR),Other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR),Other fermented products between 1.3% and 3.4% ABV (tax type code 374 SPR),Other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR)"
      )
      HowMuchYouNeedToDeclareOtherFermentedProductPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateOtherFermentedProductPage.selectMultipleSpr(false)
      SingleSmallProducerReliefRateOtherFermentedProductPage.enterDetailsForAllSprRateBands()
      CheckYourAnswersReturnsOtherFermentedProductPage.continue()
      DutyDueOtherFermentedProductPage.continue()
      TaskListPage.checkURL

      And("I select to declare adjustments")
      TaskListPage.clickHyperlink("Tell us if you have adjustments to declare")
      DeclareAdjustmentQuestionPage.declareAdjustments(true)

      And("I add an under-declaration adjustment")
      AdjustmentTypePage.selectAdjustmentType("Under-declaration")
      AdjustmentReturnDatePage.enterDate("09", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("311")
      AdjustmentVolumePage.enterVolumes()
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()

      And("I add an over-declaration adjustment")
      AdjustmentListPage.addAnother(true)
      AdjustmentTypePage.selectAdjustmentType("Over-declaration")
      AdjustmentReturnDatePage.enterDate("10", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("312")
      AdjustmentVolumePage.enterVolumes()
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()

      And("I add a repackaged (SPR) adjustment")
      AdjustmentListPage.addAnother(true)
      AdjustmentTypePage.selectAdjustmentType("Repackaged draught products")
      AdjustmentReturnDatePage.enterDate("11", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("373")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75", "250.5500", "9.8")
      NewTaxTypeCodePage.enterDetails("363")
      NewSprDutyRatePage.enterDetails("11.5")
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()

      And("I add a spoilt adjustment")
      AdjustmentListPage.addAnother(true)
      AdjustmentTypePage.selectAdjustmentType("Spoilt")
      SpoiltAlcoholTypePage.selectAlcoholType("Spirits")
      SpoiltAlcoholVolumePage.enterVolumes()
      AdjustmentCheckYourAnswersPage.continue()

      And("I add a drawback adjustment")
      AdjustmentListPage.addAnother(true)
      AdjustmentTypePage.selectAdjustmentType("Drawback")
      AdjustmentReturnDatePage.enterDate("10", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("314")
      AdjustmentVolumePage.enterVolumes()
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()

      And("I complete the adjustments journey")
      AdjustmentListPage.addAnother(false)
      TaskListPage.checkURL

      And("I add an under-declaration reason")
      TaskListPage.clickHyperlink("Tell us why products were under-declared")
      UnderDeclarationReasonPage.enterDetails("Test Under Declaration Reason")
      TaskListPage.checkURL

      And("I add an over-declaration reason")
      TaskListPage.clickHyperlink("Tell us why products were over-declared")
      OverDeclarationReasonPage.enterDetails("Test Over Declaration Reason")
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

      And("I submit the return")
      TaskListPage.clickHyperlink("Check duty payable and send your return")
      ReturnSummaryPage.continue()

      Then("I am presented with the Return Submitted Page")
      ReturnSubmittedPage.checkURL

    }

    Scenario("2. Alcohol Duty Returns Journey - Happy Path - Negative Value Submission", AllTests, AlcoholToDeclare) {
      Given("I start a return and select all alcohol regimes")
      loginAndStartReturn("AABCP0000100208")
      selectAllRegimes()

      When("I declare beer with multiple SPR")
      TaskListPage.clickHyperlink("Declare beer")
      WhatDoYouNeedToDeclareBeerPage.selectRateBands(
        "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR)"
      )
      HowMuchYouNeedToDeclareBeerPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.selectMultipleSpr(true)
      MultipleSmallProducerReliefRateBeerPage.enterDetailsFor361(mustSelectRateBand = false)
      CheckYourAnswersSPRBeerPage.continue()
      MultipleSPRListQuestionBeerPage.addAnother(false)
      CheckYourAnswersReturnsBeerPage.continue()
      DutyDueBeerPage.continue()
      TaskListPage.checkURL

      And("I declare cider with multiple SPR")
      TaskListPage.clickHyperlink("Declare cider")
      WhatDoYouNeedToDeclareCiderPage.selectRateBands(
        "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR)"
      )
      HowMuchYouNeedToDeclareCiderPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateCiderPage.selectMultipleSpr(true)
      MultipleSmallProducerReliefRateCiderPage.enterDetailsFor367()
      CheckYourAnswersSPRCiderPage.continue()
      MultipleSPRListQuestionCiderPage.addAnother(false)
      CheckYourAnswersReturnsCiderPage.continue()
      DutyDueCiderPage.continue()
      TaskListPage.checkURL

      And("I declare wine with multiple SPR")
      TaskListPage.clickHyperlink("Declare wine")
      DeclaringYourWineForDutyPage.continue()
      WhatDoYouNeedToDeclareWinePage.selectRateBands(
        "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 3.5% and 8.4% ABV (tax type code 368 SPR)"
      )
      HowMuchYouNeedToDeclareWinePage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateWinePage.selectMultipleSpr(true)
      MultipleSmallProducerReliefRateWinePage.enterDetailsFor368()
      CheckYourAnswersSPRWinePage.continue()
      MultipleSPRListQuestionWinePage.addAnother(false)
      CheckYourAnswersReturnsWinePage.continue()
      DutyDueWinePage.continue()
      TaskListPage.checkURL

      And("I declare spirits with multiple SPR")
      TaskListPage.clickHyperlink("Declare spirits")
      WhatDoYouNeedToDeclareSpiritsPage.selectRateBands(
        "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 3.5% and 8.4% ABV (tax type code 380 SPR)"
      )
      HowMuchYouNeedToDeclareSpiritsPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateSpiritsPage.selectMultipleSpr(true)
      MultipleSmallProducerReliefRateSpiritsPage.enterDetailsFor380()
      CheckYourAnswersSPRSpiritsPage.continue()
      MultipleSPRListQuestionSpiritsPage.addAnother(false)
      CheckYourAnswersReturnsSpiritsPage.continue()
      DutyDueSpiritsPage.continue()
      TaskListPage.checkURL

      And("I declare other fermented products with multiple SPR")
      TaskListPage.clickHyperlink("Declare other fermented products")
      WhatDoYouNeedToDeclareOtherFermentedProductPage.selectRateBands(
        "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR)"
      )
      HowMuchYouNeedToDeclareOtherFermentedProductPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateOtherFermentedProductPage.selectMultipleSpr(true)
      MultipleSmallProducerReliefRateOtherFermentedProductPage.enterDetailsFor369()
      CheckYourAnswersSPROtherFermentedProductPage.continue()
      MultipleSPRListQuestionOtherFermentedProductPage.addAnother(false)
      CheckYourAnswersReturnsOtherFermentedProductPage.continue()
      DutyDueOtherFermentedProductPage.continue()
      TaskListPage.checkURL

      And("I select to declare adjustments")
      TaskListPage.clickHyperlink("Tell us if you have adjustments to declare")
      DeclareAdjustmentQuestionPage.declareAdjustments(true)

      And("I add an under-declaration adjustment")
      AdjustmentTypePage.selectAdjustmentType("Under-declaration")
      AdjustmentReturnDatePage.enterDate("09", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("371")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75", "250.5500", "9.8")
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()

      And("I add an over-declaration adjustment")
      AdjustmentListPage.addAnother(true)
      AdjustmentTypePage.selectAdjustmentType("Over-declaration")
      AdjustmentReturnDatePage.enterDate("10", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("372")
      AdjustmentVolumeWithSprPage.enterVolumes("9999.99", "7777.7700", "898.89")
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()

      And("I add a spoilt adjustment")
      AdjustmentListPage.addAnother(true)
      AdjustmentTypePage.selectAdjustmentType("Spoilt")
      SpoiltAlcoholTypePage.selectAlcoholType("Spirits")
      SpoiltAlcoholVolumePage.enterVolumes()
      AdjustmentCheckYourAnswersPage.continue()

      And("I add a drawback adjustment")
      AdjustmentListPage.addAnother(true)
      AdjustmentTypePage.selectAdjustmentType("Drawback")
      AdjustmentReturnDatePage.enterDate("10", "2023")
      AdjustmentTaxTypeCodePage.enterDetails("374")
      AdjustmentVolumeWithSprPage.enterVolumes("3000.75", "250.5599", "9.8")
      AdjustmentDutyValuePage.continue()
      AdjustmentCheckYourAnswersPage.continue()

      And("I complete the adjustments journey")
      AdjustmentListPage.addAnother(false)
      TaskListPage.checkURL

      And("I add an under-declaration reason")
      TaskListPage.clickHyperlink("Tell us why products were under-declared")
      UnderDeclarationReasonPage.enterDetails("Test Under Declaration Reason")
      TaskListPage.checkURL

      And("I add an over-declaration reason")
      TaskListPage.clickHyperlink("Tell us why products were over-declared")
      OverDeclarationReasonPage.enterDetails("Test Over Declaration Reason")
      TaskListPage.checkURL

      And("I declare no duty suspended deliveries")
      TaskListPage.clickHyperlink("Tell us if you have delivered or received finished products in duty suspense")
      DeclareDutySuspendedDeliveriesPage.declareDSD(false)
      TaskListPage.checkURL

      And("I declare no quarterly spirits")
      TaskListPage.clickHyperlink("Tell us about spirits produced in the past three months")
      QuarterlySpiritsReturnsGuidancePage.declareSpirits(false)
      TaskListPage.checkURL

      And("I submit the return")
      TaskListPage.clickHyperlink("Check duty payable and send your return")
      ReturnSummaryPage.continue()

      Then("I am presented with the Return Submitted Page")
      ReturnSubmittedPage.checkURL

    }

    Scenario("3. Alcohol Duty Returns Journey - Happy Path - Nil Return", AllTests, AlcoholToDeclare) {
      Given("I start a return")
      loginAndStartReturn("AABCP0000100208")

      When("I declare no alcohol")
      TaskListPage.clickHyperlink("Tell us if you have alcoholic products to declare")
      DeclareAlcoholDutyQuestionPage.declareAlcohol(false)
      TaskListPage.checkURL

      And("I declare no adjustments")
      TaskListPage.clickHyperlink("Tell us if you have adjustments to declare")
      DeclareAdjustmentQuestionPage.declareAdjustments(false)
      TaskListPage.checkURL

      And("I declare no duty suspended deliveries")
      TaskListPage.clickHyperlink("Tell us if you have delivered or received finished products in duty suspense")
      DeclareDutySuspendedDeliveriesPage.declareDSD(false)
      TaskListPage.checkURL

      And("I declare no quarterly spirits")
      TaskListPage.clickHyperlink("Tell us about spirits produced in the past three months")
      QuarterlySpiritsReturnsGuidancePage.declareSpirits(false)
      TaskListPage.checkURL

      And("I submit the return")
      TaskListPage.clickHyperlink("Check duty payable and send your return")
      ReturnSummaryPage.continue()

      Then("I am presented with the Return Submitted Page")
      ReturnSubmittedPage.checkURL

    }

    Scenario("4. Alcohol Duty Returns Journey - Verifying 'Remove' link functionality", AllTests, AlcoholToDeclare) {
      Given("I start a return")
      loginAndStartReturn("AABCP0000100208")

      When("I select beer only and declare multiple SPR")
      TaskListPage.clickHyperlink("Tell us if you have alcoholic products to declare")
      DeclareAlcoholDutyQuestionPage.declareAlcohol(true)
      WhatAlcoholDoYouNeedToDeclarePage.selectSingleRegime("Beer")
      WhatDoYouNeedToDeclareBeerPage.selectRateBands(
        "Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR)"
      )
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.selectMultipleSpr(true)

      And("I add multiple SPR declarations for 2 rate bands")
      MultipleSmallProducerReliefRateBeerPage.enterDetailsFor361()
      CheckYourAnswersSPRBeerPage.continue()
      MultipleSPRListQuestionBeerPage.addAnother(true)
      MultipleSmallProducerReliefRateBeerPage.enterDetailsFor371InCheckMode()
      CheckYourAnswersSPRBeerPage.continue()

      And("I remove both multiple SPR declarations from the Multiple SPR List")
      MultipleSPRListQuestionBeerPage.clickRemoveHyperlink()
      DeleteMultipleSPRProductQuestionPage.deleteEntry(false)
      MultipleSPRListQuestionBeerPage.clickRemoveHyperlink()
      DeleteMultipleSPRProductQuestionPage.deleteEntry(true)
      MultipleSPRListQuestionBeerPage.clickRemoveHyperlink()
      DeleteMultipleSPRProductQuestionPage.deleteEntry(true)

      Then("I am presented with the Do You Have Multiple Small Producer Relief Duty Rate Beer Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.checkURL

    }

    Scenario("5. Alcohol Duty Returns Journey - Happy Path - Delete Missing Details", AllTests, AlcoholToDeclare) {
      Given("I start a return and select all alcohol regimes")
      loginAndStartReturn("AABCP0000100208")
      selectAllRegimes()

      When("I declare beer with one multiple SPR declaration")
      TaskListPage.clickHyperlink("Declare beer")
      WhatDoYouNeedToDeclareBeerPage.selectRateBands(
        "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR)"
      )
      HowMuchYouNeedToDeclareBeerPage.enterDetailsForAllRateBands()
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.selectMultipleSpr(true)
      MultipleSmallProducerReliefRateBeerPage.enterDetailsFor361()
      CheckYourAnswersSPRBeerPage.continue()

      And("I delete the rate bands with missing multiple SPR declarations")
      MultipleSPRListQuestionBeerPage.addAnother(false)
      YouHaveSomeMissingDetailsPage.addMissingRateBands(false)
      DeleteAlcoholPage.deleteRateBands(true)

      And("I confirm the declarations and complete the journey")
      CheckYourAnswersReturnsBeerPage.continue()
      DutyDueBeerPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }
  }
}
