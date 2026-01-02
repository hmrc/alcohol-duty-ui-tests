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
import specpage.auth.JourneyType.ViewReturns
import specpage.common.{ViewCompletedReturnsPage, ViewPastReturnsPage, ViewSpecificReturnPage}
import specs.BaseSpec
import specs.tags.{AllTests, CommonPages}
import specsteps.BaseStepDefSteps.*

class ViewPastReturnsPageSpec extends BaseSpec {

  Feature("View Past Returns Journey") {

    Scenario("1. ADR Journey - View Completed Returns from previous years", AllTests, CommonPages) {
      Given("I log in to view returns")
      clearDataForPastReturns()
      navigateToPage(AuthLoginStubPage)
      AuthLoginStubPage.enterAuthDetails("XMADP0000100211", ViewReturns)

      When("I navigate to view a specific completed return")
      ViewPastReturnsPage.clickPreviousYearHyperlink()
      ViewCompletedReturnsPage.clickFirstViewReturnLink()

      And("I navigate back to View Past Returns Page")
      ViewSpecificReturnPage.clickBackButton()
      ViewCompletedReturnsPage.backToCurrentReturns()

      Then("I am presented with the View Past Returns Page")
      ViewPastReturnsPage.checkURL

    }
  }
}
