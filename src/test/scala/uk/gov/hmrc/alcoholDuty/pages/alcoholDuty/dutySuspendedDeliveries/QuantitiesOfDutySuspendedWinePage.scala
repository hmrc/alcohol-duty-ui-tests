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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.dutySuspendedDeliveries

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object QuantitiesOfDutySuspendedWinePage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/duty-suspended-deliveries/which-duty-suspended-alcohol"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/duty-suspended-deliveries/Beer/change"
  override val title          = "Tell us the quantities of your duty suspended beer"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Which finished alcoholic products have you delivered or received under duty suspense? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Tell us the quantities of your duty suspended beer - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Tell us the quantities of your duty suspended beer")

  override def enterMultipleDetails(textToEnter: String, text: String): Unit =
    text match {
      case "Total Litres Delivered Inside UK" => enterText("totalLitresDeliveredInsideUK", textToEnter)
      case "Pure Alcohol Delivered Inside UK" => enterText("pureAlcoholDeliveredInsideUK", textToEnter)
      case "Total Litres Delivered Outside UK" => enterText("totalLitresDeliveredOutsideUK", textToEnter)
      case "Pure Alcohol Delivered Outside UK" => enterText("pureAlcoholDeliveredOutsideUK", textToEnter)
      case "Total Litres Received"             => enterText("totalLitresReceived", textToEnter)
      case "Pure Alcohol Received"             => enterText("pureAlcoholReceived", textToEnter)
    }

}
