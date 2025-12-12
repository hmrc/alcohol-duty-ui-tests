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

package specsteps

import org.scalatestplus.selenium.Page
import specpage.BasePage
import specpage.alcoholDuty.adjustments.{AdjustmentTypePage, DeclareAdjustmentQuestionPage}
import specpage.alcoholDuty.alcoholToDeclare.{DeclareAlcoholDutyQuestionPage, WhatAlcoholDoYouNeedToDeclarePage}
import specpage.auth.AuthLoginStubPage
import specpage.common.{BeforeYouStartPage, TaskListPage}
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.selenium.webdriver.Driver

object BaseStepDefSteps extends BasePage {

  // I navigate to the {string}
  def navigateToPage(page: Page): Unit =
    go to page

  // I cleared the data to view completed returns from previous years
  def clearDataForPastReturns(): Unit =
    Driver.instance.get(
      TestConfiguration.url("alcohol-duty-returns-frontend") + "/test-only/clear-user-fulfilled-obligations"
    )

  // I cleared the data for the service
  def clearDataForReturns(): Unit =
    Driver.instance.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/test-only/clear-all")

  // I cleared the data for ECP service
  def clearDataForEcp(): Unit =
    Driver.instance.get(TestConfiguration.url("alcohol-duty-contact-preferences-frontend") + "/test-only/clear-all")

  // I clear the data to view Past Payments
  def clearDataForPastPayments(): Unit =
    Driver.instance.get(
      TestConfiguration.url("alcohol-duty-returns-frontend") + "/test-only/clear-user-historic-payments"
    )

  // Background steps 1 for starting a return
  def loginAndStartReturn(appaId: String): Unit = {
    clearDataForReturns()
    navigateToPage(AuthLoginStubPage)
    AuthLoginStubPage.enterAuthDetails(appaId)
    BeforeYouStartPage.continue()
    TaskListPage.checkURL
  }

  // Background steps 2 for AlcoholDutyReturnsChangeLinksCYAPage.feature
  def selectAllRegimes(): Unit = {
    TaskListPage.clickHyperlink("Tell us if you have alcoholic products to declare")
    DeclareAlcoholDutyQuestionPage.declareAlcohol(true)
    WhatAlcoholDoYouNeedToDeclarePage.selectAllRegimes()
    TaskListPage.checkURL
  }

  // Background steps 2 for adjustments
  def navigateToAdjustmentTypePage(): Unit = {
    TaskListPage.clickHyperlink("Tell us if you have adjustments to declare")
    DeclareAdjustmentQuestionPage.declareAdjustments(true)
    AdjustmentTypePage.checkURL
  }

  // Background steps for payments
  def loginForPayments(appaId: String = "XMADP0002900211"): Unit = {
    clearDataForPastPayments()
    navigateToPage(AuthLoginStubPage)
    AuthLoginStubPage.enterAuthDetails(appaId, "View Past Payments")
  }

  // Background steps for ECP
  def loginForEcp(appaId: String, typeOfJourney: String = "Email Contact Preference"): Unit = {
    clearDataForEcp()
    navigateToPage(AuthLoginStubPage)
    AuthLoginStubPage.enterAuthDetails(appaId, typeOfJourney, useCredId = true)
  }

}
