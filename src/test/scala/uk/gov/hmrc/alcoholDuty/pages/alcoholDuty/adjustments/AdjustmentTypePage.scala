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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.adjustments

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object AdjustmentTypePage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/what-type-of-adjustment"
  override val title = "Which type of adjustment do you need to make?"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Which type of adjustment do you need to make? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Which type of adjustment do you need to make? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Which type of adjustment do you need to make?")

  override def clickRadioButton(text: String): Unit = {
    text match {
      case "Under-declaration" => click on cssSelector("#under-declaration")
      case "Over-declaration" => click on cssSelector("#over-declaration")
      case "Spoilt" => click on cssSelector("#spoilt")
      case "Drawback" => click on cssSelector("#drawback")
      case "Repackaged draught products" => click on cssSelector("#repackaged-draught-products")
    }
  }
}
