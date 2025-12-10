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

      When(
        "I click on Tell us if you have delivered or received finished products in duty suspense hyperlink on Task List Page"
      )
      TaskListPage.clickHyperlink("Tell us if you have delivered or received finished products in duty suspense")

      And("I select Yes on Declare Duty Suspended Deliveries Page")
      DeclareDutySuspendedDeliveriesPage.declareDSD(declaringDSD = true)

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

      And(
        "I click Change total net quantity of duty suspended beer on Duty Suspended Deliveries Check Your Answers Page"
      )
      DutySuspendedDeliveriesCheckYourAnswersPage.clickChangeLink("Change total net quantity of duty suspended beer")

      And("I enter new volumes on Duty Suspended Beer Page")
      DutySuspendedBeerPage.enterVolumesInCheckMode()

      And(
        "I click Change total net quantity of pure alcohol in your duty suspended cider on Duty Suspended Deliveries Check Your Answers Page"
      )
      DutySuspendedDeliveriesCheckYourAnswersPage.clickChangeLink(
        "Change total net quantity of pure alcohol in your duty suspended cider"
      )

      And("I enter new volumes on Duty Suspended Cider Page")
      DutySuspendedCiderPage.enterCiderVolumesInCheckMode()

      And(
        "I click Change total net quantity of pure alcohol in your duty suspended wine on Duty Suspended Deliveries Check Your Answers Page"
      )
      DutySuspendedDeliveriesCheckYourAnswersPage.clickChangeLink(
        "Change total net quantity of pure alcohol in your duty suspended wine"
      )

      And("I enter new volumes on Duty Suspended Wine Page")
      DutySuspendedWinePage.enterWineVolumesInCheckMode()

      And(
        "I click Change total net quantity of pure alcohol in your duty suspended spirits on Duty Suspended Deliveries Check Your Answers Page"
      )
      DutySuspendedDeliveriesCheckYourAnswersPage.clickChangeLink(
        "Change total net quantity of pure alcohol in your duty suspended spirits"
      )

      And("I enter new volumes on Duty Suspended Spirits Page")
      DutySuspendedSpiritsPage.enterSpiritsVolumesInCheckMode()

      And(
        "I click Change total net quantity of pure alcohol in your duty suspended other fermented products on Duty Suspended Deliveries Check Your Answers Page"
      )
      DutySuspendedDeliveriesCheckYourAnswersPage.clickChangeLink(
        "Change total net quantity of pure alcohol in your duty suspended other fermented products"
      )

      And("I enter new volumes on Duty Suspended Other Fermented Products Page")
      DutySuspendedOtherFermentedProductsPage.enterOfpVolumesInCheckMode()

      And("I click continue button on Duty Suspended Deliveries Check Your Answers Page")
      DutySuspendedDeliveriesCheckYourAnswersPage.continue()

      Then("I am presented with the Task List Page")
      TaskListPage.checkURL

    }
  }
}
