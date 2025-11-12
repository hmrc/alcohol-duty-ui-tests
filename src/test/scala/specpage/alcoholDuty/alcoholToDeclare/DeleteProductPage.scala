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

package specpage.alcoholDuty.alcoholToDeclare

import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object DeleteProductPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/delete-return-product?index=0"
  override val title = "Are you sure you want to remove this product?"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Are you sure you want to remove this product? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Are you sure you want to remove this product? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Are you sure you want to remove this product?")

  override def clickRadioButton(text: String): Unit = {
    text match {
      case "Yes" => click on cssSelector("#deleteProduct-yesNoValue")
      case "No" => click on cssSelector("#deleteProduct-yesNoValue-no")
    }
  }
}
