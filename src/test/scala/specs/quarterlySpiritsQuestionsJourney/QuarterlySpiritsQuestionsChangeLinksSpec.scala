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

      When("I click on Tell us about spirits produced in the past three months hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us about spirits produced in the past three months")

      And("I select Yes on Quarterly Spirits Returns Guidance Page")
      QuarterlySpiritsReturnsGuidancePage.declareSpirits(declaringSpirits = true)

      And("I enter 111.11 on Total Of All Spirits Page")
      TotalOfAllSpiritsPage.enterVolume("111.11")

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

      And("I click Change total of all spirits on Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change total of all spirits")

      And("I enter 111.99 on Total Of All Spirits Page in check mode")
      TotalOfAllSpiritsPage.enterNewVolume("111.99")

      And("I click Change Scotch Whisky on Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change Scotch Whisky")

      And("I enter new volumes on Declare Whiskey Page")
      DeclareWhiskeyPage.enterNewVolumes()

      And("I click Change type of spirits on Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change type of spirits")

      And("I select checkbox Grain spirits on Which Of These Spirits Have You Produced Page in check mode")
      WhichOfTheseSpiritsHaveYouProducedPage.selectNewSpiritTypes("Grain spirits")

      And("I click Change other spirits produced on Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change other spirits produced")

      And("I enter Test Spirits1 on Declare Other Spirits Produced Page in check mode")
      DeclareOtherSpiritsProducedPage.enterNewDetails("Test Spirits1")

      And("I click Change type of spirits on Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.clickChangeLink("Change type of spirits")

      And("I deselect checkbox Other spirits on Which Of These Spirits Have You Produced Page in check mode")
      WhichOfTheseSpiritsHaveYouProducedPage.selectNewSpiritTypes("Other spirits")

      And("I click save and continue button on Quarterly Spirits Check Your Answers Page")
      QuarterlySpiritsCheckYourAnswersPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }
  }
}
