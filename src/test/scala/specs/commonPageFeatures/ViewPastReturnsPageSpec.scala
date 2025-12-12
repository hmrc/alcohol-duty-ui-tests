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

package specs.commonPageFeatures

import specpage.auth.AuthLoginStubPage
import specpage.common.{ViewCompletedReturnsPage, ViewPastReturnsPage, ViewSpecificReturnPage}
import specs.BaseSpec
import specs.tags.{AllTests, CommonPages}
import specsteps.BaseStepDefSteps._

class ViewPastReturnsPageSpec extends BaseSpec {

  Feature("View Past Returns Journey") {

    Scenario("1. ADR Journey - View Completed Returns from previous years", AllTests, CommonPages) {
      Given("I cleared the data to view completed returns from previous years")
      clearDataForPastReturns()

      And("I enter login details on Authority Wizard")
      navigateToPage(AuthLoginStubPage)
      AuthLoginStubPage.enterAuthDetails("XMADP0000100211", "View Past Returns")

      When("I click the link to view completed returns from the previous year on View Past Returns Page")
      ViewPastReturnsPage.clickPreviousYearHyperlink()

      And("I click on the first View return link on View Completed Returns Page")
      ViewCompletedReturnsPage.clickFirstViewReturnLink()

      And("I click back button on View Specific Return Page")
      ViewSpecificReturnPage.clickBackButton()

      And("I click on Back to current returns hyperlink on View Completed Returns Page")
      ViewCompletedReturnsPage.backToCurrentReturns()

      Then("I am presented with the View Past Returns Page")
      ViewPastReturnsPage.checkURL

    }
  }
}
