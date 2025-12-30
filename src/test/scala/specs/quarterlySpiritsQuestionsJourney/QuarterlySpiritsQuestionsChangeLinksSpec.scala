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

import specpage.alcoholDuty.quarterlySpiritsQuestion._
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

      When("I declare quarterly spirits (including other spirits)")
      TaskListPage.clickHyperlink("Tell us about spirits produced in the past three months")
      QuarterlySpiritsReturnsGuidancePage.declareSpirits(declaringSpirits = true)
      TotalOfAllSpiritsPage.enterVolume("111.11")
      DeclareWhiskeyPage.enterVolumes()
      WhichOfTheseSpiritsHaveYouProducedPage.selectSpiritTypes(
        "Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits"
      )
      DeclareOtherSpiritsProducedPage.enterDetails("Test Spirits")

      And("I change the total of all spirits from the Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change total of all spirits")
      TotalOfAllSpiritsPage.enterNewVolume("111.99")

      And("I change the volume of Scotch Whisky from the Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change Scotch Whisky")
      DeclareWhiskeyPage.enterNewVolumes()

      And("I add Grain spirits to the spirit types from the Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change type of spirits")
      WhichOfTheseSpiritsHaveYouProducedPage.selectNewSpiritTypes("Grain spirits")

      And("I change the other spirits produced from the Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change other spirits produced")
      DeclareOtherSpiritsProducedPage.enterNewDetails("Test Spirits1")

      And("I remove Other spirits from the spirit types from the Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change type of spirits")
      WhichOfTheseSpiritsHaveYouProducedPage.selectNewSpiritTypes("Other spirits")

      And("I click save and continue button on Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }
  }
}
