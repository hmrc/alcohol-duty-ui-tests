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

object ProductListPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/return-products"
  override val title = "Products to declare"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Products to declare - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Products to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Products to declare")

  override def checkPageTitle(page: String): Unit = {
    val pageCaption: Array[String] = page.split(",")
    driver.findElement(By cssSelector ".govuk-heading-xl").getText should equal(s"""This product has ${pageCaption(0)} litres of pure alcohol""")
    driver.getCurrentUrl should equal(TestConfiguration.url("alcohol-duty-returns-frontend") + "/you-have-declared-this-many-litres-of-pure-alcohol")
  }
}
