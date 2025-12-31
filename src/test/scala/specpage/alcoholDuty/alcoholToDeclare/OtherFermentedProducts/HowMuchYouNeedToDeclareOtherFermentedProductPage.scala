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

package specpage.alcoholDuty.alcoholToDeclare.OtherFermentedProducts

import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object HowMuchYouNeedToDeclareOtherFermentedProductPage extends BasePage {

  override val url: String    = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/OtherFermentedProduct/declare/volumes"
  override val newUrl: String = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/OtherFermentedProduct/change/volumes"

  override def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: Int): Unit =
    text match {
      case "Standard other fermented products between 1.3% and 3.4% ABV - Total litres" =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol" =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Standard other fermented products between 3.5% and 8.4% ABV - Total litres" =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard other fermented products between 3.5% and 8.4% ABV - Pure alcohol" =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Standard other fermented products between 8.5% and 22% ABV - Total litres"  =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard other fermented products between 8.5% and 22% ABV - Pure alcohol"  =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Standard other fermented products at or above 22.1% ABV - Total litres"     =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard other fermented products at or above 22.1% ABV - Pure alcohol"     =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Draught other fermented products between 1.3% and 3.4% ABV - Total litres"  =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Draught other fermented products between 1.3% and 3.4% ABV - Pure alcohol"  =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Draught other fermented products between 3.5% and 8.4% ABV - Total litres"  =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol"  =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
    }

  def enterDetailsForAllRateBands(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex(
      "2233.33",
      "Standard other fermented products between 1.3% and 3.4% ABV - Total litres",
      0
    )
    enterMultipleDetailsWithIndex(
      "33.3300",
      "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol",
      0
    )
    enterMultipleDetailsWithIndex(
      "3322.22",
      "Standard other fermented products between 3.5% and 8.4% ABV - Total litres",
      1
    )
    enterMultipleDetailsWithIndex(
      "22.2200",
      "Standard other fermented products between 3.5% and 8.4% ABV - Pure alcohol",
      1
    )
    enterMultipleDetailsWithIndex(
      "4433.44",
      "Standard other fermented products between 8.5% and 22% ABV - Total litres",
      2
    )
    enterMultipleDetailsWithIndex(
      "44.4400",
      "Standard other fermented products between 8.5% and 22% ABV - Pure alcohol",
      2
    )
    enterMultipleDetailsWithIndex(
      "5544.55",
      "Standard other fermented products at or above 22.1% ABV - Total litres",
      3
    )
    enterMultipleDetailsWithIndex(
      "55.5500",
      "Standard other fermented products at or above 22.1% ABV - Pure alcohol",
      3
    )
    enterMultipleDetailsWithIndex(
      "6666.66",
      "Draught other fermented products between 1.3% and 3.4% ABV - Total litres",
      4
    )
    enterMultipleDetailsWithIndex(
      "66.6600",
      "Draught other fermented products between 1.3% and 3.4% ABV - Pure alcohol",
      4
    )
    enterMultipleDetailsWithIndex(
      "7865.12",
      "Draught other fermented products between 3.5% and 8.4% ABV - Total litres",
      5
    )
    enterMultipleDetailsWithIndex(
      "34.5500",
      "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol",
      5
    )
    clickSaveAndContinueButton()
  }

  def enterDetailsFor314(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex(
      "2233.33",
      "Standard other fermented products between 1.3% and 3.4% ABV - Total litres",
      0
    )
    enterMultipleDetailsWithIndex(
      "33.3300",
      "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol",
      0
    )
    clickSaveAndContinueButton()
  }
}
