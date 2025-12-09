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

object SingleSmallProducerReliefRateOtherFermentedProductPage extends BasePage {

  override val url: String    = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/OtherFermentedProduct/declare/spr/eligible-volumes"
  override val newUrl: String = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/OtherFermentedProduct/change/spr/eligible-volumes"

  override def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: String): Unit = {
    val modifiedIndex = ordinalToNumber(index)
    text match {
      case "Non-draught other fermented product between 1.3% and 3.4% ABV - Total litres"        =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Non-draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres" =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Non-draught other fermented product between 1.3% and 3.4% ABV - SPR Rate"            =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Non-draught other fermented product between 3.5% and 8.4% ABV - Total litres"        =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Non-draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres" =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Non-draught other fermented product between 3.5% and 8.4% ABV - SPR Rate"            =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Draught other fermented product between 1.3% and 3.4% ABV - Total litres"            =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres"     =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught other fermented product between 1.3% and 3.4% ABV - SPR Rate"                =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Draught other fermented product between 3.5% and 8.4% ABV - Total litres"            =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres"     =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught other fermented product between 3.5% and 8.4% ABV - SPR Rate"                =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
    }
  }

  def enterDetailsForAllSprRateBands(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex(
      "777.77",
      "Non-draught other fermented product between 1.3% and 3.4% ABV - Total litres",
      "first"
    )
    enterMultipleDetailsWithIndex(
      "77.7700",
      "Non-draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres",
      "first"
    )
    enterMultipleDetailsWithIndex(
      "15",
      "Non-draught other fermented product between 1.3% and 3.4% ABV - SPR Rate",
      "first"
    )
    enterMultipleDetailsWithIndex(
      "888.88",
      "Non-draught other fermented product between 3.5% and 8.4% ABV - Total litres",
      "second"
    )
    enterMultipleDetailsWithIndex(
      "88.8800",
      "Non-draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres",
      "second"
    )
    enterMultipleDetailsWithIndex(
      "16",
      "Non-draught other fermented product between 3.5% and 8.4% ABV - SPR Rate",
      "second"
    )
    enterMultipleDetailsWithIndex(
      "667.88",
      "Draught other fermented product between 1.3% and 3.4% ABV - Total litres",
      "third"
    )
    enterMultipleDetailsWithIndex(
      "78.7700",
      "Draught other fermented product between 1.3% and 3.4% ABV - Pure alcohol litres",
      "third"
    )
    enterMultipleDetailsWithIndex("20", "Draught other fermented product between 1.3% and 3.4% ABV - SPR Rate", "third")
    enterMultipleDetailsWithIndex(
      "678.44",
      "Draught other fermented product between 3.5% and 8.4% ABV - Total litres",
      "fourth"
    )
    enterMultipleDetailsWithIndex(
      "99.2300",
      "Draught other fermented product between 3.5% and 8.4% ABV - Pure alcohol litres",
      "fourth"
    )
    enterMultipleDetailsWithIndex(
      "19",
      "Draught other fermented product between 3.5% and 8.4% ABV - SPR Rate",
      "fourth"
    )
    clickSaveAndContinueButton()
  }
}
