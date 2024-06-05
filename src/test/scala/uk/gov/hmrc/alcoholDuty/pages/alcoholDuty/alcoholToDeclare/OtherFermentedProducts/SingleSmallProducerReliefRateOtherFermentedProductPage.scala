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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.alcoholToDeclare.OtherFermentedProducts

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object SingleSmallProducerReliefRateOtherFermentedProductPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/tell-us-about-single-spr-rate/OtherFermentedProduct"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/change-tell-us-about-single-spr-rate/OtherFermentedProduct"
  override val title          = "Tell us about the other fermented product that is eligible for Small Producer Relief"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Tell us about the other fermented product that is eligible for Small Producer Relief - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Tell us about the other fermented product that is eligible for Small Producer Relief - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some(
    "Tell us about the other fermented product that is eligible for Small Producer Relief"
  )

  override def enterMultipleDetails(textToEnter: String, text: String): Unit =
    text match {
      case "Non-draught other fermented product between 1.3% and 3.4% ABV - Total litres"        => enterText("volumesWithRate_0_totalLitres", textToEnter)
      case "Non-draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" => enterText("volumesWithRate_0_pureAlcohol", textToEnter)
      case "Non-draught other fermented product between 1.3% and 3.4% ABV - SPR Rate"            => enterText("volumesWithRate_0_dutyRate", textToEnter)
      case "Non-draught other fermented product between 3.5% and 8.4% ABV - Total litres"        => enterText("volumesWithRate_1_totalLitres", textToEnter)
      case "Non-draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres" => enterText("volumesWithRate_1_pureAlcohol", textToEnter)
      case "Non-draught other fermented product between 3.5% and 8.4% ABV - SPR Rate"            => enterText("volumesWithRate_1_dutyRate", textToEnter)
      case "Draught other fermented product between 1.3% and 3.4% ABV - Total litres"            => enterText("volumesWithRate_2_totalLitres", textToEnter)
      case "Draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres"     => enterText("volumesWithRate_2_pureAlcohol", textToEnter)
      case "Draught other fermented product between 1.3% and 3.4% ABV - SPR Rate"                => enterText("volumesWithRate_2_dutyRate", textToEnter)
      case "Draught other fermented product between 3.5% and 8.4% ABV - Total litres"            => enterText("volumesWithRate_3_totalLitres", textToEnter)
      case "Draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres"     => enterText("volumesWithRate_3_pureAlcohol", textToEnter)
      case "Draught other fermented product between 3.5% and 8.4% ABV - SPR Rate"                => enterText("volumesWithRate_3_dutyRate", textToEnter)
    }
}
