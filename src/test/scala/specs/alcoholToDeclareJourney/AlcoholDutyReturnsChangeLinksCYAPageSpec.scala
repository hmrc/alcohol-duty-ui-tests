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

import specpage.alcoholDuty.alcoholToDeclare.Beer._
import specpage.alcoholDuty.alcoholToDeclare.Cider._
import specpage.common.TaskListPage
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

      Then("I am presented with the What Do You Need To Declare Beer Page")
      thenIAmPresentedWithThe("What Do You Need To Declare Beer Page")

      When("I select checkbox Beer at or above 22.1% ABV (tax type code 341) on What Do You Need To Declare Beer Page")
      whenICheckboxOn(
        "select",
        "Beer at or above 22.1% ABV (tax type code 341)",
        "What Do You Need To Declare Beer Page"
      )

      And("I click save and continue button on What Do You Need To Declare Beer Page")
      whenIClickSaveAndContinueButtonOn("What Do You Need To Declare Beer Page")

      Then("I am presented with the How Much You Need To Declare Beer Page")
      thenIAmPresentedWithThe("How Much You Need To Declare Beer Page")

      And(
        "I enter 999.19 for Standard beer at or above 22.1% ABV - Total litres on How Much You Need To Declare Beer Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "999.19",
        "Standard beer at or above 22.1% ABV - Total litres",
        "How Much You Need To Declare Beer Page",
        "first"
      )

      And(
        "I enter 99.1300 for Standard beer at or above 22.1% ABV - Pure alcohol on How Much You Need To Declare Beer Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "99.1300",
        "Standard beer at or above 22.1% ABV - Pure alcohol",
        "How Much You Need To Declare Beer Page",
        "first"
      )

      And("I click save and continue button on How Much You Need To Declare Beer Page")
      whenIClickSaveAndContinueButtonOn("How Much You Need To Declare Beer Page")

      Then("I am presented with the Check Your Answers Returns Beer Page")
      thenIAmPresentedWithThe("Check Your Answers Returns Beer Page")

      When("I click save and continue button on Check Your Answers Returns Beer Page")
      whenIClickSaveAndContinueButtonOn("Check Your Answers Returns Beer Page")

      Then("I am presented with the Duty Due Beer Page")
      thenIAmPresentedWithThe("Duty Due Beer Page")

      When("I click save and continue button on Duty Due Beer Page")
      whenIClickSaveAndContinueButtonOn("Duty Due Beer Page")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare cider hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Declare cider")

      Then("I am presented with the What Do You Need To Declare Cider Page")
      thenIAmPresentedWithThe("What Do You Need To Declare Cider Page")

      When(
        "I select checkbox Cider between 1.3% and 3.4% ABV (tax type code 312) on What Do You Need To Declare Cider Page"
      )
      whenICheckboxOn(
        "select",
        "Cider between 1.3% and 3.4% ABV (tax type code 312)",
        "What Do You Need To Declare Cider Page"
      )

      And("I click save and continue button on What Do You Need To Declare Cider Page")
      whenIClickSaveAndContinueButtonOn("What Do You Need To Declare Cider Page")

      Then("I am presented with the How Much You Need To Declare Cider Page")
      thenIAmPresentedWithThe("How Much You Need To Declare Cider Page")

      When(
        "I enter 789.44 for Standard cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "789.44",
        "Standard cider between 1.3% and 3.4% ABV - Total litres",
        "How Much You Need To Declare Cider Page",
        "first"
      )

      And(
        "I enter 43.4400 for Standard cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "43.4400",
        "Standard cider between 1.3% and 3.4% ABV - Pure alcohol",
        "How Much You Need To Declare Cider Page",
        "first"
      )

      And("I click save and continue button on How Much You Need To Declare Cider Page")
      whenIClickSaveAndContinueButtonOn("How Much You Need To Declare Cider Page")

      Then("I am presented with the Check Your Answers Returns Cider Page")
      thenIAmPresentedWithThe("Check Your Answers Returns Cider Page")

      When("I click save and continue button on Check Your Answers Returns Cider Page")
      whenIClickSaveAndContinueButtonOn("Check Your Answers Returns Cider Page")

      Then("I am presented with the Duty Due Cider Page")
      thenIAmPresentedWithThe("Duty Due Cider Page")

      When("I click save and continue button on Duty Due Cider Page")
      whenIClickSaveAndContinueButtonOn("Duty Due Cider Page")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare wine hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Declare wine", "Task List Page")

      Then("I am presented with the Declaring Your Wine For Duty Page")
      thenIAmPresentedWithThe("Declaring Your Wine For Duty Page")

      And("I click continue button on Declaring Your Wine For Duty Page")
      whenIClickContinueButtonOn("Declaring Your Wine For Duty Page")

      Then("I am presented with the What Do You Need To Declare Wine Page")
      thenIAmPresentedWithThe("What Do You Need To Declare Wine Page")

      When(
        "I select checkbox Wine between 1.3% and 3.4% ABV (tax type code 313) on What Do You Need To Declare Wine Page"
      )
      whenICheckboxOn(
        "select",
        "Wine between 1.3% and 3.4% ABV (tax type code 313)",
        "What Do You Need To Declare Wine Page"
      )

      And("I click save and continue button on What Do You Need To Declare Wine Page")
      whenIClickSaveAndContinueButtonOn("What Do You Need To Declare Wine Page")

      Then("I am presented with the How Much You Need To Declare Wine Page")
      thenIAmPresentedWithThe("How Much You Need To Declare Wine Page")

      When(
        "I enter 1234.55 for Standard wine between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Wine Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "1234.55",
        "Standard wine between 1.3% and 3.4% ABV - Total litres",
        "How Much You Need To Declare Wine Page",
        "first"
      )

      And(
        "I enter 35.5500 for Standard wine between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Wine Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "35.5500",
        "Standard wine between 1.3% and 3.4% ABV - Pure alcohol",
        "How Much You Need To Declare Wine Page",
        "first"
      )

      And("I click save and continue button on How Much You Need To Declare Wine Page")
      whenIClickSaveAndContinueButtonOn("How Much You Need To Declare Wine Page")

      Then("I am presented with the Check Your Answers Returns Wine Page")
      thenIAmPresentedWithThe("Check Your Answers Returns Wine Page")

      When("I click save and continue button on Check Your Answers Returns Wine Page")
      whenIClickSaveAndContinueButtonOn("Check Your Answers Returns Wine Page")

      Then("I am presented with the Duty Due Wine Page")
      thenIAmPresentedWithThe("Duty Due Wine Page")

      When("I click save and continue button on Duty Due Wine Page")
      whenIClickSaveAndContinueButtonOn("Duty Due Wine Page")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare spirits hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Declare spirits", "Task List Page")

      Then("I am presented with the What Do You Need To Declare Spirits Page")
      thenIAmPresentedWithThe("What Do You Need To Declare Spirits Page")

      When(
        "I select checkbox Spirits between 1.3% and 3.4% ABV (tax type code 315) on What Do You Need To Declare Spirits Page"
      )
      whenICheckboxOn(
        "select",
        "Spirits between 1.3% and 3.4% ABV (tax type code 315)",
        "What Do You Need To Declare Spirits Page"
      )

      And("I click save and continue button on What Do You Need To Declare Spirits Page")
      whenIClickSaveAndContinueButtonOn("What Do You Need To Declare Spirits Page")

      Then("I am presented with the How Much You Need To Declare Spirits Page")
      thenIAmPresentedWithThe("How Much You Need To Declare Spirits Page")

      When(
        "I enter 8888.66 for Standard spirits between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Spirits Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "8888.66",
        "Standard spirits between 1.3% and 3.4% ABV - Total litres",
        "How Much You Need To Declare Spirits Page",
        "first"
      )

      And(
        "I enter 88.8000 for Standard spirits between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Spirits Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "88.8000",
        "Standard spirits between 1.3% and 3.4% ABV - Pure alcohol",
        "How Much You Need To Declare Spirits Page",
        "first"
      )

      And("I click save and continue button on How Much You Need To Declare Spirits Page")
      whenIClickSaveAndContinueButtonOn("How Much You Need To Declare Spirits Page")

      Then("I am presented with the Check Your Answers Returns Spirits Page")
      thenIAmPresentedWithThe("Check Your Answers Returns Spirits Page")

      When("I click save and continue button on Check Your Answers Returns Spirits Page")
      whenIClickSaveAndContinueButtonOn("Check Your Answers Returns Spirits Page")

      Then("I am presented with the Duty Due Spirits Page")
      thenIAmPresentedWithThe("Duty Due Spirits Page")

      When("I click save and continue button on Duty Due Spirits Page")
      whenIClickSaveAndContinueButtonOn("Duty Due Spirits Page")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Declare other fermented products hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Declare other fermented products", "Task List Page")

      Then("I am presented with the What Do You Need To Declare Other Fermented Product Page")
      thenIAmPresentedWithThe("What Do You Need To Declare Other Fermented Product Page")

      When(
        "I select checkbox Other fermented products between 1.3% and 3.4% ABV (tax type code 314) on What Do You Need To Declare Other Fermented Product Page"
      )
      whenICheckboxOn(
        "select",
        "Other fermented products between 1.3% and 3.4% ABV (tax type code 314)",
        "What Do You Need To Declare Other Fermented Product Page"
      )

      And("I click save and continue button on What Do You Need To Declare Other Fermented Product Page")
      whenIClickSaveAndContinueButtonOn("What Do You Need To Declare Other Fermented Product Page")

      Then("I am presented with the How Much You Need To Declare Other Fermented Product Page")
      thenIAmPresentedWithThe("How Much You Need To Declare Other Fermented Product Page")

      When(
        "I enter 2233.33 for Standard other fermented products between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Other Fermented Product Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "2233.33",
        "Standard other fermented products between 1.3% and 3.4% ABV - Total litres",
        "How Much You Need To Declare Other Fermented Product Page",
        "first"
      )

      And(
        "I enter 33.3300 for Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Other Fermented Product Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "33.3300",
        "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol",
        "How Much You Need To Declare Other Fermented Product Page",
        "first"
      )

      And("I click save and continue button on How Much You Need To Declare Other Fermented Product Page")
      whenIClickSaveAndContinueButtonOn("How Much You Need To Declare Other Fermented Product Page")

      Then("I am presented with the Check Your Answers Returns Other Fermented Product Page")
      thenIAmPresentedWithThe("Check Your Answers Returns Other Fermented Product Page")

      When("I click save and continue button on Check Your Answers Returns Other Fermented Product Page")
      whenIClickSaveAndContinueButtonOn("Check Your Answers Returns Other Fermented Product Page")

      Then("I am presented with the Duty Due Other Fermented Product Page")
      thenIAmPresentedWithThe("Duty Due Other Fermented Product Page")

      When("I click save and continue button on Duty Due Other Fermented Product Page")
      whenIClickSaveAndContinueButtonOn("Duty Due Other Fermented Product Page")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us if you have adjustments to declare hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Tell us if you have adjustments to declare", "Task List Page")

      Then("I am presented with the Declare Adjustment Question Page")
      thenIAmPresentedWithThe("Declare Adjustment Question Page")

      When("I select radio button Yes on Declare Adjustment Question Page")
      whenISelectRadioButtonOn("Yes", "Declare Adjustment Question Page")

      And("I click save and continue button on Declare Adjustment Question Page")
      whenIClickSaveAndContinueButtonOn("Declare Adjustment Question Page")

      Then("I am presented with the Adjustment Type Page")
      thenIAmPresentedWithThe("Adjustment Type Page")

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

      When("I enter 123.45 for Total Litres on Adjustment Volume Page")
      whenIEnterForOn("123.45", "Total Litres", "Adjustment Volume Page")

      And("I enter 5.5000 for Litres Of Pure Alcohol on Adjustment Volume Page")
      whenIEnterForOn("5.5000", "Litres Of Pure Alcohol", "Adjustment Volume Page")

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

      When("I enter 312 on Adjustment Tax Type Code Page")
      whenIEnterOn("312", "Adjustment Tax Type Code Page")

      And("I click save and continue button on Adjustment Tax Type Code Page")
      whenIClickSaveAndContinueButtonOn("Adjustment Tax Type Code Page")

      Then("I am presented with the Adjustment Volume Page")
      thenIAmPresentedWithThe("Adjustment Volume Page")

      When("I enter 222.22 for Total Litres on Adjustment Volume Page")
      whenIEnterForOn("222.22", "Total Litres", "Adjustment Volume Page")

      And("I enter 22.2200 for Litres Of Pure Alcohol on Adjustment Volume Page")
      whenIEnterForOn("22.2200", "Litres Of Pure Alcohol", "Adjustment Volume Page")

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

      When("I select radio button Yes on Adjustment List Page")
      whenISelectRadioButtonOn("Yes", "Adjustment List Page")

      And("I click save and continue button on Adjustment List Page")
      whenIClickSaveAndContinueButtonOn("Adjustment List Page")

      Then("I am presented with the Adjustment Type Page")
      thenIAmPresentedWithThe("Adjustment Type Page")

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
      TaskListPage.checkURL

      When(
        "I click on Tell us if you have delivered or received finished products in duty suspense hyperlink on Task List Page"
      )
      whenIClickOnHyperlinkOn(
        "Tell us if you have delivered or received finished products in duty suspense",
        "Task List Page"
      )

      Then("I am presented with the Declare Duty Suspended Deliveries Page")
      thenIAmPresentedWithThe("Declare Duty Suspended Deliveries Page")

      When("I select radio button Yes on Declare Duty Suspended Deliveries Page")
      whenISelectRadioButtonOn("Yes", "Declare Duty Suspended Deliveries Page")

      And("I click save and continue button on Declare Duty Suspended Deliveries Page")
      whenIClickSaveAndContinueButtonOn("Declare Duty Suspended Deliveries Page")

      Then("I am presented with the Duty Suspended Deliveries Guidance Page")
      thenIAmPresentedWithThe("Duty Suspended Deliveries Guidance Page")

      When("I click continue button on Duty Suspended Deliveries Guidance Page")
      whenIClickContinueButtonOn("Duty Suspended Deliveries Guidance Page")

      Then("I am presented with the Duty Suspended Beer Page")
      thenIAmPresentedWithThe("Duty Suspended Beer Page")

      When("I enter 2000.75 for Total Beer on Duty Suspended Beer Page")
      whenIEnterForOn("2000.75", "Total Beer", "Duty Suspended Beer Page")

      And("I enter 150.55 for Pure Alcohol In Beer on Duty Suspended Beer Page")
      whenIEnterForOn("150.55", "Pure Alcohol In Beer", "Duty Suspended Beer Page")

      And("I click save and continue button on Duty Suspended Beer Page")
      whenIClickSaveAndContinueButtonOn("Duty Suspended Beer Page")

      Then("I am presented with the Duty Suspended Cider Page")
      thenIAmPresentedWithThe("Duty Suspended Cider Page")

      When("I enter 9999.99 for Total Cider on Duty Suspended Cider Page")
      whenIEnterForOn("9999.99", "Total Cider", "Duty Suspended Cider Page")

      And("I enter 99.19 for Pure Alcohol In Cider on Duty Suspended Cider Page")
      whenIEnterForOn("99.19", "Pure Alcohol In Cider", "Duty Suspended Cider Page")

      And("I click save and continue button on Duty Suspended Cider Page")
      whenIClickSaveAndContinueButtonOn("Duty Suspended Cider Page")

      Then("I am presented with the Duty Suspended Wine Page")
      thenIAmPresentedWithThe("Duty Suspended Wine Page")

      When("I enter 7777.77 for Total Wine on Duty Suspended Wine Page")
      whenIEnterForOn("7777.77", "Total Wine", "Duty Suspended Wine Page")

      And("I enter 77.77 for Pure Alcohol In Wine on Duty Suspended Wine Page")
      whenIEnterForOn("77.77", "Pure Alcohol In Wine", "Duty Suspended Wine Page")

      And("I click save and continue button on Duty Suspended Wine Page")
      whenIClickSaveAndContinueButtonOn("Duty Suspended Wine Page")

      Then("I am presented with the Duty Suspended Spirits Page")
      thenIAmPresentedWithThe("Duty Suspended Spirits Page")

      When("I enter 2100.75 for Total Spirits on Duty Suspended Spirits Page")
      whenIEnterForOn("2100.75", "Total Spirits", "Duty Suspended Spirits Page")

      And("I enter 160.55 for Pure Alcohol In Spirits on Duty Suspended Spirits Page")
      whenIEnterForOn("160.55", "Pure Alcohol In Spirits", "Duty Suspended Spirits Page")

      And("I click save and continue button on Duty Suspended Spirits Page")
      whenIClickSaveAndContinueButtonOn("Duty Suspended Spirits Page")

      Then("I am presented with the Duty Suspended Other Fermented Products Page")
      thenIAmPresentedWithThe("Duty Suspended Other Fermented Products Page")

      When("I enter 8888.88 for Total Other Fermented Products on Duty Suspended Other Fermented Products Page")
      whenIEnterForOn("8888.88", "Total Other Fermented Products", "Duty Suspended Other Fermented Products Page")

      And("I enter 88.88 for Pure Alcohol In Other Fermented Products on Duty Suspended Other Fermented Products Page")
      whenIEnterForOn(
        "88.88",
        "Pure Alcohol In Other Fermented Products",
        "Duty Suspended Other Fermented Products Page"
      )

      And("I click save and continue button on Duty Suspended Other Fermented Products Page")
      whenIClickSaveAndContinueButtonOn("Duty Suspended Other Fermented Products Page")

      Then("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
      thenIAmPresentedWithThe("Duty Suspended Deliveries Check Your Answers Page")

      When("I click continue button on Duty Suspended Deliveries Check Your Answers Page")
      whenIClickContinueButtonOn("Duty Suspended Deliveries Check Your Answers Page")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Tell us about spirits produced in the past three months hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Tell us about spirits produced in the past three months", "Task List Page")

      Then("I am presented with the Quarterly Spirits Returns Guidance Page")
      thenIAmPresentedWithThe("Quarterly Spirits Returns Guidance Page")

      When("I select radio button Yes on Quarterly Spirits Returns Guidance Page")
      whenISelectRadioButtonOn("Yes", "Quarterly Spirits Returns Guidance Page")

      And("I click save and continue button on Quarterly Spirits Returns Guidance Page")
      whenIClickSaveAndContinueButtonOn("Quarterly Spirits Returns Guidance Page")

      Then("I am presented with the Total Of All Spirits Page")
      thenIAmPresentedWithThe("Total Of All Spirits Page")

      When("I enter 99 on Total Of All Spirits Page")
      whenIEnterOn("99", "Total Of All Spirits Page")

      And("I click save and continue button on Total Of All Spirits Page")
      whenIClickSaveAndContinueButtonOn("Total Of All Spirits Page")

      Then("I am presented with the Declare Whiskey Page")
      thenIAmPresentedWithThe("Declare Whiskey Page")

      When("I enter 10.55 for Scotch Whisky on Declare Whiskey Page")
      whenIEnterForOn("10.55", "Scotch Whisky", "Declare Whiskey Page")

      And("I enter 20.67 for Irish Whiskey on Declare Whiskey Page")
      whenIEnterForOn("20.67", "Irish Whiskey", "Declare Whiskey Page")

      And("I click save and continue button on Declare Whiskey Page")
      whenIClickSaveAndContinueButtonOn("Declare Whiskey Page")

      Then("I am presented with the Which Of These Spirits Have You Produced Page")
      thenIAmPresentedWithThe("Which Of These Spirits Have You Produced Page")

      When(
        "I select checkbox Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits on Which Of These Spirits Have You Produced Page"
      )
      whenICheckboxOn(
        "select",
        "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits",
        "Which Of These Spirits Have You Produced Page"
      )

      And("I click save and continue button on Which Of These Spirits Have You Produced Page")
      whenIClickSaveAndContinueButtonOn("Which Of These Spirits Have You Produced Page")

      Then("I am presented with the Declare Other Spirits Produced Page")
      thenIAmPresentedWithThe("Declare Other Spirits Produced Page")

      When("I enter Test Spirits on Declare Other Spirits Produced Page")
      whenIEnterOn("Test Spirits", "Declare Other Spirits Produced Page")

      And("I click save and continue button on Declare Other Spirits Produced Page")
      whenIClickSaveAndContinueButtonOn("Declare Other Spirits Produced Page")

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
      thenIAmPresentedWithThe("Quarterly Spirits Check Your Answers Page")

      When("I click save and continue button on Quarterly Spirits Check Your Answers Page")
      whenIClickSaveAndContinueButtonOn("Quarterly Spirits Check Your Answers Page")

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Check duty payable and send your return hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Check duty payable and send your return", "Task List Page")

      Then("I am presented with the Return Summary Page")
      thenIAmPresentedWithThe("Return Summary Page")

      When("I click Change Declared spirits duty on Return Summary Page")
      whenIClickOn("Change Declared spirits duty", "Return Summary Page")

      Then("I am presented with the Check Your Answers Returns Spirits Page")
      thenIAmPresentedWithThe("Check Your Answers Returns Spirits Page")

      When("I enter redirect url for Return Summary Page")
      whenIEnterRedirectUrlFor("Return Summary Page")

      Then("I am presented with the Return Summary Page")
      thenIAmPresentedWithThe("Return Summary Page")

      When("I click Change Declared wine duty on Return Summary Page")
      whenIClickOn("Change Declared wine duty", "Return Summary Page")

      Then("I am presented with the Check Your Answers Returns Wine Page")
      thenIAmPresentedWithThe("Check Your Answers Returns Wine Page")

      When("I enter redirect url for Return Summary Page")
      whenIEnterRedirectUrlFor("Return Summary Page")

      Then("I am presented with the Return Summary Page")
      thenIAmPresentedWithThe("Return Summary Page")

      When("I click Change Declared cider duty on Return Summary Page")
      whenIClickOn("Change Declared cider duty", "Return Summary Page")

      Then("I am presented with the Check Your Answers Returns Cider Page")
      thenIAmPresentedWithThe("Check Your Answers Returns Cider Page")

      When("I enter redirect url for Return Summary Page")
      whenIEnterRedirectUrlFor("Return Summary Page")

      Then("I am presented with the Return Summary Page")
      thenIAmPresentedWithThe("Return Summary Page")

      When("I click Change Declared other fermented products duty on Return Summary Page")
      whenIClickOn("Change Declared other fermented products duty", "Return Summary Page")

      Then("I am presented with the Check Your Answers Returns Other Fermented Product Page")
      thenIAmPresentedWithThe("Check Your Answers Returns Other Fermented Product Page")

      When("I enter redirect url for Return Summary Page")
      whenIEnterRedirectUrlFor("Return Summary Page")

      Then("I am presented with the Return Summary Page")
      thenIAmPresentedWithThe("Return Summary Page")

      When("I click Change Declared beer duty on Return Summary Page")
      whenIClickOn("Change Declared beer duty", "Return Summary Page")

      Then("I am presented with the Check Your Answers Returns Beer Page")
      thenIAmPresentedWithThe("Check Your Answers Returns Beer Page")

      When("I enter redirect url for Return Summary Page")
      whenIEnterRedirectUrlFor("Return Summary Page")

      Then("I am presented with the Return Summary Page")
      thenIAmPresentedWithThe("Return Summary Page")

      When("I click Change Adjustment duty value on Return Summary Page")
      whenIClickOn("Change Adjustment duty value", "Return Summary Page")

      Then("I am presented with the Adjustment List Page")
      thenIAmPresentedWithThe("Adjustment List Page")

      When("I enter redirect url for Return Summary Page")
      whenIEnterRedirectUrlFor("Return Summary Page")

      Then("I am presented with the Return Summary Page")
      thenIAmPresentedWithThe("Return Summary Page")

      When("I click Change Duty suspended alcohol on Return Summary Page")
      whenIClickOn("Change Duty suspended alcohol", "Return Summary Page")

      Then("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
      thenIAmPresentedWithThe("Duty Suspended Deliveries Check Your Answers Page")

      When("I enter redirect url for Return Summary Page")
      whenIEnterRedirectUrlFor("Return Summary Page")

      Then("I am presented with the Return Summary Page")
      thenIAmPresentedWithThe("Return Summary Page")

      When("I click Change Spirits production on Return Summary Page")
      whenIClickOn("Change Spirits production", "Return Summary Page")

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
      thenIAmPresentedWithThe("Quarterly Spirits Check Your Answers Page")

      When("I enter redirect url for Return Summary Page")
      whenIEnterRedirectUrlFor("Return Summary Page")

      Then("I am presented with the Return Summary Page")
      thenIAmPresentedWithThe("Return Summary Page")

    }
  }

}
