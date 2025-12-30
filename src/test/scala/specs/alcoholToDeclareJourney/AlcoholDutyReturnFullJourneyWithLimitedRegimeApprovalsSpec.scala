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

      When("I declare beer (tax type 311 only)")
      TaskListPage.clickHyperlink("Tell us if you have alcoholic products to declare")
      DeclareAlcoholDutyQuestionPage.declareAlcohol(true)
      WhatDoYouNeedToDeclareBeerPage.selectRateBands("Beer between 1.3% and 3.4% ABV (tax type code 311)")
      HowMuchYouNeedToDeclareBeerPage.enterDetailsForLimitedRegimeApprovals()
      CheckYourAnswersReturnsBeerPage.continue()
      DutyDueBeerPage.continue()
      TaskListPage.checkURL

      And("I declare no adjustments")
      TaskListPage.clickHyperlink("Tell us if you have adjustments to declare")
      DeclareAdjustmentQuestionPage.declareAdjustments(false)
      TaskListPage.checkURL

      And("I declare duty suspended deliveries")
      TaskListPage.clickHyperlink("Tell us if you have delivered or received finished products in duty suspense")
      DeclareDutySuspendedDeliveriesPage.declareDSD(true)
      DutySuspendedDeliveriesGuidancePage.continue()
      DutySuspendedBeerPage.enterVolumes()
      DutySuspendedDeliveriesCheckYourAnswersPage.continue()
      TaskListPage.checkURL

      And("I submit the return")
      TaskListPage.clickHyperlink("Check duty payable and send your return")
      ReturnSummaryPage.continue()

      Then("I am presented with the Return Submitted Page")
      ReturnSubmittedPage.checkURL

    }
  }
}
