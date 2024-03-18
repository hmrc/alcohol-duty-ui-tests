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

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage
object ProductListPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/return-products"
  override val title       = "Products to declare"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Products to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Products to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Products to declare")

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Yes" => click on cssSelector("#productList-yesNoValue")
      case "No"  => click on cssSelector("#productList-yesNoValue-no")
    }

  override def clickButton(buttonText: String): Unit =
    buttonText match {
      case "Change Hyperlink" =>
        click on cssSelector("a[href='/manage-alcohol-duty/return-check-your-answers?index=0']")
      case "Remove Hyperlink" => click on cssSelector("a[href='/manage-alcohol-duty/delete-return-product?index=0']")
    }
}
