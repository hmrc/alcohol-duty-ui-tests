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

package specs.dutySuspendedDeliveriesJourney

import specpage.alcoholDuty.dutySuspendedDeliveries._
import specpage.common.TaskListPage
import specs.BaseSpec
import specs.tags.{AllTests, DutySuspendedDeliveries}
import specsteps.BaseStepDefSteps._

class DutySuspendedDeliveriesSpec extends BaseSpec {

  Feature("Alcohol Duty Return - Duty Suspended Deliveries - Change Link Functionality") {

    Scenario(
      "1. Declare Duty Suspended Deliveries - Verify 'Change' links at Check your answers page",
      AllTests,
      DutySuspendedDeliveries
    ) {
      Given("I start a return")
      loginAndStartReturn("AABCP0000100208")

      When("I declare volumes for duty suspended deliveries")
      TaskListPage.clickHyperlink("Tell us if you have delivered or received finished products in duty suspense")
      DeclareDutySuspendedDeliveriesPage.declareDSD(declaringDSD = true)
      DutySuspendedDeliveriesGuidancePage.continue()
      DutySuspendedBeerPage.enterVolumes()
      DutySuspendedCiderPage.enterVolumes()
      DutySuspendedWinePage.enterVolumes()
      DutySuspendedSpiritsPage.enterVolumes()
      DutySuspendedOtherFermentedProductsPage.enterVolumes()

      And("I change the volumes of duty suspended beer from the Check Your Answers Page")
      DutySuspendedDeliveriesCheckYourAnswersPage.clickChangeLink("Change total net quantity of duty suspended beer")
      DutySuspendedBeerPage.enterVolumesInCheckMode()

      And("I change the volumes of duty suspended cider from the Check Your Answers Page")
      DutySuspendedDeliveriesCheckYourAnswersPage.clickChangeLink(
        "Change total net quantity of pure alcohol in your duty suspended cider"
      )
      DutySuspendedCiderPage.enterCiderVolumesInCheckMode()

      And("I change the volumes of duty suspended wine from the Check Your Answers Page")
      DutySuspendedDeliveriesCheckYourAnswersPage.clickChangeLink(
        "Change total net quantity of pure alcohol in your duty suspended wine"
      )
      DutySuspendedWinePage.enterWineVolumesInCheckMode()

      And("I change the volumes of duty suspended spirits from the Check Your Answers Page")
      DutySuspendedDeliveriesCheckYourAnswersPage.clickChangeLink(
        "Change total net quantity of pure alcohol in your duty suspended spirits"
      )
      DutySuspendedSpiritsPage.enterSpiritsVolumesInCheckMode()

      And("I change the volumes of duty suspended other fermented products from the Check Your Answers Page")
      DutySuspendedDeliveriesCheckYourAnswersPage.clickChangeLink(
        "Change total net quantity of pure alcohol in your duty suspended other fermented products"
      )
      DutySuspendedOtherFermentedProductsPage.enterOfpVolumesInCheckMode()

      And("I click continue button on Duty Suspended Deliveries Check Your Answers Page")
      DutySuspendedDeliveriesCheckYourAnswersPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }
  }
}
