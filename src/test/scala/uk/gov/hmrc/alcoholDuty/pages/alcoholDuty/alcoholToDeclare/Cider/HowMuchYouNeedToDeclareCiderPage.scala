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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.alcoholToDeclare.Cider

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object HowMuchYouNeedToDeclareCiderPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/how-much-do-you-need-to-declare/Cider"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/change-how-much-do-you-need-to-declare/Cider"
  override val title          = "Tell us about the cider you need to declare"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Tell us about the cider you need to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Tell us about the cider you need to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Tell us about the cider you need to declare")

  override def enterMultipleDetails(textToEnter: String, text: String): Unit =
    text match {
      case "Standard cider between 1.3% and 3.4% ABV - Total litres" => enterText("volumes_0_totalLitres", textToEnter)
      case "Standard cider between 1.3% and 3.4% ABV - Pure alcohol" => enterText("volumes_0_pureAlcohol", textToEnter)
      case "Standard cider between 3.5% and 8.4% ABV - Total litres" => enterText("volumes_1_totalLitres", textToEnter)
      case "Standard cider between 3.5% and 8.4% ABV - Pure alcohol" => enterText("volumes_1_pureAlcohol", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - Total litres"  => enterText("volumes_2_totalLitres", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - Pure alcohol"  => enterText("volumes_2_pureAlcohol", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - Total litres"  => enterText("volumes_3_totalLitres", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - Pure alcohol"  => enterText("volumes_3_pureAlcohol", textToEnter)
    }
}
