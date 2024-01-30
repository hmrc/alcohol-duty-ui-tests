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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.alcoholToDeclare

import org.openqa.selenium.By
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object ProductDutyRatePage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/the-duty-due-on-this-product"
  override val title = "The duty due on this product is £0.00"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: The duty due on this product is £0.00 - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "The duty due on this product is £0.00 - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("The duty due on this product is £0.00")

  override def checkPageTitle(page: String): Unit = {
    val pageCaption: Array[String] = page.split(",")
    driver.findElement(By cssSelector ".govuk-heading-xl").getText should equal(s"""The duty due on this product is ${pageCaption(0)}""")
    driver.getCurrentUrl should equal(TestConfiguration.url("alcohol-duty-returns-frontend") + "/the-duty-due-on-this-product")
  }
}