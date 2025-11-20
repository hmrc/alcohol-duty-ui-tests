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

import specs.BaseSpec
import specs.tags.{AlcoholToDeclare, AllTests, ZapTests}
import specsteps.BaseStepDefSteps._

class AlcoholDutyReturnFullJourneyWithLimitedRegimeApprovalsSpec extends BaseSpec {

  Feature("Alcohol Duty Returns Journey with Limited Regime Approvals") {

    Scenario(
      "1. Alcohol Duty Returns Journey - user with only Beer regime approval",
      AllTests,
      AlcoholToDeclare,
      ZapTests
    ) {
      Given("I start a return")
      loginAndStartReturn("XMADP0000178208")

      When("I click on Tell us if you have alcoholic products to declare hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Tell us if you have alcoholic products to declare", "Task List Page")

      Then("I am presented with the Declare Alcohol Duty Question Page")
      thenIAmPresentedWithThe("Declare Alcohol Duty Question Page")

      When("I select radio button Yes on Declare Alcohol Duty Question Page")
      whenISelectRadioButtonOn("Yes", "Declare Alcohol Duty Question Page")

      And("I click save and continue button on Declare Alcohol Duty Question Page")
      whenIClickSaveAndContinueButtonOn("Declare Alcohol Duty Question Page")

      Then("I am presented with the What Do You Need To Declare Beer Page")
      thenIAmPresentedWithThe("What Do You Need To Declare Beer Page")

      When(
        "I select checkbox Beer between 1.3% and 3.4% ABV (tax type code 311) on What Do You Need To Declare Beer Page"
      )
      whenICheckboxOn(
        "select",
        "Beer between 1.3% and 3.4% ABV (tax type code 311)",
        "What Do You Need To Declare Beer Page"
      )

      And("I click save and continue button on What Do You Need To Declare Beer Page")
      whenIClickSaveAndContinueButtonOn("What Do You Need To Declare Beer Page")

      Then("I am presented with the How Much You Need To Declare Beer Page")
      thenIAmPresentedWithThe("How Much You Need To Declare Beer Page")

      When(
        "I enter 945.55 for Standard beer between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Beer Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "945.55",
        "Standard beer between 1.3% and 3.4% ABV - Total litres",
        "How Much You Need To Declare Beer Page",
        "first"
      )

      And(
        "I enter 55.5555 for Standard beer between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Beer Page at first input box"
      )
      whenIEnterForOnAtInputBox(
        "55.5555",
        "Standard beer between 1.3% and 3.4% ABV - Pure alcohol",
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
      thenIAmPresentedWithThe("Task List Page")

      When("I click on Tell us if you have adjustments to declare hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Tell us if you have adjustments to declare", "Task List Page")

      Then("I am presented with the Declare Adjustment Question Page")
      thenIAmPresentedWithThe("Declare Adjustment Question Page")

      When("I select radio button No on Declare Adjustment Question Page")
      whenISelectRadioButtonOn("No", "Declare Adjustment Question Page")

      And("I click save and continue button on Declare Adjustment Question Page")
      whenIClickSaveAndContinueButtonOn("Declare Adjustment Question Page")

      Then("I am presented with the Task List Page")
      thenIAmPresentedWithThe("Task List Page")

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

      And("I enter 150.5500 for Pure Alcohol In Beer on Duty Suspended Beer Page")
      whenIEnterForOn("150.5500", "Pure Alcohol In Beer", "Duty Suspended Beer Page")

      And("I click save and continue button on Duty Suspended Beer Page")
      whenIClickSaveAndContinueButtonOn("Duty Suspended Beer Page")

      Then("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
      thenIAmPresentedWithThe("Duty Suspended Deliveries Check Your Answers Page")

      When("I click continue button on Duty Suspended Deliveries Check Your Answers Page")
      whenIClickContinueButtonOn("Duty Suspended Deliveries Check Your Answers Page")

      Then("I am presented with the Task List Page")
      thenIAmPresentedWithThe("Task List Page")

      When("I click on Check duty payable and send your return hyperlink on Task List Page")
      whenIClickOnHyperlinkOn("Check duty payable and send your return", "Task List Page")

      Then("I am presented with the Return Summary Page")
      thenIAmPresentedWithThe("Return Summary Page")

      When("I click on Agree and send return button Return Summary Page")
      whenIClickOnAgreeAndSendReturnButton("Return Summary Page")

      Then("I am presented with the Return Submitted Page")
      thenIAmPresentedWithThe("Return Submitted Page")

    }
  }
}
