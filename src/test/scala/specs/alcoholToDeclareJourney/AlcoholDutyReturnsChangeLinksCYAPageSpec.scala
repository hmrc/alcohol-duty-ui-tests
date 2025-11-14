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

import specs.BaseSpec
import specsteps.BaseStepDefSteps._

class AlcoholDutyReturnsChangeLinksCYAPageSpec extends BaseSpec {

  // TODO

  Feature("Alcohol Duty Returns Journey - Change Links - CYA Page") {

    Scenario("Beer- Alcohol Duty Returns Journey - When Multiple SPR is set to 'Yes' - Change link functionality") {
      When("I click on Declare beer hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the What Do You Need To Declare Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select checkbox Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR) on What Do You Need To Declare Beer Page")
        // ⚠️ No step-def match found for: I select checkbox Beer between 1.3% and 3.4% ABV (tax type code 311),Beer between 3.5% and 8.4% ABV (tax type code 321),Beer between 8.5% and 22% ABV (tax type code 331),Beer at or above 22.1% ABV (tax type code 341),Beer between 1.3% and 3.4% ABV (tax type code 351),Beer between 3.5% and 8.4% ABV (tax type code 356),Beer between 1.3% and 3.4% ABV (tax type code 361 SPR),Beer between 3.5% and 8.4% ABV (tax type code 366 SPR),Beer between 1.3% and 3.4% ABV (tax type code 371 SPR),Beer between 3.5% and 8.4% ABV (tax type code 376 SPR) on What Do You Need To Declare Beer Page

      And("I click save and continue button on What Do You Need To Declare Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the How Much You Need To Declare Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 945.55 for Standard beer between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Beer Page at first input box")
        // ⚠️ No step-def match found for: I enter 945.55 for Standard beer between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Beer Page at first input box

      And("I enter 55.5500 for Standard beer between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Beer Page at first input box")
        // ⚠️ No step-def match found for: I enter 55.5500 for Standard beer between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Beer Page at first input box

      And("I enter 898.34 for Standard beer between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Beer Page at second input box")
        // ⚠️ No step-def match found for: I enter 898.34 for Standard beer between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Beer Page at second input box

      And("I enter 77.5500 for Standard beer between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Beer Page at second input box")
        // ⚠️ No step-def match found for: I enter 77.5500 for Standard beer between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Beer Page at second input box

      And("I enter 667.32 for Standard beer between 8.5% and 22% ABV - Total litres on How Much You Need To Declare Beer Page at third input box")
        // ⚠️ No step-def match found for: I enter 667.32 for Standard beer between 8.5% and 22% ABV - Total litres on How Much You Need To Declare Beer Page at third input box

      And("I enter 66.3400 for Standard beer between 8.5% and 22% ABV - Pure alcohol on How Much You Need To Declare Beer Page at third input box")
        // ⚠️ No step-def match found for: I enter 66.3400 for Standard beer between 8.5% and 22% ABV - Pure alcohol on How Much You Need To Declare Beer Page at third input box

      And("I enter 999.19 for Standard beer at or above 22.1% ABV - Total litres on How Much You Need To Declare Beer Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 999.19 for Standard beer at or above 22.1% ABV - Total litres on How Much You Need To Declare Beer Page at fourth input box

      And("I enter 99.1300 for Standard beer at or above 22.1% ABV - Pure alcohol on How Much You Need To Declare Beer Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 99.1300 for Standard beer at or above 22.1% ABV - Pure alcohol on How Much You Need To Declare Beer Page at fourth input box

      And("I enter 887.54 for Draught beer between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Beer Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 887.54 for Draught beer between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Beer Page at fifth input box

      And("I enter 66.4400 for Draught beer between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Beer Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 66.4400 for Draught beer between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Beer Page at fifth input box

      And("I enter 699.45 for Draught beer between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Beer Page at sixth input box")
        // ⚠️ No step-def match found for: I enter 699.45 for Draught beer between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Beer Page at sixth input box

      And("I enter 66.8900 for Draught beer between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Beer Page at sixth input box")
        // ⚠️ No step-def match found for: I enter 66.8900 for Draught beer between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Beer Page at sixth input box

      And("I click save and continue button on How Much You Need To Declare Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Do You Have Multiple Small Producer Relief Duty Rate Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Do You Have Multiple Small Producer Relief Duty Rate Beer Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Do You Have Multiple Small Producer Relief Duty Rate Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Multiple Small Producer Relief Rate Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Non-draught beer between 1.3% and 3.4% ABV (361 SPR) on Multiple Small Producer Relief Rate Beer Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I enter 9999.99 for Total litres on Multiple Small Producer Relief Rate Beer Page")
        // ⚠️ No step-def match found for: I enter 9999.99 for Total litres on Multiple Small Producer Relief Rate Beer Page

      And("I enter 89.9900 for Litres of pure alcohol on Multiple Small Producer Relief Rate Beer Page")
        // ⚠️ No step-def match found for: I enter 89.9900 for Litres of pure alcohol on Multiple Small Producer Relief Rate Beer Page

      And("I enter 19 for Duty rate on Multiple Small Producer Relief Rate Beer Page")
        // ⚠️ No step-def match found for: I enter 19 for Duty rate on Multiple Small Producer Relief Rate Beer Page

      And("I click save and continue button on Multiple Small Producer Relief Rate Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers SPR Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Description on Check Your Answers SPR Beer Page")
        // ⚠️ No step-def match found for: I click Change Description on Check Your Answers SPR Beer Page

      Then("I am presented with the Multiple Small Producer Relief Rate Beer Page with url suffix as #taxType")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithUrlSuffixAs() [0.57] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with url suffix as {string}
        // thenIAmPresentedWithTheWithNewUrl() [0.54] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url
        // thenIAmPresentedWithTheWithExistingUrlSuffixAs() [0.52] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with existing url suffix as {string}

      And("I click save and continue button on Multiple Small Producer Relief Rate Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers SPR Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Description on Check Your Answers SPR Beer Page")
        // ⚠️ No step-def match found for: I click Change Description on Check Your Answers SPR Beer Page

      Then("I am presented with the Multiple Small Producer Relief Rate Beer Page with url suffix as #taxType")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithUrlSuffixAs() [0.57] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with url suffix as {string}
        // thenIAmPresentedWithTheWithNewUrl() [0.54] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url
        // thenIAmPresentedWithTheWithExistingUrlSuffixAs() [0.52] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with existing url suffix as {string}

      When("I select radio button Non-draught beer between 3.5% and 8.4% ABV (366 SPR) on Multiple Small Producer Relief Rate Beer Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Multiple Small Producer Relief Rate Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers SPR Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Check Your Answers SPR Beer Page")
        whenIClickContinueButtonO("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Multiple SPR List Question Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change hyperlink on Multiple SPR List Question Beer Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Multiple Small Producer Relief Rate Beer Page with existing url suffix as ?index=0")
        thenIAmPresentedWithTheWithExistingUrlSuffixAs("", "")  // auto-chosen (score=0.68, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}
        // thenIAmPresentedWithTheWithUrlSuffixAs() [0.57] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with url suffix as {string}
        // thenIAmPresentedWithTheWithNewUrl() [0.54] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Draught beer between 1.3% and 3.4% ABV (371 SPR) on Multiple Small Producer Relief Rate Beer Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I enter 8888.88 for Total litres on Multiple Small Producer Relief Rate Beer Page")
        // ⚠️ No step-def match found for: I enter 8888.88 for Total litres on Multiple Small Producer Relief Rate Beer Page

      And("I enter 88.8800 for Litres of pure alcohol on Multiple Small Producer Relief Rate Beer Page")
        // ⚠️ No step-def match found for: I enter 88.8800 for Litres of pure alcohol on Multiple Small Producer Relief Rate Beer Page

      And("I enter 22 for Duty rate on Multiple Small Producer Relief Rate Beer Page")
        // ⚠️ No step-def match found for: I enter 22 for Duty rate on Multiple Small Producer Relief Rate Beer Page

      And("I click save and continue button on Multiple Small Producer Relief Rate Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers SPR Beer Page with url suffix as ?index=0")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithUrlSuffixAs() [0.57] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with url suffix as {string}
        // thenIAmPresentedWithTheWithNewUrl() [0.54] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url
        // thenIAmPresentedWithTheWithExistingUrlSuffixAs() [0.52] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with existing url suffix as {string}

      When("I click continue button on Check Your Answers SPR Beer Page")
        whenIClickContinueButtonO("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Multiple SPR List Question Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button No on Multiple SPR List Question Beer Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Multiple SPR List Question Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the You Have Some Missing Details Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      And("I select radio button Delete these declarations from this return on You Have Some Missing Details Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      When("I click save and continue button on You Have Some Missing Details Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Delete Alcohol Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      And("I select radio button Yes on Delete Alcohol Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      When("I click confirm and continue button on Delete Alcohol Page")
        whenIClickConfirmAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickSaveAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click save and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

    }

    Scenario("Cider- Alcohol Duty Returns Journey - When Multiple SPR is set to 'No' - Change link functionality") {
      When("I click on Declare cider hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the What Do You Need To Declare Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select checkbox Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR),Cider between 1.3% and 3.4% ABV (tax type code 372 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR) on What Do You Need To Declare Cider Page")
        // ⚠️ No step-def match found for: I select checkbox Cider between 1.3% and 3.4% ABV (tax type code 312),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322),Sparkling cider between 5.6% and 8.4% ABV (tax type code 324),Cider between 1.3% and 3.4% ABV (tax type code 352),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357),Sparkling cider between 5.6% and 8.4% ABV (tax type code 359),Cider between 1.3% and 3.4% ABV (tax type code 362 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 369 SPR),Cider between 1.3% and 3.4% ABV (tax type code 372 SPR),Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377 SPR),Sparkling cider between 5.6% and 8.4% ABV (tax type code 379 SPR) on What Do You Need To Declare Cider Page

      And("I click save and continue button on What Do You Need To Declare Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the How Much You Need To Declare Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 789.44 for Standard cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 789.44 for Standard cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at first input box

      And("I enter 43.4400 for Standard cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 43.4400 for Standard cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at first input box

      And("I enter 898.12 for Standard cider between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at second input box")
        // ⚠️ No step-def match found for: I enter 898.12 for Standard cider between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at second input box

      And("I enter 22.2200 for Standard cider between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at second input box")
        // ⚠️ No step-def match found for: I enter 22.2200 for Standard cider between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at second input box

      And("I enter 999.99 for Standard sparkling between 5.6% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 999.99 for Standard sparkling between 5.6% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at third input box

      And("I enter 99.9900 for Standard sparkling between 5.6% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 99.9900 for Standard sparkling between 5.6% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at third input box

      And("I enter 787.77 for Draught cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 787.77 for Draught cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at fourth input box

      And("I enter 33.2100 for Draught cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 33.2100 for Draught cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at fourth input box

      And("I enter 889.12 for Draught cider between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 889.12 for Draught cider between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at fifth input box

      And("I enter 22.4500 for Draught cider between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 22.4500 for Draught cider between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at fifth input box

      And("I enter 888.88 for Draught sparkling cider between 5.6% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at sixth input box")
        // ⚠️ No step-def match found for: I enter 888.88 for Draught sparkling cider between 5.6% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at sixth input box

      And("I enter 888.8800 for Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at sixth input box")
        // ⚠️ No step-def match found for: I enter 888.8800 for Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at sixth input box

      And("I click save and continue button on How Much You Need To Declare Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Do You Have Multiple Small Producer Relief Duty Rate Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button No on Do You Have Multiple Small Producer Relief Duty Rate Cider Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Do You Have Multiple Small Producer Relief Duty Rate Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Single Small Producer Relief Rate Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 656.66 for Non-draught cider between 1.3% and 3.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 656.66 for Non-draught cider between 1.3% and 3.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at first input box

      And("I enter 66.6600 for Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 66.6600 for Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at first input box

      And("I enter 14 for Non-draught cider between 1.3% and 3.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 14 for Non-draught cider between 1.3% and 3.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at first input box

      And("I enter 999.99 for Non-draught cider between 3.5% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at second input box")
        // ⚠️ No step-def match found for: I enter 999.99 for Non-draught cider between 3.5% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at second input box

      And("I enter 98.9900 for Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at second input box")
        // ⚠️ No step-def match found for: I enter 98.9900 for Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at second input box

      And("I enter 12.45 for Non-draught cider between 3.5% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at second input box")
        // ⚠️ No step-def match found for: I enter 12.45 for Non-draught cider between 3.5% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at second input box

      And("I enter 6666.66 for Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 6666.66 for Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at third input box

      And("I enter 666.6600 for Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 666.6600 for Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at third input box

      And("I enter 36 for Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 36 for Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at third input box

      And("I enter 887.21 for Draught cider between 1.3% and 3.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 887.21 for Draught cider between 1.3% and 3.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at fourth input box

      And("I enter 45.5600 for Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 45.5600 for Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at fourth input box

      And("I enter 16 for Draught cider between 1.3% and 3.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 16 for Draught cider between 1.3% and 3.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at fourth input box

      And("I enter 653.11 for Draught cider between 3.5% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 653.11 for Draught cider between 3.5% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at fifth input box

      And("I enter 33.3300 for Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 33.3300 for Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at fifth input box

      And("I enter 18 for Draught cider between 3.5% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 18 for Draught cider between 3.5% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at fifth input box

      And("I enter 777.77 for Draught sparkling cider between 5.6% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at sixth input box")
        // ⚠️ No step-def match found for: I enter 777.77 for Draught sparkling cider between 5.6% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at sixth input box

      And("I enter 77.7700 for Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at sixth input box")
        // ⚠️ No step-def match found for: I enter 77.7700 for Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at sixth input box

      And("I enter 17 for Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at sixth input box")
        // ⚠️ No step-def match found for: I enter 17 for Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at sixth input box

      And("I click save and continue button on Single Small Producer Relief Rate Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Cider to declare on Check Your Answers Returns Cider Page")
        // ⚠️ No step-def match found for: I click Change Cider to declare on Check Your Answers Returns Cider Page

      Then("I am presented with the What Do You Need To Declare Cider Page with new url")
        thenIAmPresentedWithTheWithNewUrl("")  // auto-chosen (score=0.62, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I click save and continue button on What Do You Need To Declare Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Cider to declare on Check Your Answers Returns Cider Page")
        // ⚠️ No step-def match found for: I click Change Cider to declare on Check Your Answers Returns Cider Page

      Then("I am presented with the What Do You Need To Declare Cider Page with new url")
        thenIAmPresentedWithTheWithNewUrl("")  // auto-chosen (score=0.62, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I unselect checkbox Sparkling cider between 5.6% and 8.4% ABV (tax type code 359) on What Do You Need To Declare Cider Page")
        // ⚠️ No step-def match found for: I unselect checkbox Sparkling cider between 5.6% and 8.4% ABV (tax type code 359) on What Do You Need To Declare Cider Page

      And("I click save and continue button on What Do You Need To Declare Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the How Much You Need To Declare Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 789.44 for Standard cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 789.44 for Standard cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at first input box

      And("I enter 43.4400 for Standard cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 43.4400 for Standard cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at first input box

      And("I enter 898.12 for Standard cider between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at second input box")
        // ⚠️ No step-def match found for: I enter 898.12 for Standard cider between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at second input box

      And("I enter 22.2200 for Standard cider between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at second input box")
        // ⚠️ No step-def match found for: I enter 22.2200 for Standard cider between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at second input box

      And("I enter 999.99 for Standard sparkling between 5.6% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 999.99 for Standard sparkling between 5.6% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at third input box

      And("I enter 99.9900 for Standard sparkling between 5.6% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 99.9900 for Standard sparkling between 5.6% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at third input box

      And("I enter 787.77 for Draught cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 787.77 for Draught cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at fourth input box

      And("I enter 33.2100 for Draught cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 33.2100 for Draught cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at fourth input box

      And("I enter 889.12 for Draught cider between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 889.12 for Draught cider between 3.5% and 8.4% ABV - Total litres on How Much You Need To Declare Cider Page at fifth input box

      And("I enter 22.4500 for Draught cider between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 22.4500 for Draught cider between 3.5% and 8.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at fifth input box

      And("I click save and continue button on How Much You Need To Declare Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Do You Have Multiple Small Producer Relief Duty Rate Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button No on Do You Have Multiple Small Producer Relief Duty Rate Cider Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Do You Have Multiple Small Producer Relief Duty Rate Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Single Small Producer Relief Rate Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 656.66 for Non-draught cider between 1.3% and 3.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 656.66 for Non-draught cider between 1.3% and 3.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at first input box

      And("I enter 66.6600 for Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 66.6600 for Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at first input box

      And("I enter 14 for Non-draught cider between 1.3% and 3.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 14 for Non-draught cider between 1.3% and 3.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at first input box

      And("I enter 999.99 for Non-draught cider between 3.5% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at second input box")
        // ⚠️ No step-def match found for: I enter 999.99 for Non-draught cider between 3.5% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at second input box

      And("I enter 98.9900 for Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at second input box")
        // ⚠️ No step-def match found for: I enter 98.9900 for Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at second input box

      And("I enter 12.45 for Non-draught cider between 3.5% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at second input box")
        // ⚠️ No step-def match found for: I enter 12.45 for Non-draught cider between 3.5% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at second input box

      And("I enter 6666.66 for Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 6666.66 for Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at third input box

      And("I enter 666.6600 for Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 666.6600 for Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at third input box

      And("I enter 36 for Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 36 for Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at third input box

      And("I enter 887.21 for Draught cider between 1.3% and 3.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 887.21 for Draught cider between 1.3% and 3.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at fourth input box

      And("I enter 45.5600 for Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 45.5600 for Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at fourth input box

      And("I enter 16 for Draught cider between 1.3% and 3.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at fourth input box")
        // ⚠️ No step-def match found for: I enter 16 for Draught cider between 1.3% and 3.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at fourth input box

      And("I enter 653.11 for Draught cider between 3.5% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 653.11 for Draught cider between 3.5% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at fifth input box

      And("I enter 33.3300 for Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 33.3300 for Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at fifth input box

      And("I enter 18 for Draught cider between 3.5% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at fifth input box")
        // ⚠️ No step-def match found for: I enter 18 for Draught cider between 3.5% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at fifth input box

      And("I enter 777.77 for Draught sparkling cider between 5.6% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at sixth input box")
        // ⚠️ No step-def match found for: I enter 777.77 for Draught sparkling cider between 5.6% and 8.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at sixth input box

      And("I enter 77.7700 for Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at sixth input box")
        // ⚠️ No step-def match found for: I enter 77.7700 for Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at sixth input box

      And("I enter 17 for Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at sixth input box")
        // ⚠️ No step-def match found for: I enter 17 for Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at sixth input box

      And("I click save and continue button on Single Small Producer Relief Rate Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Cider duty on Check Your Answers Returns Cider Page")
        // ⚠️ No step-def match found for: I click Change Cider duty on Check Your Answers Returns Cider Page

      Then("I am presented with the How Much You Need To Declare Cider Page with new url")
        thenIAmPresentedWithTheWithNewUrl("")  // auto-chosen (score=0.62, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      And("I click save and continue button on How Much You Need To Declare Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Cider duty on Check Your Answers Returns Cider Page")
        // ⚠️ No step-def match found for: I click Change Cider duty on Check Your Answers Returns Cider Page

      Then("I am presented with the How Much You Need To Declare Cider Page with new url")
        thenIAmPresentedWithTheWithNewUrl("")  // auto-chosen (score=0.62, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      When("I enter 999.99 for Standard cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 999.99 for Standard cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at first input box

      And("I enter 99.9900 for Standard cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 99.9900 for Standard cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at first input box

      And("I click save and continue button on How Much You Need To Declare Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Cider eligible for Small Producer Relief on Check Your Answers Returns Cider Page")
        // ⚠️ No step-def match found for: I click Change Cider eligible for Small Producer Relief on Check Your Answers Returns Cider Page

      Then("I am presented with the Single Small Producer Relief Rate Cider Page with new url")
        thenIAmPresentedWithTheWithNewUrl("")  // auto-chosen (score=0.62, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      And("I click save and continue button on Single Small Producer Relief Rate Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Cider eligible for Small Producer Relief on Check Your Answers Returns Cider Page")
        // ⚠️ No step-def match found for: I click Change Cider eligible for Small Producer Relief on Check Your Answers Returns Cider Page

      Then("I am presented with the Single Small Producer Relief Rate Cider Page with new url")
        thenIAmPresentedWithTheWithNewUrl("")  // auto-chosen (score=0.62, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithThe() [0.58] (BaseStepDefSteps.scala) pattern: I am presented with the {string}

      And("I enter 777.77 for Draught cider between 1.3% and 3.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 777.77 for Draught cider between 1.3% and 3.4% ABV - Total litres on Single Small Producer Relief Rate Cider Page at third input box

      And("I enter 77.7700 for Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 77.7700 for Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres on Single Small Producer Relief Rate Cider Page at third input box

      And("I enter 7.7 for Draught cider between 1.3% and 3.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at third input box")
        // ⚠️ No step-def match found for: I enter 7.7 for Draught cider between 1.3% and 3.4% ABV - SPR Rate on Single Small Producer Relief Rate Cider Page at third input box

      And("I click save and continue button on Single Small Producer Relief Rate Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Check Your Answers Returns Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Duty Due Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on change link 3 on Duty Due Cider Page for alcohol type Cider")
        andIClickOnChangeLinkOnForAlcoholType(0, "", "")  // auto-chosen (score=0.52, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Check Your Answers Returns Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Duty Due Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on change link 4 on Duty Due Cider Page for alcohol type Cider")
        andIClickOnChangeLinkOnForAlcoholType(0, "", "")  // auto-chosen (score=0.52, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Check Your Answers Returns Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Duty Due Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

    }

    Scenario("To verify the change link functionalities from the Return Summary Page") {
      When("I click on Declare beer hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the What Do You Need To Declare Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select checkbox Beer at or above 22.1% ABV (tax type code 341) on What Do You Need To Declare Beer Page")
        // ⚠️ No step-def match found for: I select checkbox Beer at or above 22.1% ABV (tax type code 341) on What Do You Need To Declare Beer Page

      And("I click save and continue button on What Do You Need To Declare Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the How Much You Need To Declare Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      And("I enter 999.19 for Standard beer at or above 22.1% ABV - Total litres on How Much You Need To Declare Beer Page at first input box")
        // ⚠️ No step-def match found for: I enter 999.19 for Standard beer at or above 22.1% ABV - Total litres on How Much You Need To Declare Beer Page at first input box

      And("I enter 99.1300 for Standard beer at or above 22.1% ABV - Pure alcohol on How Much You Need To Declare Beer Page at first input box")
        // ⚠️ No step-def match found for: I enter 99.1300 for Standard beer at or above 22.1% ABV - Pure alcohol on How Much You Need To Declare Beer Page at first input box

      And("I click save and continue button on How Much You Need To Declare Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Check Your Answers Returns Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Duty Due Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Duty Due Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Declare cider hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the What Do You Need To Declare Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select checkbox Cider between 1.3% and 3.4% ABV (tax type code 312) on What Do You Need To Declare Cider Page")
        // ⚠️ No step-def match found for: I select checkbox Cider between 1.3% and 3.4% ABV (tax type code 312) on What Do You Need To Declare Cider Page

      And("I click save and continue button on What Do You Need To Declare Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the How Much You Need To Declare Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 789.44 for Standard cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 789.44 for Standard cider between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Cider Page at first input box

      And("I enter 43.4400 for Standard cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at first input box")
        // ⚠️ No step-def match found for: I enter 43.4400 for Standard cider between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Cider Page at first input box

      And("I click save and continue button on How Much You Need To Declare Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Check Your Answers Returns Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Duty Due Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Duty Due Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Declare wine hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Declaring Your Wine For Duty")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      And("I click continue button on Declaring Your Wine For Duty")
        whenIClickContinueButtonO("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the What Do You Need To Declare Wine Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select checkbox Wine between 1.3% and 3.4% ABV (tax type code 313) on What Do You Need To Declare Wine Page")
        // ⚠️ No step-def match found for: I select checkbox Wine between 1.3% and 3.4% ABV (tax type code 313) on What Do You Need To Declare Wine Page

      And("I click save and continue button on What Do You Need To Declare Wine Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the How Much You Need To Declare Wine Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 1234.55 for Standard wine between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Wine Page at first input box")
        // ⚠️ No step-def match found for: I enter 1234.55 for Standard wine between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Wine Page at first input box

      And("I enter 35.5500 for Standard wine between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Wine Page at first input box")
        // ⚠️ No step-def match found for: I enter 35.5500 for Standard wine between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Wine Page at first input box

      And("I click save and continue button on How Much You Need To Declare Wine Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Wine Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Check Your Answers Returns Wine Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Duty Due Wine Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Duty Due Wine Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Declare spirits hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the What Do You Need To Declare Spirits Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select checkbox Spirits between 1.3% and 3.4% ABV (tax type code 315) on What Do You Need To Declare Spirits Page")
        // ⚠️ No step-def match found for: I select checkbox Spirits between 1.3% and 3.4% ABV (tax type code 315) on What Do You Need To Declare Spirits Page

      And("I click save and continue button on What Do You Need To Declare Spirits Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the How Much You Need To Declare Spirits Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 8888.66 for Standard spirits between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Spirits Page at first input box")
        // ⚠️ No step-def match found for: I enter 8888.66 for Standard spirits between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Spirits Page at first input box

      And("I enter 88.8000 for Standard spirits between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Spirits Page at first input box")
        // ⚠️ No step-def match found for: I enter 88.8000 for Standard spirits between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Spirits Page at first input box

      And("I click save and continue button on How Much You Need To Declare Spirits Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Spirits Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Check Your Answers Returns Spirits Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Duty Due Spirits Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Duty Due Spirits Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Declare other fermented products hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}
        // whenIClickOnTheFirstLinkOn() [0.47] (BaseStepDefSteps.scala) pattern: I click on the first {string} link on {string}

      Then("I am presented with the What Do You Need To Declare Other Fermented Product Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select checkbox Other fermented products between 1.3% and 3.4% ABV (tax type code 314) on What Do You Need To Declare Wine Page")
        // ⚠️ No step-def match found for: I select checkbox Other fermented products between 1.3% and 3.4% ABV (tax type code 314) on What Do You Need To Declare Wine Page

      And("I click save and continue button on What Do You Need To Declare Other Fermented Product Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the How Much You Need To Declare Other Fermented Product Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 2233.33 for Standard other fermented products between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Other Fermented Product Page at first input box")
        // ⚠️ No step-def match found for: I enter 2233.33 for Standard other fermented products between 1.3% and 3.4% ABV - Total litres on How Much You Need To Declare Other Fermented Product Page at first input box

      And("I enter 33.3300 for Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Other Fermented Product Page at first input box")
        // ⚠️ No step-def match found for: I enter 33.3300 for Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol on How Much You Need To Declare Other Fermented Product Page at first input box

      And("I click save and continue button on How Much You Need To Declare Other Fermented Product Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Check Your Answers Returns Other Fermented Product Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Check Your Answers Returns Other Fermented Product Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Duty Due Other Fermented Product Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Duty Due Other Fermented Product Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Tell us if you have adjustments to declare hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Declare Adjustment Question Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Declare Adjustment Question Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Declare Adjustment Question Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Type Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Under-declaration on Adjustment Type Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment Type Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Return Date Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter month 09 and year 2023 on Adjustment Return Date Page")
        whenIEnterMonthAndYearOn("", "", "")  // auto-chosen (score=0.47, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment Return Date Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Adjustment Tax Type Code Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 311 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 311 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 123.45 for Total Litres on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 123.45 for Total Litres on Adjustment Volume Page

      And("I enter 5.5000 for Litres Of Pure Alcohol on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 5.5000 for Litres Of Pure Alcohol on Adjustment Volume Page

      And("I click save and continue button on Adjustment Volume Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Duty Value Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Adjustment Duty Value Page")
        whenIClickContinueButtonO("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Adjustment Check Your Answers Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Adjustment List Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment List Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Type Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Over-declaration on Adjustment Type Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment Type Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Return Date Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
        whenIEnterMonthAndYearOn("", "", "")  // auto-chosen (score=0.47, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment Return Date Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Adjustment Tax Type Code Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 312 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 312 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 222.22 for Total Litres on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 222.22 for Total Litres on Adjustment Volume Page

      And("I enter 22.2200 for Litres Of Pure Alcohol on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 22.2200 for Litres Of Pure Alcohol on Adjustment Volume Page

      And("I click save and continue button on Adjustment Volume Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Duty Value Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Adjustment Duty Value Page")
        whenIClickContinueButtonO("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Adjustment Check Your Answers Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Adjustment List Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment List Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Type Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Repackaged draught products on Adjustment Type Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment Type Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Return Date Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter month 11 and year 2023 on Adjustment Return Date Page")
        whenIEnterMonthAndYearOn("", "", "")  // auto-chosen (score=0.47, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment Return Date Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Adjustment Tax Type Code For Repackaged Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 373 on Adjustment Tax Type Code For Repackaged Page")
        // ⚠️ No step-def match found for: I enter 373 on Adjustment Tax Type Code For Repackaged Page

      And("I click save and continue button on Adjustment Tax Type Code For Repackaged Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume With Spr Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Adjustment Volume With Spr Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume With Spr Page

      And("I enter 9.8 for SPR Duty Rate on Adjustment Volume With Spr Page")
        // ⚠️ No step-def match found for: I enter 9.8 for SPR Duty Rate on Adjustment Volume With Spr Page

      And("I click save and continue button on Adjustment Volume With Spr Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the New Tax Type Code Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.54] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 363 on New Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 363 on New Tax Type Code Page

      And("I click save and continue button on New Tax Type Code Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the New Spr Duty Rate Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.54] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 11.5 on New Spr Duty Rate Page")
        // ⚠️ No step-def match found for: I enter 11.5 on New Spr Duty Rate Page

      And("I click save and continue button on New Spr Duty Rate Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Duty Value Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Adjustment Duty Value Page")
        whenIClickContinueButtonO("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Adjustment Check Your Answers Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Adjustment List Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment List Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Type Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Spoilt on Adjustment Type Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment Type Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Spoilt Alcohol Type Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Spirits on Spoilt Alcohol Type Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Spoilt Alcohol Type Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Spoilt Alcohol Volume Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 3000.75 for Total Litres on Spoilt Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Spoilt Alcohol Volume Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Spoilt Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Spoilt Alcohol Volume Page

      And("I enter 3255.55 for Duty Paid on Spoilt Alcohol Volume Page")
        // ⚠️ No step-def match found for: I enter 3255.55 for Duty Paid on Spoilt Alcohol Volume Page

      And("I click save and continue button on Spoilt Alcohol Volume Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Adjustment Check Your Answers Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Adjustment List Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment List Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Type Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Drawback on Adjustment Type Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      And("I click save and continue button on Adjustment Type Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Return Date Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter month 10 and year 2023 on Adjustment Return Date Page")
        whenIEnterMonthAndYearOn("", "", "")  // auto-chosen (score=0.47, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment Return Date Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Adjustment Tax Type Code Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 314 on Adjustment Tax Type Code Page")
        // ⚠️ No step-def match found for: I enter 314 on Adjustment Tax Type Code Page

      And("I click save and continue button on Adjustment Tax Type Code Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Volume Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 3000.75 for Total Litres on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 3000.75 for Total Litres on Adjustment Volume Page

      And("I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page")
        // ⚠️ No step-def match found for: I enter 250.5500 for Litres Of Pure Alcohol on Adjustment Volume Page

      And("I click save and continue button on Adjustment Volume Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Duty Value Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Adjustment Duty Value Page")
        whenIClickContinueButtonO("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment Check Your Answers Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Adjustment Check Your Answers Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Adjustment List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button No on Adjustment List Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Adjustment List Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Tell us if you have delivered or received finished products in duty suspense hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}

      Then("I am presented with the Declare Duty Suspended Deliveries Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Declare Duty Suspended Deliveries Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Declare Duty Suspended Deliveries Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Duty Suspended Deliveries Guidance Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Duty Suspended Deliveries Guidance Page")
        whenIClickContinueButtonO("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Duty Suspended Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 2000.75 for Total Beer on Duty Suspended Beer Page")
        // ⚠️ No step-def match found for: I enter 2000.75 for Total Beer on Duty Suspended Beer Page

      And("I enter 150.55 for Pure Alcohol In Beer on Duty Suspended Beer Page")
        // ⚠️ No step-def match found for: I enter 150.55 for Pure Alcohol In Beer on Duty Suspended Beer Page

      And("I click save and continue button on Duty Suspended Beer Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Duty Suspended Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 9999.99 for Total Cider on Duty Suspended Cider Page")
        // ⚠️ No step-def match found for: I enter 9999.99 for Total Cider on Duty Suspended Cider Page

      And("I enter 99.19 for Pure Alcohol In Cider on Duty Suspended Cider Page")
        // ⚠️ No step-def match found for: I enter 99.19 for Pure Alcohol In Cider on Duty Suspended Cider Page

      And("I click save and continue button on Duty Suspended Cider Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Duty Suspended Wine Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 7777.77 for Total Wine on Duty Suspended Wine Page")
        // ⚠️ No step-def match found for: I enter 7777.77 for Total Wine on Duty Suspended Wine Page

      And("I enter 77.77 for Pure Alcohol In Wine on Duty Suspended Wine Page")
        // ⚠️ No step-def match found for: I enter 77.77 for Pure Alcohol In Wine on Duty Suspended Wine Page

      And("I click save and continue button on Duty Suspended Wine Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Duty Suspended Spirits Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 2100.75 for Total Spirits on Duty Suspended Spirits Page")
        // ⚠️ No step-def match found for: I enter 2100.75 for Total Spirits on Duty Suspended Spirits Page

      And("I enter 160.55 for Pure Alcohol In Spirits on Duty Suspended Spirits Page")
        // ⚠️ No step-def match found for: I enter 160.55 for Pure Alcohol In Spirits on Duty Suspended Spirits Page

      And("I click save and continue button on Duty Suspended Spirits Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Duty Suspended Other Fermented Products Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 8888.88 for Total Other Fermented Products on Duty Suspended Other Fermented Products Page")
        // ⚠️ No step-def match found for: I enter 8888.88 for Total Other Fermented Products on Duty Suspended Other Fermented Products Page

      And("I enter 88.88 for Pure Alcohol In Other Fermented Products on Duty Suspended Other Fermented Products Page")
        // ⚠️ No step-def match found for: I enter 88.88 for Pure Alcohol In Other Fermented Products on Duty Suspended Other Fermented Products Page

      And("I click save and continue button on Duty Suspended Other Fermented Products Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click continue button on Duty Suspended Deliveries Check Your Answers Page")
        whenIClickContinueButtonO("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Tell us about spirits produced in the past three months hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}
        // whenIClickOnTheFirstLinkOn() [0.47] (BaseStepDefSteps.scala) pattern: I click on the first {string} link on {string}

      Then("I am presented with the Quarterly Spirits Returns Guidance Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select radio button Yes on Quarterly Spirits Returns Guidance Page")
        whenISelectRadioButtonOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)

      And("I click save and continue button on Quarterly Spirits Returns Guidance Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Total Of All Spirits Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 99 on Total Of All Spirits Page")
        // ⚠️ No step-def match found for: I enter 99 on Total Of All Spirits Page

      And("I click save and continue button on Total Of All Spirits Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Declare Whiskey Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter 10.55 for Scotch Whisky on Declare Whiskey Page")
        // ⚠️ No step-def match found for: I enter 10.55 for Scotch Whisky on Declare Whiskey Page

      And("I enter 20.67 for Irish Whiskey on Declare Whiskey Page")
        // ⚠️ No step-def match found for: I enter 20.67 for Irish Whiskey on Declare Whiskey Page

      And("I click save and continue button on Declare Whiskey Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Which Of These Spirits Have You Produced Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I select checkbox Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits on Which Of These Spirits Have You Produced Page")
        // ⚠️ No step-def match found for: I select checkbox Malt spirits,Neutral spirits of agricultural origin,Spirits produced from beer,Other spirits on Which Of These Spirits Have You Produced Page

      And("I click save and continue button on Which Of These Spirits Have You Produced Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Declare Other Spirits Produced Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter Test Spirits on Declare Other Spirits Produced Page")
        // ⚠️ No step-def match found for: I enter Test Spirits on Declare Other Spirits Produced Page

      And("I click save and continue button on Declare Other Spirits Produced Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click save and continue button on Quarterly Spirits Check Your Answers Page")
        whenIClickSaveAndContinueButtonOn("")  // auto-chosen (score=0.61, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickContinueButtonO() [0.58] (BaseStepDefSteps.scala) pattern: I click continue button on {string}
        // whenIClickConfirmAndContinueButtonOn() [0.52] (BaseStepDefSteps.scala) pattern: I click confirm and continue button on {string}
        // whenIClickSubmitButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click submit button on {string}
        // whenIClickBackButtonOn() [0.47] (BaseStepDefSteps.scala) pattern: I click back button on {string}

      Then("I am presented with the Task List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click on Check duty payable and send your return hyperlink on Task List Page")
        whenIClickOnHyperlinkOn("", "")  // auto-chosen (score=0.50, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // whenIClickOnLinkOn() [0.50] (BaseStepDefSteps.scala) pattern: I click on {string} link on {string}
        // whenIClickOnAgreeAndSendReturnButton() [0.47] (BaseStepDefSteps.scala) pattern: I click on Agree and send return button {string}

      Then("I am presented with the Return Summary Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Declared spirits duty on Return Summary Page")
        // ⚠️ No step-def match found for: I click Change Declared spirits duty on Return Summary Page

      Then("I am presented with the Check Your Answers Returns Spirits Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter redirect url for Return Summary Page")
        whenIEnterRedirectUrlFor("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)

      Then("I am presented with the Return Summary Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Declared wine duty on Return Summary Page")
        // ⚠️ No step-def match found for: I click Change Declared wine duty on Return Summary Page

      Then("I am presented with the Check Your Answers Returns Wine Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter redirect url for Return Summary Page")
        whenIEnterRedirectUrlFor("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)

      Then("I am presented with the Return Summary Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Declared cider duty on Return Summary Page")
        // ⚠️ No step-def match found for: I click Change Declared cider duty on Return Summary Page

      Then("I am presented with the Check Your Answers Returns Cider Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter redirect url for Return Summary Page")
        whenIEnterRedirectUrlFor("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)

      Then("I am presented with the Return Summary Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Declared other fermented products duty on Return Summary Page")
        // ⚠️ No step-def match found for: I click Change Declared other fermented products duty on Return Summary Page

      Then("I am presented with the Check Your Answers Returns Other Fermented Product Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter redirect url for Return Summary Page")
        whenIEnterRedirectUrlFor("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)

      Then("I am presented with the Return Summary Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Declared beer duty on Return Summary Page")
        // ⚠️ No step-def match found for: I click Change Declared beer duty on Return Summary Page

      Then("I am presented with the Check Your Answers Returns Beer Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter redirect url for Return Summary Page")
        whenIEnterRedirectUrlFor("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)

      Then("I am presented with the Return Summary Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Adjustment duty value on Return Summary Page")
        // ⚠️ No step-def match found for: I click Change Adjustment duty value on Return Summary Page

      Then("I am presented with the Adjustment List Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter redirect url for Return Summary Page")
        whenIEnterRedirectUrlFor("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)

      Then("I am presented with the Return Summary Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Duty suspended alcohol on Return Summary Page")
        // ⚠️ No step-def match found for: I click Change Duty suspended alcohol on Return Summary Page

      Then("I am presented with the Duty Suspended Deliveries Check Your Answers Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter redirect url for Return Summary Page")
        whenIEnterRedirectUrlFor("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)

      Then("I am presented with the Return Summary Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I click Change Spirits production on Return Summary Page")
        // ⚠️ No step-def match found for: I click Change Spirits production on Return Summary Page

      Then("I am presented with the Quarterly Spirits Check Your Answers Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

      When("I enter redirect url for Return Summary Page")
        whenIEnterRedirectUrlFor("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)

      Then("I am presented with the Return Summary Page")
        thenIAmPresentedWithThe("")  // auto-chosen (score=0.58, BaseStepDefSteps.scala)
        // --- Other possible matches ---
        // thenIAmPresentedWithTheWithNewUrl() [0.47] (BaseStepDefSteps.scala) pattern: I am presented with the {string} with new url

    }
  }
}
