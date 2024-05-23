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

object HowMuchBeerYouNeedToDeclarePage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/how-much-do-you-need-to-declare/Beer"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/change-tell-us-about-the-alcohol-you-have-used"
  override val title          = "Tell us about the beer you need to declare"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Tell us about the beer you need to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Tell us about the beer you need to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Tell us about the beer you need to declare")

  override def enterMultipleDetails(textToEnter: String, text: String): Unit =
    text match {
      case "Standard beer between 1.2% and 3.4% ABV - Total litres" => enterText("volumes_0.totalLitres", textToEnter)
      case "Standard beer between 1.2% and 3.4% ABV - Pure alcohol" => enterText("volumes_0.pureAlcohol", textToEnter)
      case "Standard beer between 3.5% and 8.4% ABV - Total litres" => enterText("volumes_1.totalLitres", textToEnter)
      case "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" => enterText("volumes_1.pureAlcohol", textToEnter)
      case "Standard beer between 8.5% and 22% ABV - Total litres"  => enterText("volumes_2.totalLitres", textToEnter)
      case "Standard beer between 8.5% and 22% ABV - Pure alcohol"  => enterText("volumes_2.pureAlcohol", textToEnter)
      case "Standard beer exceeding 22% ABV - Total litres"         => enterText("volumes_3.totalLitres", textToEnter)
      case "Standard beer exceeding 22% ABV - Pure alcohol"         => enterText("volumes_3.pureAlcohol", textToEnter)
      case "Draught beer between 1.2% and 3.4% ABV - Total litres"  => enterText("volumes_4.totalLitres", textToEnter)
      case "Draught beer between 1.2% and 3.4% ABV - Pure alcohol"  => enterText("volumes_4.pureAlcohol", textToEnter)
      case "Draught beer between 3.5% and 8.4% ABV - Total litres"  => enterText("volumes_5.totalLitres", textToEnter)
      case "Draught beer between 3.5% and 8.4% ABV - Pure alcohol"  => enterText("volumes_5.pureAlcohol", textToEnter)
    }
}
