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
import specpage.alcoholDuty.dutySuspendedDeliveries._
import specpage.alcoholDuty.quarterlySpiritsQuestion._
import specpage.common.{ReturnSummaryPage, TaskListPage}
import specs.BaseSpec
import specs.tags.{AlcoholToDeclare, AllTests}
import specsteps.BaseStepDefSteps._

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

      When("I click on Declare beer hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare beer")

      And(
        "I select checkbox Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR) on What Do You Need To Declare Beer Page"
      )
      WhatDoYouNeedToDeclareBeerPage.selectRateBands(
        "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR)"
      )

      And("I enter volumes on the How Much You Need To Declare Beer Page")
      HowMuchYouNeedToDeclareBeerPage.enterDetailsForAllRateBands()

      And("I select radio button Yes on Do You Have Multiple Small Producer Relief Duty Rate Beer Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.selectMultipleSpr(true)

      And("I enter details for tax type 361 on Multiple Small Producer Relief Rate Beer Page")
      MultipleSmallProducerReliefRateBeerPage.enterDetailsFor361()

      And("I click Change Description on Check Your Answers SPR Beer Page")
      CheckYourAnswersSPRBeerPage.clickChangeLink("Change Description")

      And(
        "I select radio button Non-draught beer between 3.5% and 8.4% ABV (366 SPR) on Multiple Small Producer Relief Rate Beer Page"
      )
      MultipleSmallProducerReliefRateBeerPage.changeTaxTypeFromCheckYourAnswers()

      And("I click continue button on Check Your Answers SPR Beer Page")
      CheckYourAnswersSPRBeerPage.continue()

      And("I click Change hyperlink on Multiple SPR List Question Beer Page")
      MultipleSPRListQuestionBeerPage.clickChangeHyperlink()

      And("I enter new details for tax type 371 on Multiple Small Producer Relief Rate Beer Page")
      MultipleSmallProducerReliefRateBeerPage.changeDetailsFromMultipleSprList()

      And("I click continue button on Check Your Answers SPR Beer Page")
      CheckYourAnswersSPRBeerPage.continueAfterChange()

      And("I select radio button No on Multiple SPR List Question Beer Page")
      MultipleSPRListQuestionBeerPage.addAnother(false)

      And("I select radio button Delete these declarations from this return on You Have Some Missing Details Page")
      YouHaveSomeMissingDetailsPage.addMissingRateBands(false)

      And("I select radio button Yes on Delete Alcohol Page")
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

      When("I click on Declare cider hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare cider")

      And(
        "I select checkbox Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR),Cider between 1.3% and 3.4% ABV (tax type code 372 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR) on What Do You Need To Declare Cider Page"
      )
      WhatDoYouNeedToDeclareCiderPage.selectRateBands(
        "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR),Cider between 1.3% and 3.4% ABV (tax type code 372 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR)"
      )

      And("I enter volumes on the How Much You Need To Declare Cider Page")
      HowMuchYouNeedToDeclareCiderPage.enterDetailsForAllRateBands()

      And("I select radio button No on Do You Have Multiple Small Producer Relief Duty Rate Cider Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateCiderPage.selectMultipleSpr(false)

      And("I enter volumes on the Single Small Producer Relief Rate Cider Page")
      SingleSmallProducerReliefRateCiderPage.enterDetailsForAllSprRateBands()

      And("I click Change Cider to declare on Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider to declare")

      And("I click save and continue button on What Do You Need To Declare Cider Page")
      WhatDoYouNeedToDeclareCiderPage.continueInCheckMode()

      And("I click Change Cider to declare on Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider to declare")

      And(
        "I unselect checkbox Sparkling cider between 5.6% and 8.4% ABV (tax type code 359) on What Do You Need To Declare Cider Page"
      )
      WhatDoYouNeedToDeclareCiderPage.unselectRateBandsInCheckMode(
        "Sparkling cider between 5.6% and 8.4% ABV (tax type code 359)"
      )

      And("I enter volumes on the How Much You Need To Declare Cider Page")
      HowMuchYouNeedToDeclareCiderPage.enterDetailsForAllRateBands(exclude359 = true)

      And("I select radio button No on Do You Have Multiple Small Producer Relief Duty Rate Cider Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateCiderPage.selectMultipleSpr(false)

      And("I enter volumes on the Single Small Producer Relief Rate Cider Page")
      SingleSmallProducerReliefRateCiderPage.enterDetailsForAllSprRateBands()

      And("I click Change Cider duty on Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider duty")

      And("I click save and continue button on How Much You Need To Declare Cider Page")
      HowMuchYouNeedToDeclareCiderPage.continueInCheckMode()

      And("I click Change Cider duty on Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider duty")

      And("I enter new volumes on How Much You Need To Declare Cider Page with new url")
      HowMuchYouNeedToDeclareCiderPage.updateDetailsInCheckMode()

      And("I click Change Cider eligible for Small Producer Relief on Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider eligible for Small Producer Relief")

      And("I click save and continue button on Single Small Producer Relief Rate Cider Page")
      SingleSmallProducerReliefRateCiderPage.continueInCheckMode()

      And("I click Change Cider eligible for Small Producer Relief on Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.clickChangeLink("Change Cider eligible for Small Producer Relief")

      And("I enter new volumes on Single Small Producer Relief Rate Cider Page with new url")
      SingleSmallProducerReliefRateCiderPage.updateDetailsInCheckMode()

      And("I click save and continue button on Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.continue()

      And("I click on change link 3 on Duty Due Cider Page for alcohol type Cider")
      DutyDueCiderPage.clickChangeLink(3)

      And("I click save and continue button on Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.continue()

      And("I click on change link 4 on Duty Due Cider Page for alcohol type Cider")
      DutyDueCiderPage.clickChangeLink(4)

      And("I click save and continue button on Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.continue()

      Then("I am presented with the Duty Due Cider Page")
      DutyDueCiderPage.checkURL

    }

    Scenario("To verify the change link functionalities from the Return Summary Page", AllTests, AlcoholToDeclare) {
      Given("I start a return and select all alcohol regimes")
      loginAndStartReturn("AABCP0000100208")
      selectAllRegimes()

      When("I click on Declare beer hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare beer")

      And("I select checkbox Beer at or above 22.1% ABV (tax type code 341) on What Do You Need To Declare Beer Page")
      WhatDoYouNeedToDeclareBeerPage.selectRateBands("Beer at or above 22.1% ABV (tax type code 341)")

      And("I enter volumes on the How Much You Need To Declare Beer Page")
      HowMuchYouNeedToDeclareBeerPage.enterDetailsFor341()

      And("I click save and continue button on Check Your Answers Returns Beer Page")
      CheckYourAnswersReturnsBeerPage.continue()

      And("I click save and continue button on Duty Due Beer Page")
      DutyDueBeerPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare cider hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare cider")

      And(
        "I select checkbox Cider between 1.3% and 3.4% ABV (tax type code 312) on What Do You Need To Declare Cider Page"
      )
      WhatDoYouNeedToDeclareCiderPage.selectRateBands("Cider between 1.3% and 3.4% ABV (tax type code 312)")

      And("I enter volumes on the How Much You Need To Declare Cider Page")
      HowMuchYouNeedToDeclareCiderPage.enterDetailsFor312()

      And("I click save and continue button on Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.continue()

      And("I click save and continue button on Duty Due Cider Page")
      DutyDueCiderPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare wine hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare wine")

      And("I click continue button on Declaring Your Wine For Duty Page")
      DeclaringYourWineForDutyPage.continue()

      And(
        "I select checkbox Wine between 1.3% and 3.4% ABV (tax type code 313) on What Do You Need To Declare Wine Page"
      )
      WhatDoYouNeedToDeclareWinePage.selectRateBands("Wine between 1.3% and 3.4% ABV (tax type code 313)")

      And("I enter volumes on the How Much You Need To Declare Wine Page")
      HowMuchYouNeedToDeclareWinePage.enterDetailsFor313()

      And("I click save and continue button on Check Your Answers Returns Wine Page")
      CheckYourAnswersReturnsWinePage.continue()

      And("I click save and continue button on Duty Due Wine Page")
      DutyDueWinePage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare spirits hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare spirits")

      And(
        "I select checkbox Spirits between 1.3% and 3.4% ABV (tax type code 315) on What Do You Need To Declare Spirits Page"
      )
      WhatDoYouNeedToDeclareSpiritsPage.selectRateBands("Spirits between 1.3% and 3.4% ABV (tax type code 315)")

      And("I enter volumes on the How Much You Need To Declare Spirits Page")
      HowMuchYouNeedToDeclareSpiritsPage.enterDetailsFor315()

      And("I click save and continue button on Check Your Answers Returns Spirits Page")
      CheckYourAnswersReturnsSpiritsPage.continue()

      And("I click save and continue button on Duty Due Spirits Page")
      DutyDueSpiritsPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare other fermented products hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare other fermented products")

      And(
        "I select checkbox Other fermented products between 1.3% and 3.4% ABV (tax type code 314) on What Do You Need To Declare Other Fermented Product Page"
      )
      WhatDoYouNeedToDeclareOtherFermentedProductPage.selectRateBands(
        "Other fermented products between 1.3% and 3.4% ABV (tax type code 314)"
      )

      And("I enter volumes on the How Much You Need To Declare Other Fermented Product Page")
      HowMuchYouNeedToDeclareOtherFermentedProductPage.enterDetailsFor314()

      And("I click save and continue button on Check Your Answers Returns Other Fermented Product Page")
      CheckYourAnswersReturnsOtherFermentedProductPage.continue()

      And("I click save and continue button on Duty Due Other Fermented Product Page")
      DutyDueOtherFermentedProductPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us if you have adjustments to declare hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us if you have adjustments to declare")

      And("I select Yes on Declare Adjustment Question Page")
      DeclareAdjustmentQuestionPage.declareAdjustments(true)

      And("I select radio button Repackaged draught products on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Repackaged draught products")

      And("I enter month 11 and year 2023 on Adjustment Return Date Page")
      AdjustmentReturnDatePage.enterDate("11", "2023")

      And("I enter 353 on Adjustment Tax Type Code For Repackaged Page")
      AdjustmentTaxTypeCodePage.enterDetails("353")

      And("I enter volumes on the Adjustment Volume Page")
      AdjustmentVolumePage.enterVolumes()

      And("I enter 313 on New Tax Type Code Page")
      NewTaxTypeCodePage.enterDetails("313")

      And("I click continue button on Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      And("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      And("I select radio button No on Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When(
        "I click on Tell us if you have delivered or received finished products in duty suspense hyperlink on Task List Page"
      )
      TaskListPage.clickHyperlink("Tell us if you have delivered or received finished products in duty suspense")

      And("I select Yes on Declare Duty Suspended Deliveries Page")
      DeclareDutySuspendedDeliveriesPage.declareDSD(true)

      And("I click continue button on Duty Suspended Deliveries Guidance Page")
      DutySuspendedDeliveriesGuidancePage.continue()

      And("I enter volumes on Duty Suspended Beer Page")
      DutySuspendedBeerPage.enterVolumes()

      And("I enter volumes on Duty Suspended Cider Page")
      DutySuspendedCiderPage.enterVolumes()

      And("I enter volumes on Duty Suspended Wine Page")
      DutySuspendedWinePage.enterVolumes()

      And("I enter volumes on Duty Suspended Spirits Page")
      DutySuspendedSpiritsPage.enterVolumes()

      And("I enter volumes on Duty Suspended Other Fermented Products Page")
      DutySuspendedOtherFermentedProductsPage.enterVolumes()

      And("I click continue button on Duty Suspended Deliveries Check Your Answers Page")
      DutySuspendedDeliveriesCheckYourAnswersPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us about spirits produced in the past three months hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us about spirits produced in the past three months")

      And("I select Yes on Quarterly Spirits Returns Guidance Page")
      QuarterlySpiritsReturnsGuidancePage.declareSpirits(true)

      And("I enter 99 on Total Of All Spirits Page")
      TotalOfAllSpiritsPage.enterVolume("99")

      And("I enter volumes on the Declare Whiskey Page")
      DeclareWhiskeyPage.enterVolumes()

      And(
        "I select checkbox Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits on Which Of These Spirits Have You Produced Page"
      )
      WhichOfTheseSpiritsHaveYouProducedPage.selectSpiritTypes(
        "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits"
      )

      And("I enter Test Spirits on Declare Other Spirits Produced Page")
      DeclareOtherSpiritsProducedPage.enterDetails("Test Spirits")

      And("I click save and continue button on Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Check duty payable and send your return hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Check duty payable and send your return")

      And("I click Change Declared spirits duty on Return Summary Page")
      ReturnSummaryPage.clickChangeLink("Change Declared spirits duty")

      Then("I am presented with the Check Your Answers Returns Spirits Page")
      CheckYourAnswersReturnsSpiritsPage.checkURL

      When("I enter redirect url for Return Summary Page")
      navigateToPage(ReturnSummaryPage)

      And("I click Change Declared wine duty on Return Summary Page")
      ReturnSummaryPage.clickChangeLink("Change Declared wine duty")

      Then("I am presented with the Check Your Answers Returns Wine Page")
      CheckYourAnswersReturnsWinePage.checkURL

      When("I enter redirect url for Return Summary Page")
      navigateToPage(ReturnSummaryPage)

      And("I click Change Declared cider duty on Return Summary Page")
      ReturnSummaryPage.clickChangeLink("Change Declared cider duty")

      Then("I am presented with the Check Your Answers Returns Cider Page")
      CheckYourAnswersReturnsCiderPage.checkURL

      When("I enter redirect url for Return Summary Page")
      navigateToPage(ReturnSummaryPage)

      And("I click Change Declared other fermented products duty on Return Summary Page")
      ReturnSummaryPage.clickChangeLink("Change Declared other fermented products duty")

      Then("I am presented with the Check Your Answers Returns Other Fermented Product Page")
      CheckYourAnswersReturnsOtherFermentedProductPage.checkURL

      When("I enter redirect url for Return Summary Page")
      navigateToPage(ReturnSummaryPage)

      And("I click Change Declared beer duty on Return Summary Page")
      ReturnSummaryPage.clickChangeLink("Change Declared beer duty")

      Then("I am presented with the Check Your Answers Returns Beer Page")
      CheckYourAnswersReturnsBeerPage.checkURL

      When("I enter redirect url for Return Summary Page")
      navigateToPage(ReturnSummaryPage)

      And("I click Change Adjustment duty value on Return Summary Page")
      ReturnSummaryPage.clickChangeLink("Change Adjustment duty value")

      Then("I am presented with the Adjustment List Page")
      AdjustmentListPage.checkURL

      When("I enter redirect url for Return Summary Page")
      navigateToPage(ReturnSummaryPage)

      And("I click Change Duty suspended alcohol on Return Summary Page")
      ReturnSummaryPage.clickChangeLink("Change Duty suspended alcohol")

      Then("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
      DutySuspendedDeliveriesCheckYourAnswersPage.checkURL

      When("I enter redirect url for Return Summary Page")
      navigateToPage(ReturnSummaryPage)

      And("I click Change Spirits production on Return Summary Page")
      ReturnSummaryPage.clickChangeLink("Change Spirits production")

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.checkURL

      When("I enter redirect url for Return Summary Page")
      navigateToPage(ReturnSummaryPage)

      Then("I am presented with the Return Summary Page")
      ReturnSummaryPage.checkURL

    }
  }
}
