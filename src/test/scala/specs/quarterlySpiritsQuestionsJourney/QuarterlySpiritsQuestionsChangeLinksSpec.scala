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

package specs.quarterlySpiritsQuestionsJourney

import specpage.alcoholDuty.dutySuspendedDeliveries.DeclareDutySuspendedDeliveriesPage
import specpage.alcoholDuty.quarterlySpiritsQuestion.{DeclareOtherSpiritsProducedPage, DeclareWhiskeyPage, QuarterlySpiritsCheckYourAnswersPage, QuarterlySpiritsReturnsGuidancePage, TotalOfAllSpiritsPage, WhichOfTheseSpiritsHaveYouProducedPage}
import specpage.common.TaskListPage
import specs.BaseSpec
import specs.tags.{AllTests, QuarterlySpirits}
import specsteps.BaseStepDefSteps._

class QuarterlySpiritsQuestionsChangeLinksSpec extends BaseSpec {

  Feature("Quarterly Spirits Journey - Change Links - CYA Page") {

    Scenario(
      "1. To verify the change link functionality at Check Your Answers page - Quarterly Spirits Journey",
      AllTests,
      QuarterlySpirits
    ) {
      Given("I start a return")
      loginAndStartReturn("AABCP0000100208")

      When("I click on Tell us about spirits produced in the past three months hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Tell us about spirits produced in the past three months", "Task List Page")

      Then("I am presented with the Quarterly Spirits Returns Guidance Page")
     // thenIAmPresentedWithThe("Quarterly Spirits Returns Guidance Page")
      QuarterlySpiritsReturnsGuidancePage.declareSpirits(declaringSpirits= true)

//      When("I select radio button Yes on Quarterly Spirits Returns Guidance Page")
//     // whenISelectRadioButtonOn("Yes", "Quarterly Spirits Returns Guidance Page")
//      QuarterlySpiritsReturnsGuidancePage.clickRadioButton("Yes")
//
//
//      And("I click save and continue button on Quarterly Spirits Returns Guidance Page")
//     // whenIClickSaveAndContinueButtonOn("Quarterly Spirits Returns Guidance Page")
//      QuarterlySpiritsReturnsGuidancePage.clickSaveAndContinueButton()

      Then("I am presented with the Total Of All Spirits Page")
     // thenIAmPresentedWithThe("Total Of All Spirits Page")
      TotalOfAllSpiritsPage.enterVolume("111.11")


//      When("I enter 111.11 on Total Of All Spirits Page")
    // whenIEnterOn("111.11", "Total Of All Spirits Page")
              // TotalOfAllSpiritsPage.enterMultipleDetails("2000.75", "Total Beer")
//
//      And("I click save and continue button on Total Of All Spirits Page")
//      whenIClickSaveAndContinueButtonOn("Total Of All Spirits Page")

      Then("I am presented with the Declare Whiskey Page")
      thenIAmPresentedWithThe("Declare Whiskey Page")
      DeclareWhiskeyPage.enterVolumes()
//
//      When("I enter 222.22 for Scotch Whisky on Declare Whiskey Page")
//      whenIEnterForOn("222.22", "Scotch Whisky", "Declare Whiskey Page")
//
//      And("I enter 333.33 for Irish Whiskey on Declare Whiskey Page")
//      whenIEnterForOn("333.33", "Irish Whiskey", "Declare Whiskey Page")
//
//      And("I click save and continue button on Declare Whiskey Page")
//      whenIClickSaveAndContinueButtonOn("Declare Whiskey Page")

      Then("I am presented with the Which Of These Spirits Have You Produced Page")
//      thenIAmPresentedWithThe("Which Of These Spirits Have You Produced Page")
      WhichOfTheseSpiritsHaveYouProducedPage.selectSpiritTypes("Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits")

//      When(
//        "I select checkbox Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits on Which Of These Spirits Have You Produced Page"
//      )
//      whenICheckboxOn(
//        "select",
//        "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits",
//        "Which Of These Spirits Have You Produced Page"
//      )
//
//      And("I click save and continue button on Which Of These Spirits Have You Produced Page")
//      whenIClickSaveAndContinueButtonOn("Which Of These Spirits Have You Produced Page")

      Then("I am presented with the Declare Other Spirits Produced Page")
      DeclareOtherSpiritsProducedPage.enterDetails("Test Spirits")
      //thenIAmPresentedWithThe("Declare Other Spirits Produced Page")


//      When("I enter Test Spirits on Declare Other Spirits Produced Page")
//      whenIEnterOn("Test Spirits", "Declare Other Spirits Produced Page")
//
//      And("I click save and continue button on Declare Other Spirits Produced Page")
//      whenIClickSaveAndContinueButtonOn("Declare Other Spirits Produced Page")

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
    //  thenIAmPresentedWithThe("Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.continue()

//      When("I click Change total of all spirits on Quarterly Spirits Check Your Answers Page")
//      whenIClickOn("Change total of all spirits", "Quarterly Spirits Check Your Answers Page")

      Then("I am presented with the Total Of All Spirits Page with new url")
     // thenIAmPresentedWithTheWithNewUrl("Total Of All Spirits Page")
      TotalOfAllSpiritsPage.enterVolume()

//      When("I enter 111.99 on Total Of All Spirits Page")
//      whenIEnterOn("111.99", "Total Of All Spirits Page")
//
//      And("I click save and continue button on Total Of All Spirits Page")
//      whenIClickSaveAndContinueButtonOn("Total Of All Spirits Page")

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
      //thenIAmPresentedWithThe("Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change Scotch Whisky")

//      When("I click Change Scotch Whisky on Quarterly Spirits Check Your Answers Page")
//      whenIClickOn("Change Scotch Whisky", "Quarterly Spirits Check Your Answers Page")

      Then("I am presented with the Declare Whiskey Page")
//      thenIAmPresentedWithTheWithNewUrl("Declare Whiskey Page")
      DeclareWhiskeyPage.enterVolumes()

//
//      When("I enter 222.99 for Scotch Whisky on Declare Whiskey Page")
//      whenIEnterForOn("222.99", "Scotch Whisky", "Declare Whiskey Page")
//
//      And("I enter 333.99 for Irish Whiskey on Declare Whiskey Page")
//      whenIEnterForOn("333.99", "Irish Whiskey", "Declare Whiskey Page")
//
//      And("I click save and continue button on Declare Whiskey Page")
//      whenIClickSaveAndContinueButtonOn("Declare Whiskey Page")

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
//      thenIAmPresentedWithThe("Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change type of spirits")

//      When("I click Change type of spirits on Quarterly Spirits Check Your Answers Page")
//      whenIClickOn("Change type of spirits", "Quarterly Spirits Check Your Answers Page")

      Then("I am presented with the Which Of These Spirits Have You Produced Page with new url")
     // thenIAmPresentedWithTheWithNewUrl("Which Of These Spirits Have You Produced Page")
      WhichOfTheseSpiritsHaveYouProducedPage.selectSpiritTypes("Grain spirits")

//      When("I select checkbox Grain spirits on Which Of These Spirits Have You Produced Page")
//      whenICheckboxOn("select", "Grain spirits", "Which Of These Spirits Have You Produced Page")
//
//      And("I click save and continue button on Which Of These Spirits Have You Produced Page")
//      whenIClickSaveAndContinueButtonOn("Which Of These Spirits Have You Produced Page")

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
      //thenIAmPresentedWithThe("Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change other spirits produced")

//      When("I click Change other spirits produced on Quarterly Spirits Check Your Answers Page")
//      whenIClickOn("Change other spirits produced", "Quarterly Spirits Check Your Answers Page")

      Then("I am presented with the Declare Other Spirits Produced Page with new url")
      //thenIAmPresentedWithTheWithNewUrl("Declare Other Spirits Produced Page")
      DeclareOtherSpiritsProducedPage.enterDetails("Test Spirits1")

//      When("I enter Test Spirits1 on Declare Other Spirits Produced Page")
//      whenIEnterOn("Test Spirits1", "Declare Other Spirits Produced Page")
//
//      And("I click save and continue button on Declare Other Spirits Produced Page")
//      whenIClickSaveAndContinueButtonOn("Declare Other Spirits Produced Page")

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
     // thenIAmPresentedWithThe("Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change type of spirits")

//      When("I click Change type of spirits on Quarterly Spirits Check Your Answers Page")
//      whenIClickOn("Change type of spirits", "Quarterly Spirits Check Your Answers Page")

      Then("I am presented with the Which Of These Spirits Have You Produced Page with new url")
     // thenIAmPresentedWithTheWithNewUrl("Which Of These Spirits Have You Produced Page")
      WhichOfTheseSpiritsHaveYouProducedPage.selectSpiritTypes("Other spirits")

      // deselecting Other spirits
//      When("I select checkbox Other spirits on Which Of These Spirits Have You Produced Page")
//      whenICheckboxOn("select", "Other spirits", "Which Of These Spirits Have You Produced Page")

//      And("I click save and continue button on Which Of These Spirits Have You Produced Page")
//      whenIClickSaveAndContinueButtonOn("Which Of These Spirits Have You Produced Page")

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
    //  thenIAmPresentedWithThe("Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.continue()
//
//      When("I click save and continue button on Quarterly Spirits Check Your Answers Page")
//      whenIClickSaveAndContinueButtonOn("Quarterly Spirits Check Your Answers Page")

      Then("I am presented with the Task List Page")
      thenIAmPresentedWithThe("Task List Page")

    }
  }
}
