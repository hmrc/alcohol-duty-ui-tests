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

      And("I select radio button No on Do You Have Multiple Small Producer Relief Duty Rate Beer Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.selectMultipleSpr(false)

      And("I enter volumes on the Single Small Producer Relief Rate Beer Page")
      SingleSmallProducerReliefRateBeerPage.enterDetailsForAllSprRateBands()

      And("I click save and continue button on Check Your Answers Returns Beer Page")
      CheckYourAnswersReturnsBeerPage.continue()

      And("I click save and continue button on Duty Due Beer Page")
      DutyDueBeerPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

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
        "I select checkbox Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363 SPR),Wine between 3.5% and 8.4% ABV (tax type code 368 SPR),Wine between 1.3% and 3.4% ABV (tax type code 373 SPR),Wine between 3.5% and 8.4% ABV (tax type code 378 SPR) on What Do You Need To Declare Wine Page"
      )
      WhatDoYouNeedToDeclareWinePage.selectRateBands(
        "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 1.3% and 3.4% ABV (tax type code 363 SPR),Wine between 3.5% and 8.4% ABV (tax type code 368 SPR),Wine between 1.3% and 3.4% ABV (tax type code 373 SPR),Wine between 3.5% and 8.4% ABV (tax type code 378 SPR)"
      )

      And("I enter volumes on the How Much You Need To Declare Wine Page")
      HowMuchYouNeedToDeclareWinePage.enterDetailsForAllRateBands()

      And("I select radio button No on Do You Have Multiple Small Producer Relief Duty Rate Wine Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateWinePage.selectMultipleSpr(false)

      And("I enter volumes on the Single Small Producer Relief Rate Wine Page")
      SingleSmallProducerReliefRateWinePage.enterDetailsForAllSprRateBands()

      And("I click save and continue button on Check Your Answers Returns Wine Page")
      CheckYourAnswersReturnsWinePage.continue()

      And("I click save and continue button on Duty Due Wine Page")
      DutyDueWinePage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare spirits hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare spirits")

      And(
        "I select checkbox Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365 SPR),Spirits between 3.5% and 8.4% ABV (tax type code 370 SPR),Spirits between 1.3% and 3.4% ABV (tax type code 375 SPR),Spirits between 3.5% and 8.4% ABV (tax type code 380 SPR) on What Do You Need To Declare Spirits Page"
      )
      WhatDoYouNeedToDeclareSpiritsPage.selectRateBands(
        "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 1.3% and 3.4% ABV (tax type code 365 SPR),Spirits between 3.5% and 8.4% ABV (tax type code 370 SPR),Spirits between 1.3% and 3.4% ABV (tax type code 375 SPR),Spirits between 3.5% and 8.4% ABV (tax type code 380 SPR)"
      )

      And("I enter volumes on the How Much You Need To Declare Spirits Page")
      HowMuchYouNeedToDeclareSpiritsPage.enterDetailsForAllRateBands()

      And("I select radio button No on Do You Have Multiple Small Producer Relief Duty Rate Spirits Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateSpiritsPage.selectMultipleSpr(false)

      And("I enter volumes on the Single Small Producer Relief Rate Spirits Page")
      SingleSmallProducerReliefRateSpiritsPage.enterDetailsForAllSprRateBands()

      And("I click save and continue button on Check Your Answers Returns Spirits Page")
      CheckYourAnswersReturnsSpiritsPage.continue()

      And("I click save and continue button on Duty Due Spirits Page")
      DutyDueSpiritsPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare other fermented products hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare other fermented products")

      And(
        "I select checkbox Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364 SPR),Other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR),Other fermented products between 1.3% and 3.4% ABV (tax type code 374 SPR),Other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR) on What Do You Need To Declare Wine Page"
      )
      WhatDoYouNeedToDeclareOtherFermentedProductPage.selectRateBands(
        "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 1.3% and 3.4% ABV (tax type code 364 SPR),Other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR),Other fermented products between 1.3% and 3.4% ABV (tax type code 374 SPR),Other fermented products between 3.5% and 8.4% ABV (tax type code 379 SPR)"
      )

      And("I enter volumes on the How Much You Need To Declare Other Fermented Product Page")
      HowMuchYouNeedToDeclareOtherFermentedProductPage.enterDetailsForAllRateBands()

      And(
        "I select radio button No on Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
      )
      DoYouHaveMultipleSmallProducerReliefDutyRateOtherFermentedProductPage.selectMultipleSpr(false)

      And("I enter volumes on the Single Small Producer Relief Rate Other Fermented Product Page")
      SingleSmallProducerReliefRateOtherFermentedProductPage.enterDetailsForAllSprRateBands()

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

      And("I select radio button Under-declaration on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Under-declaration")

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

      And("I click continue button on Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      And("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      And("I select radio button Yes on Adjustment List Page")
      AdjustmentListPage.addAnother(true)

      And("I select radio button Over-declaration on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Over-declaration")

      Then("I am presented with the Adjustment Return Date Page")
      thenIAmPresentedWithThe("Adjustment Return Date Page")

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
      whenIEnterMonthAndYearOn("10", "2023", "Adjustment Return Date Page")

      And("I click save and continue button on Adjustment Return Date Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Return Date Page")

      Then("I am presented with the Adjustment Tax Type Code Page")
      thenIAmPresentedWithThe("Adjustment Tax Type Code Page")

      When("I enter 312 on Adjustment Tax Type Code Page")
      whenIEnterOn("312", "Adjustment Tax Type Code Page")

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

      And("I click continue button on Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      And("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      And("I select radio button Yes on Adjustment List Page")
      AdjustmentListPage.addAnother(true)

      And("I select radio button Repackaged draught products on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Repackaged draught products")

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

      And("I click continue button on Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      And("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      And("I select radio button Yes on Adjustment List Page")
      AdjustmentListPage.addAnother(true)

      And("I select radio button Spoilt on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Spoilt")

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

      And("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      And("I select radio button Yes on Adjustment List Page")
      AdjustmentListPage.addAnother(true)

      And("I select radio button Drawback on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Drawback")

      Then("I am presented with the Adjustment Return Date Page")
      thenIAmPresentedWithThe("Adjustment Return Date Page")

      And("I enter month 10 and year 2023 on Adjustment Return Date Page")
      whenIEnterMonthAndYearOn("10", "2023", "Adjustment Return Date Page")

      And("I click save and continue button on Adjustment Return Date Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Return Date Page")

      Then("I am presented with the Adjustment Tax Type Code Page")
      thenIAmPresentedWithThe("Adjustment Tax Type Code Page")

      When("I enter 314 on Adjustment Tax Type Code Page")
      whenIEnterOn("314", "Adjustment Tax Type Code Page")

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

      And("I click continue button on Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      And("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      And("I select radio button No on Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us why products were under-declared hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us why products were under-declared")

      And("I enter Test Under Declaration Reason on Under Declaration Reason Page")
      UnderDeclarationReasonPage.enterDetails("Test Under Declaration Reason")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us why products were over-declared hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us why products were over-declared")

      And("I enter Test Over Declaration Reason on Over Declaration Reason Page")
      OverDeclarationReasonPage.enterDetails("Test Over Declaration Reason")

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

      And("I enter volumes on Declare Whiskey Page")
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

      And("I click on Agree and send return button Return Summary Page")
      ReturnSummaryPage.continue()

      Then("I am presented with the Return Submitted Page")
      ReturnSubmittedPage.checkURL

    }

    Scenario("2. Alcohol Duty Returns Journey - Happy Path - Negative Value Submission", AllTests, AlcoholToDeclare) {
      Given("I start a return and select all alcohol regimes")
      loginAndStartReturn("AABCP0000100208")
      selectAllRegimes()

      When("I click on Declare beer hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare beer")

      And(
        "I select checkbox Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR) on What Do You Need To Declare Beer Page"
      )
      WhatDoYouNeedToDeclareBeerPage.selectRateBands(
        "Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR)"
      )

      And("I enter volumes on the How Much You Need To Declare Beer Page")
      HowMuchYouNeedToDeclareBeerPage.enterDetailsForAllRateBands()

      And("I select radio button Yes on Do You Have Multiple Small Producer Relief Duty Rate Beer Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.selectMultipleSpr(true)

      And("I enter details for tax type 361 on Multiple Small Producer Relief Rate Beer Page")
      MultipleSmallProducerReliefRateBeerPage.enterDetailsFor361(mustSelectRateBand = false)

      And("I click continue button on Check Your Answers SPR Beer Page")
      CheckYourAnswersSPRBeerPage.continue()

      And("I select radio button No on Multiple SPR List Question Beer Page")
      MultipleSPRListQuestionBeerPage.addAnother(false)

      And("I click save and continue button on Check Your Answers Returns Beer Page")
      CheckYourAnswersReturnsBeerPage.continue()

      And("I click save and continue button on Duty Due Beer Page")
      DutyDueBeerPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare cider hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare cider")

      And(
        "I select checkbox Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR) on What Do You Need To Declare Cider Page"
      )
      WhatDoYouNeedToDeclareCiderPage.selectRateBands(
        "Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR)"
      )

      And("I enter volumes on the How Much You Need To Declare Cider Page")
      HowMuchYouNeedToDeclareCiderPage.enterDetailsForAllRateBands()

      And("I select radio button Yes on Do You Have Multiple Small Producer Relief Duty Rate Cider Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateCiderPage.selectMultipleSpr(true)

      And("I enter details for tax type 367 on Multiple Small Producer Relief Rate Cider Page")
      MultipleSmallProducerReliefRateCiderPage.enterDetailsFor367()

      And("I click continue button on Check Your Answers SPR Cider Page")
      CheckYourAnswersSPRCiderPage.continue()

      And("I select radio button No on Multiple SPR List Question Cider Page")
      MultipleSPRListQuestionCiderPage.addAnother(false)

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
        "I select checkbox Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 3.5% and 8.4% ABV (tax type code 368 SPR) on What Do You Need To Declare Wine Page"
      )
      WhatDoYouNeedToDeclareWinePage.selectRateBands(
        "Wine between 1.3% and 3.4% ABV (tax type code 313),Wine between 3.5% and 8.4% ABV (tax type code 323),Wine between 8.5% and 22% ABV (tax type code 333),Wine at or above 22.1% ABV (tax type code 343),Wine between 1.3% and 3.4% ABV (tax type code 353),Wine between 3.5% and 8.4% ABV (tax type code 358),Wine between 3.5% and 8.4% ABV (tax type code 368 SPR)"
      )

      And("I enter volumes on the How Much You Need To Declare Wine Page")
      HowMuchYouNeedToDeclareWinePage.enterDetailsForAllRateBands()

      And("I select radio button Yes on Do You Have Multiple Small Producer Relief Duty Rate Wine Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateWinePage.selectMultipleSpr(true)

      And("I enter details for tax type 368 on the Multiple Small Producer Relief Rate Wine Page")
      MultipleSmallProducerReliefRateWinePage.enterDetailsFor368()

      And("I click continue button on Check Your Answers SPR Wine Page")
      CheckYourAnswersSPRWinePage.continue()

      And("I select radio button No on Multiple SPR List Question Wine Page")
      MultipleSPRListQuestionWinePage.addAnother(false)

      And("I click save and continue button on Check Your Answers Returns Wine Page")
      CheckYourAnswersReturnsWinePage.continue()

      And("I click save and continue button on Duty Due Wine Page")
      DutyDueWinePage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare spirits hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare spirits")

      And(
        "I select checkbox Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 3.5% and 8.4% ABV (tax type code 380 SPR) on What Do You Need To Declare Spirits Page"
      )
      WhatDoYouNeedToDeclareSpiritsPage.selectRateBands(
        "Spirits between 1.3% and 3.4% ABV (tax type code 315),Spirits between 3.5% and 8.4% ABV (tax type code 325),Spirits between 8.5% and 22% ABV (tax type code 335),Spirits at or above 22.1% ABV (tax type code 345),Spirits between 1.3% and 3.4% ABV (tax type code 355),Spirits between 3.5% and 8.4% ABV (tax type code 360),Spirits between 3.5% and 8.4% ABV (tax type code 380 SPR)"
      )

      And("I enter volumes on the How Much You Need To Declare Spirits Page")
      HowMuchYouNeedToDeclareSpiritsPage.enterDetailsForAllRateBands()

      And("I select radio button Yes on Do You Have Multiple Small Producer Relief Duty Rate Spirits Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateSpiritsPage.selectMultipleSpr(true)

      And("I enter details for tax type 380 on Multiple Small Producer Relief Rate Spirits Page")
      MultipleSmallProducerReliefRateSpiritsPage.enterDetailsFor380()

      And("I click continue button on Check Your Answers SPR Spirits Page")
      CheckYourAnswersSPRSpiritsPage.continue()

      And("I select radio button No on Multiple SPR List Question Spirits Page")
      MultipleSPRListQuestionSpiritsPage.addAnother(false)

      And("I click save and continue button on Check Your Answers Returns Spirits Page")
      CheckYourAnswersReturnsSpiritsPage.continue()

      And("I click save and continue button on Duty Due Spirits Page")
      DutyDueSpiritsPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare other fermented products hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare other fermented products")

      And(
        "I select checkbox Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR) on What Do You Need To Declare Wine Page"
      )
      WhatDoYouNeedToDeclareOtherFermentedProductPage.selectRateBands(
        "Other fermented products between 1.3% and 3.4% ABV (tax type code 314),Other fermented products between 3.5% and 8.4% ABV (tax type code 324),Other fermented products between 8.5% and 22% ABV (tax type code 334),Other fermented products at or above 22.1% ABV (tax type code 344),Other fermented products between 1.3% and 3.4% ABV (tax type code 354),Other fermented products between 3.5% and 8.4% ABV (tax type code 359),Other fermented products between 3.5% and 8.4% ABV (tax type code 369 SPR)"
      )

      And("I enter volumes on the How Much You Need To Declare Other Fermented Product Page")
      HowMuchYouNeedToDeclareOtherFermentedProductPage.enterDetailsForAllRateBands()

      And(
        "I select radio button Yes on Do You Have Multiple Small Producer Relief Duty Rate Other Fermented Product Page"
      )
      DoYouHaveMultipleSmallProducerReliefDutyRateOtherFermentedProductPage.selectMultipleSpr(true)

      And("I enter details for tax type 369 on Multiple Small Producer Relief Rate Other Fermented Product Page")
      MultipleSmallProducerReliefRateOtherFermentedProductPage.enterDetailsFor369()

      And("I click continue button on Check Your Answers SPR Other Fermented Product Page")
      CheckYourAnswersSPROtherFermentedProductPage.continue()

      And("I select radio button No on Multiple SPR List Question Other Fermented Product Page")
      MultipleSPRListQuestionOtherFermentedProductPage.addAnother(false)

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

      And("I select radio button Under-declaration on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Under-declaration")

      Then("I am presented with the Adjustment Return Date Page")
      thenIAmPresentedWithThe("Adjustment Return Date Page")

      When("I enter month 09 and year 2023 on Adjustment Return Date Page")
      whenIEnterMonthAndYearOn("09", "2023", "Adjustment Return Date Page")

      And("I click save and continue button on Adjustment Return Date Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Return Date Page")

      Then("I am presented with the Adjustment Tax Type Code Page")
      thenIAmPresentedWithThe("Adjustment Tax Type Code Page")

      When("I enter 371 on Adjustment Tax Type Code Page")
      whenIEnterOn("371", "Adjustment Tax Type Code Page")

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

      And("I click continue button on Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      And("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      And("I select radio button Yes on Adjustment List Page")
      AdjustmentListPage.addAnother(true)

      And("I select radio button Over-declaration on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Over-declaration")

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

      When("I enter 9999.99 for Total Litres on Adjustment Volume With Spr Page")
      whenIEnterForOn("9999.99", "Total Litres", "Adjustment Volume With Spr Page")

      And("I enter 7777.7700 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("7777.7700", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 898.89 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("898.89", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      And("I click continue button on Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      And("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      And("I select radio button Yes on Adjustment List Page")
      AdjustmentListPage.addAnother(true)

      And("I select radio button Spoilt on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Spoilt")

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

      And("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      Then("I am presented with the Adjustment List Page")
      thenIAmPresentedWithThe("Adjustment List Page")

      When("I select radio button Yes on Adjustment List Page")
      whenISelectRadioButtonOn("Yes", "Adjustment List Page")

      And("I click save and continue button on Adjustment List Page")
      whenIClickSaveAndContinueButtonOn("Adjustment List Page")

      And("I select radio button Drawback on Adjustment Type Page")
      AdjustmentTypePage.selectAdjustmentType("Drawback")

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

      And("I enter 250.5599 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
      whenIEnterForOn("250.5599", "Litres Of Pure Alcohol", "Adjustment Volume With Spr Page")

      And("I enter 9.8 for SPR Duty Rate on Adjustment Volume With Spr Page")
      whenIEnterForOn("9.8", "SPR Duty Rate", "Adjustment Volume With Spr Page")

      And("I click save and continue button on Adjustment Volume With Spr Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Volume With Spr Page")

      And("I click continue button on Adjustment Duty Value Page")
      AdjustmentDutyValuePage.continue()

      And("I click save and continue button on Adjustment Check Your Answers Page")
      AdjustmentCheckYourAnswersPage.continue()

      And("I select radio button No on Adjustment List Page")
      AdjustmentListPage.addAnother(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us why products were under-declared hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us why products were under-declared")

      And("I enter Test Under Declaration Reason on Under Declaration Reason Page")
      UnderDeclarationReasonPage.enterDetails("Test Under Declaration Reason")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us why products were over-declared hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us why products were over-declared")

      And("I enter Test Over Declaration Reason on Over Declaration Reason Page")
      OverDeclarationReasonPage.enterDetails("Test Over Declaration Reason")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When(
        "I click on Tell us if you have delivered or received finished products in duty suspense hyperlink on Task List Page"
      )
      TaskListPage.clickHyperlink("Tell us if you have delivered or received finished products in duty suspense")

      And("I select No on Declare Duty Suspended Deliveries Page")
      DeclareDutySuspendedDeliveriesPage.declareDSD(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us about spirits produced in the past three months hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us about spirits produced in the past three months")

      And("I select No on Quarterly Spirits Returns Guidance Page")
      QuarterlySpiritsReturnsGuidancePage.declareSpirits(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Check duty payable and send your return hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Check duty payable and send your return")

      And("I click on Agree and send return button Return Summary Page")
      ReturnSummaryPage.continue()

      Then("I am presented with the Return Submitted Page")
      ReturnSubmittedPage.checkURL

    }

    Scenario("3. Alcohol Duty Returns Journey - Happy Path - Nil Return", AllTests, AlcoholToDeclare) {
      Given("I start a return")
      loginAndStartReturn("AABCP0000100208")

      When("I click on Tell us if you have alcoholic products to declare hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us if you have alcoholic products to declare")

      And("I select No on Declare Alcohol Duty Question Page")
      DeclareAlcoholDutyQuestionPage.declareAlcohol(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us if you have adjustments to declare hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us if you have adjustments to declare")

      And("I select No on Declare Adjustment Question Page")
      DeclareAdjustmentQuestionPage.declareAdjustments(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When(
        "I click on Tell us if you have delivered or received finished products in duty suspense hyperlink on Task List Page"
      )
      TaskListPage.clickHyperlink("Tell us if you have delivered or received finished products in duty suspense")

      And("I select No on Declare Duty Suspended Deliveries Page")
      DeclareDutySuspendedDeliveriesPage.declareDSD(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us about spirits produced in the past three months hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us about spirits produced in the past three months")

      And("I select No on Quarterly Spirits Returns Guidance Page")
      QuarterlySpiritsReturnsGuidancePage.declareSpirits(false)

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Check duty payable and send your return hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Check duty payable and send your return")

      And("I click on Agree and send return button No Duty Due Page")
      NoDutyDuePage.continue()

      Then("I am presented with the Return Submitted Page")
      ReturnSubmittedPage.checkURL

    }

    Scenario("4. Alcohol Duty Returns Journey - Verifying 'Remove' link functionality", AllTests, AlcoholToDeclare) {
      Given("I start a return")
      loginAndStartReturn("AABCP0000100208")

      When("I click on Tell us if you have alcoholic products to declare hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us if you have alcoholic products to declare")

      And("I select Yes on Declare Alcohol Duty Question Page")
      DeclareAlcoholDutyQuestionPage.declareAlcohol(true)

      And("I select checkbox Beer on What Alcohol Do You Need To Declare Page")
      WhatAlcoholDoYouNeedToDeclarePage.selectSingleRegime("Beer")

      And(
        "I select checkbox Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR) on What Do You Need To Declare Beer Page"
      )
      WhatDoYouNeedToDeclareBeerPage.selectRateBands(
        "Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR)"
      )

      When("I select radio button Yes on Do You Have Multiple Small Producer Relief Duty Rate Beer Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.selectMultipleSpr(true)

      And("I enter details for tax type 361 on Multiple Small Producer Relief Rate Beer Page")
      MultipleSmallProducerReliefRateBeerPage.enterDetailsFor361()

      And("I click continue button on Check Your Answers SPR Beer Page")
      CheckYourAnswersSPRBeerPage.continue()

      And("I select radio button Yes on Multiple SPR List Question Beer Page")
      MultipleSPRListQuestionBeerPage.addAnother(true)

      And("I enter details for tax type 371 on Multiple Small Producer Relief Rate Beer Page")
      MultipleSmallProducerReliefRateBeerPage.enterDetailsFor371InChangeMode()

      And("I click continue button on Check Your Answers SPR Beer Page")
      CheckYourAnswersSPRBeerPage.continue()

      And("I click Remove hyperlink on Multiple SPR List Question Beer Page")
      MultipleSPRListQuestionBeerPage.clickRemoveHyperlink()

      And("I select radio button No on Delete Multiple SPR Product Question Page")
      DeleteMultipleSPRProductQuestionPage.deleteEntry(false)

      And("I click Remove hyperlink on Multiple SPR List Question Beer Page")
      MultipleSPRListQuestionBeerPage.clickRemoveHyperlink()

      And("I select radio button Yes on Delete Multiple SPR Product Question Page")
      DeleteMultipleSPRProductQuestionPage.deleteEntry(true)

      And("I click Remove hyperlink on Multiple SPR List Question Beer Page")
      MultipleSPRListQuestionBeerPage.clickRemoveHyperlink()

      And("I select radio button Yes on Delete Multiple SPR Product Question Page")
      DeleteMultipleSPRProductQuestionPage.deleteEntry(true)

      Then("I am presented with the Do You Have Multiple Small Producer Relief Duty Rate Beer Page")
      DoYouHaveMultipleSmallProducerReliefDutyRateBeerPage.checkURL

    }

    Scenario("5. Alcohol Duty Returns Journey - Happy Path - Delete Missing Details", AllTests, AlcoholToDeclare) {
      Given("I start a return and select all alcohol regimes")
      loginAndStartReturn("AABCP0000100208")
      selectAllRegimes()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

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

      And("I click continue button on Check Your Answers SPR Beer Page")
      CheckYourAnswersSPRBeerPage.continue()

      And("I select No on Multiple SPR List Question Beer Page")
      MultipleSPRListQuestionBeerPage.addAnother(false)

      And("I select radio button Delete these declarations from this return on You Have Some Missing Details Page")
      YouHaveSomeMissingDetailsPage.addMissingRateBands(false)

      And("I select Yes on Delete Alcohol Page")
      DeleteAlcoholPage.deleteRateBands(true)

      And("I click save and continue button on Check Your Answers Returns Beer Page")
      CheckYourAnswersReturnsBeerPage.continue()

      And("I click save and continue button on Duty Due Beer Page")
      DutyDueBeerPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }
  }
}
