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

package uk.gov.hmrc.alcoholDuty.pages.common

import org.openqa.selenium.By
import org.scalatest.Assertion
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object ViewSpecificReturnPage extends BasePage {

  override val url: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/view-your-return/" + getCompletedMonth1PeriodKey
  override val title       = "April 2024 Alcohol Duty Return"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Alcohol Duty Return - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Alcohol Duty Return - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some(
    "Alcohol Duty Return"
  )

  override def checkPageTitle(): Assertion =
    driver.findElement(By tagName "h1").getText should equal(getSpecificMonth + " Alcohol Duty Return")

  override def checkPageErrorTitle(): Assertion =
    driver.findElement(By tagName "h1").getText should equal(getSpecificMonth + " Alcohol Duty Return")

  override def checkPageHeader(): Assertion =
    driver.findElement(By tagName "h1").getText should equal(getSpecificMonth + " Alcohol Duty Return")
}
