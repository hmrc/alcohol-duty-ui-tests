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

import specpage.alcoholDuty.adjustments.DeclareAdjustmentQuestionPage
import specpage.alcoholDuty.alcoholToDeclare.Beer._
import specpage.alcoholDuty.alcoholToDeclare._
import specpage.alcoholDuty.dutySuspendedDeliveries._
import specpage.common._
import specs.BaseSpec
import specs.tags.{AlcoholToDeclare, AllTests}
import specsteps.BaseStepDefSteps._

class AlcoholDutyReturnFullJourneyWithLimitedRegimeApprovalsSpec extends BaseSpec {

  Feature("Alcohol Duty Returns Journey with Limited Regime Approvals") {

    Scenario("1. Alcohol Duty Returns Journey - user with only Beer regime approval", AllTests, AlcoholToDeclare) {
      Given("I start a return")
      loginAndStartReturn("XMADP0000178208")

      When("I click on Tell us if you have alcoholic products to declare hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Tell us if you have alcoholic products to declare")

      And("I select Yes on Declare Alcohol Duty Question Page")
      DeclareAlcoholDutyQuestionPage.declareAlcohol(true)

      And(
        "I select checkbox Beer between 1.3% and 3.4% ABV (tax type code 311) on What Do You Need To Declare Beer Page"
      )
      WhatDoYouNeedToDeclareBeerPage.selectRateBands("Beer between 1.3% and 3.4% ABV (tax type code 311)")

      And("I enter volumes on the How Much You Need To Declare Beer Page")
      HowMuchYouNeedToDeclareBeerPage.enterDetailsForLimitedRegimeApprovals()

      And("I click save and continue button on Check Your Answers Returns Beer Page")
      CheckYourAnswersReturnsBeerPage.continue()

      And("I click save and continue button on Duty Due Beer Page")
      DutyDueBeerPage.continue()

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

      And("I select Yes on Declare Duty Suspended Deliveries Page")
      DeclareDutySuspendedDeliveriesPage.declareDSD(true)

      And("I click continue button on Duty Suspended Deliveries Guidance Page")
      DutySuspendedDeliveriesGuidancePage.continue()

      And("I enter volumes on Duty Suspended Beer Page")
      DutySuspendedBeerPage.enterVolumes()

      And("I click continue button on Duty Suspended Deliveries Check Your Answers Page")
      DutySuspendedDeliveriesCheckYourAnswersPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

      When("I click on Check duty payable and send your return hyperlink on Task List Page")
      TaskListPage.clickHyperlink("Check duty payable and send your return")

      When("I click on Agree and send return button on Return Summary Page")
      ReturnSummaryPage.continue()

      Then("I am presented with the Return Submitted Page")
      ReturnSubmittedPage.checkURL

    }
  }
}
