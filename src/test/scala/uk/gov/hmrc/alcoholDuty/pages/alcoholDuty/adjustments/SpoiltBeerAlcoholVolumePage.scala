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

object SpoiltBeerAlcoholVolumePage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/declare/spoilt-product/volume"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/change/spoilt-product/volume"
  override val title          = "Tell us about your spoilt beer"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Tell us about your spoilt beer - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Tell us about your spoilt beer - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some(
    "Tell us about your spoilt beer"
  )

  override def enterMultipleDetails(textToEnter: String, text: String): Unit =
    text match {
      case "Total Litres"           => enterText("volumes_totalLitresVolume", textToEnter)
      case "Litres Of Pure Alcohol" => enterText("volumes_pureAlcoholVolume", textToEnter)
      case "Duty Paid"              => enterText("volumes_duty", textToEnter)
    }
}
