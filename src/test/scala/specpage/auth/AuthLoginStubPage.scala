/*
 * Copyright 2023 HM Revenue & Customs
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

package specpage.auth

import org.openqa.selenium.By
import specpage.BasePage
import specpage.auth.JourneyType.*
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object AuthLoginStubPage extends BasePage {

  override val url: String = TestConfiguration.url("auth-login-stub") + "/gg-sign-in"

  def enterRedirectUrlFor(typeOfJourney: JourneyType): Unit =
    typeOfJourney match {
      case AlcoholDutyService  =>
        enterRedirectURL(
          TestConfiguration.url("alcohol-duty-returns-frontend") + "/before-you-start-your-return/" + periodKey
        )
      case ViewReturns         =>
        enterRedirectURL(
          TestConfiguration.url("alcohol-duty-returns-frontend") + "/check-your-returns"
        )
      case ViewPayments        =>
        enterRedirectURL(TestConfiguration.url("alcohol-duty-returns-frontend") + "/view-payments")
      case EcpChangePreference =>
        enterRedirectURL(
          TestConfiguration.url("alcohol-duty-contact-preferences-frontend") + "/start/change-preference"
        )
      case EcpUpdateEmail      =>
        enterRedirectURL(
          TestConfiguration.url("alcohol-duty-contact-preferences-frontend") + "/start/update-email"
        )
      case EcpBouncedEmail     =>
        enterRedirectURL(
          TestConfiguration.url("alcohol-duty-contact-preferences-frontend") + "/start/bounced-email"
        )
    }

  def enterRedirectURL(url: String): Unit =
    sendKeys(By.cssSelector("#redirectionUrl"), url)

  def authorityId(CredID: String): Unit =
    sendKeys(By.id("authorityId"), CredID)

  def enrolments(enrolmentKey: String, IdentifierName: String, IdentifierValue: String): Unit = {
    sendKeys(By.id("enrolment[0].name"), enrolmentKey)
    sendKeys(By.id("input-0-0-name"), IdentifierName)
    sendKeys(By.id("input-0-0-value"), IdentifierValue)
  }

  def selectAffinityGroup(value: String): Unit =
    selectByVisibleText(By.cssSelector("select[name=affinityGroup]"), value)

  def enterAuthDetails(
    appaId: String,
    typeOfJourney: JourneyType = AlcoholDutyService,
    useCredId: Boolean = false
  ): Unit = {
    checkURL
    enterRedirectUrlFor(typeOfJourney)
    selectAffinityGroup("Organisation")
    if (useCredId) authorityId("cred0")
    enrolments("HMRC-AD-ORG", "APPAID", appaId)
    clickSubmitButton()
  }

}
