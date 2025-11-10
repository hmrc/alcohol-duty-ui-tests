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

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.auth.AuthLoginStubPage
import uk.gov.hmrc.selenium.webdriver.Driver

object AlcoholDutyStepDefSteps {

  // I enter redirect URL on Auth Login Stub Page for {string}
  def whenIEnterRedirectURLOnAuthLoginStubPageFor(typeOfJourney: String): Unit = {
    typeOfJourney match {
          case "Alcohol Duty Service"     =>
            AuthLoginStubPage.enterRedirectURL(
              TestConfiguration.url("alcohol-duty-returns-frontend") + "/before-you-start-your-return/25AD"
            )
          case "View Past Returns Page"   =>
            AuthLoginStubPage.enterRedirectURL(
              TestConfiguration.url("alcohol-duty-returns-frontend") + "/check-your-returns"
            )
          case "View Past Payments Page"  =>
            AuthLoginStubPage.enterRedirectURL(TestConfiguration.url("alcohol-duty-returns-frontend") + "/view-payments")
          case "Email Contact Preference" =>
            AuthLoginStubPage.enterRedirectURL(
              TestConfiguration.url("alcohol-duty-contact-preferences-frontend") + "/start/change-preference"
            )
          case "Email Update"             =>
            AuthLoginStubPage.enterRedirectURL(
              TestConfiguration.url("alcohol-duty-contact-preferences-frontend") + "/start/update-email"
            )
          case "Email Bounce"             =>
            AuthLoginStubPage.enterRedirectURL(
              TestConfiguration.url("alcohol-duty-contact-preferences-frontend") + "/start/bounced-email"
            )
        }
  }

  // I enter the url for Claim Enrolment journey
  def givenIEnterTheUrlForClaimEnrolmentJourney(): Unit = {
    Driver.instance.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/enrol/approval-id")
  }

  // I enter CredID {string} on {string}
  def whenIEnterCredIDOn(CredID: String, page: String): Unit = {
    page match {
          case "Auth Login Stub Page" =>
            AuthLoginStubPage.authorityId(CredID)
        }
  }

  // I enter Enrollment Key {string}, Identifier Name {string} and Identifier Value {string} on {string}
  def whenIEnterEnrollmentKeyIdentifierNameAndIdentifierValueOn(enrollmentKey: String, IdentifierName: String, IdentifierValue: String, page: String): Unit = {
    page match {
            case "Auth Login Stub Page" =>
              AuthLoginStubPage.enrolments(enrollmentKey, IdentifierName, IdentifierValue)
          }
  }

  // I select Affinity Type as {string} on {string}
  def whenISelectAffinityTypeAsOn(value: String, page: String): Unit = {
    page match {
          case "Auth Login Stub Page" =>
            AuthLoginStubPage.selectAffinityGroup(value)
        }
  }

}
