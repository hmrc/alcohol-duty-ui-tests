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

import specs.BaseSpec
import specs.tags.{AllTests, DutySuspendedDeliveries, ZapTests}
import specsteps.BaseStepDefSteps._

class DutySuspendedDeliveriesSpec extends BaseSpec {

  Feature("Alcohol Duty Return - Duty Suspended Deliveries - Change Link Functionality") {

    Scenario(
      "1. Declare Duty Suspended Deliveries - Verify 'Change' links at Check your answers page",
      AllTests,
      DutySuspendedDeliveries,
      ZapTests
    ) {
      Given("I start a return")
      loginAndStartReturn("AABCP0000100208")

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

      When(
        "I click Change total net quantity of duty suspended beer on Duty Suspended Deliveries Check Your Answers Page"
      )
      whenIClickOn(
        "Change total net quantity of duty suspended beer",
        "Duty Suspended Deliveries Check Your Answers Page"
      )

      Then("I am presented with the Duty Suspended Beer Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Duty Suspended Beer Page")

      When("I enter 3000.75 for Total Beer on Duty Suspended Beer Page")
      whenIEnterForOn("3000.75", "Total Beer", "Duty Suspended Beer Page")

      And("I enter 250.55 for Pure Alcohol In Beer on Duty Suspended Beer Page")
      whenIEnterForOn("250.55", "Pure Alcohol In Beer", "Duty Suspended Beer Page")

      And("I click save and continue button on Duty Suspended Beer Page")
      whenIClickSaveAndContinueButtonOn("Duty Suspended Beer Page")

      Then("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
      thenIAmPresentedWithThe("Duty Suspended Deliveries Check Your Answers Page")

      When(
        "I click Change total net quantity of pure alcohol in your duty suspended cider on Duty Suspended Deliveries Check Your Answers Page"
      )
      whenIClickOn(
        "Change total net quantity of pure alcohol in your duty suspended cider",
        "Duty Suspended Deliveries Check Your Answers Page"
      )

      Then("I am presented with the Duty Suspended Cider Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Duty Suspended Cider Page")

      When("I enter 1500.35 for Total Cider on Duty Suspended Cider Page")
      whenIEnterForOn("1500.35", "Total Cider", "Duty Suspended Cider Page")

      And("I enter 300.55 for Pure Alcohol In Cider on Duty Suspended Cider Page")
      whenIEnterForOn("300.55", "Pure Alcohol In Cider", "Duty Suspended Cider Page")

      And("I click save and continue button on Duty Suspended Cider Page")
      whenIClickSaveAndContinueButtonOn("Duty Suspended Cider Page")

      Then("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
      thenIAmPresentedWithThe("Duty Suspended Deliveries Check Your Answers Page")

      When(
        "I click Change total net quantity of pure alcohol in your duty suspended wine on Duty Suspended Deliveries Check Your Answers Page"
      )
      whenIClickOn(
        "Change total net quantity of pure alcohol in your duty suspended wine",
        "Duty Suspended Deliveries Check Your Answers Page"
      )

      Then("I am presented with the Duty Suspended Wine Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Duty Suspended Wine Page")

      When("I enter 2800.35 for Total Wine on Duty Suspended Wine Page")
      whenIEnterForOn("2800.35", "Total Wine", "Duty Suspended Wine Page")

      And("I enter 160.65 for Pure Alcohol In Wine on Duty Suspended Wine Page")
      whenIEnterForOn("160.65", "Pure Alcohol In Wine", "Duty Suspended Wine Page")

      And("I click save and continue button on Duty Suspended Wine Page")
      whenIClickSaveAndContinueButtonOn("Duty Suspended Wine Page")

      Then("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
      thenIAmPresentedWithThe("Duty Suspended Deliveries Check Your Answers Page")

      When(
        "I click Change total net quantity of pure alcohol in your duty suspended spirits on Duty Suspended Deliveries Check Your Answers Page"
      )
      whenIClickOn(
        "Change total net quantity of pure alcohol in your duty suspended spirits",
        "Duty Suspended Deliveries Check Your Answers Page"
      )

      Then("I am presented with the Duty Suspended Spirits Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Duty Suspended Spirits Page")

      When("I enter 7800.35 for Total Spirits on Duty Suspended Spirits Page")
      whenIEnterForOn("7800.35", "Total Spirits", "Duty Suspended Spirits Page")

      And("I enter 460.55 for Pure Alcohol In Spirits on Duty Suspended Spirits Page")
      whenIEnterForOn("460.55", "Pure Alcohol In Spirits", "Duty Suspended Spirits Page")

      And("I click save and continue button on Duty Suspended Spirits Page")
      whenIClickSaveAndContinueButtonOn("Duty Suspended Spirits Page")

      Then("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
      thenIAmPresentedWithThe("Duty Suspended Deliveries Check Your Answers Page")

      When(
        "I click Change total net quantity of pure alcohol in your duty suspended other fermented products on Duty Suspended Deliveries Check Your Answers Page"
      )
      whenIClickOn(
        "Change total net quantity of pure alcohol in your duty suspended other fermented products",
        "Duty Suspended Deliveries Check Your Answers Page"
      )

      Then("I am presented with the Duty Suspended Other Fermented Products Page with new url")
      thenIAmPresentedWithTheWithNewUrl("Duty Suspended Other Fermented Products Page")

      When("I enter 8800.35 for Total Other Fermented Products on Duty Suspended Other Fermented Products Page")
      whenIEnterForOn("8800.35", "Total Other Fermented Products", "Duty Suspended Other Fermented Products Page")

      And("I enter 560.65 for Pure Alcohol In Other Fermented Products on Duty Suspended Other Fermented Products Page")
      whenIEnterForOn(
        "560.65",
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
      thenIAmPresentedWithThe("Task List Page")

    }
  }
}
