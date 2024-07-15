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

object AdjustmentReturnDatePage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/adjustment-return-date"
  override val title       = "When should you have paid duty?"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: When should you have paid duty? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "When should you have paid duty? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("When should you have paid duty?")

  override def enterDate(month: String, year: String): Unit = {
    enterText("when-did-you-pay-duty-input.month", month)
    enterText("when-did-you-pay-duty-input.year", year)
  }
}
