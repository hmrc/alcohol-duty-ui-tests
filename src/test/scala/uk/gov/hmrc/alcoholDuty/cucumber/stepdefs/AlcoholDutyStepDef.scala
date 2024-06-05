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

package uk.gov.hmrc.alcoholDuty.cucumber.stepdefs

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.auth.AuthLoginStubPage

class AlcoholDutyStepDef extends BaseStepDef {

  When("""I enter redirectURL on {string}""") { (page: String) =>
    page match {
      case "Auth Login Stub Page" =>
        AuthLoginStubPage.enterRedirectURL(TestConfiguration.url("alcohol-duty-returns-frontend") + "/before-you-start-your-return/24AC")
    }
  }

  When("""I enter redirectURL with Jan Period Key on {string}""") { (page: String) =>
    page match {
      case "Auth Login Stub Page" =>
        AuthLoginStubPage.enterRedirectURL(TestConfiguration.url("alcohol-duty-returns-frontend") + "/before-you-start-your-return/24AA")
    }
  }

    When("""I enter Enrollment Key {string}, Identifier Name {string} and Identifier Value {string} on {string}""") { (enrollmentKey: String, IdentifierName: String, IdentifierValue: String, page: String) =>
      page match {
        case "Auth Login Stub Page" =>
          AuthLoginStubPage.enrolments(enrollmentKey, IdentifierName, IdentifierValue)
      }
    }

  When("""I select Affinity Type as {string} on {string}""") { (value: String, page: String) =>
    page match {
      case "Auth Login Stub Page" =>
        AuthLoginStubPage.selectAffinityGroup(value)
    }
  }
  }

