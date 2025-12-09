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

package specpage.alcoholDuty.alcoholToDeclare.Cider

import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object SingleSmallProducerReliefRateCiderPage extends BasePage {

  override val url: String    = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/Cider/declare/spr/eligible-volumes"
  override val newUrl: String = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/Cider/change/spr/eligible-volumes"

  override def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: String): Unit = {
    val modifiedIndex = ordinalToNumber(index)
    text match {
      case "Non-draught cider between 1.3% and 3.4% ABV - Total litres"                  =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres"           =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate"                      =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Non-draught cider between 3.5% and 8.4% ABV - Total litres"                  =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres"           =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate"                      =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres"        =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres" =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate"            =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - Total litres"                      =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres"               =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - SPR Rate"                          =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - Total litres"                      =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres"               =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - SPR Rate"                          =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres"            =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres"     =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate"                =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
    }
  }

  def enterDetailsForAllSprRateBands(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex("656.66", "Non-draught cider between 1.3% and 3.4% ABV - Total litres", "first")
    enterMultipleDetailsWithIndex(
      "66.6600",
      "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres",
      "first"
    )
    enterMultipleDetailsWithIndex("14", "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate", "first")
    enterMultipleDetailsWithIndex("999.99", "Non-draught cider between 3.5% and 8.4% ABV - Total litres", "second")
    enterMultipleDetailsWithIndex(
      "98.9900",
      "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres",
      "second"
    )
    enterMultipleDetailsWithIndex("12.45", "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate", "second")
    enterMultipleDetailsWithIndex(
      "6666.66",
      "Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres",
      "third"
    )
    enterMultipleDetailsWithIndex(
      "666.6600",
      "Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres",
      "third"
    )
    enterMultipleDetailsWithIndex("36", "Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate", "third")
    enterMultipleDetailsWithIndex("887.21", "Draught cider between 1.3% and 3.4% ABV - Total litres", "fourth")
    enterMultipleDetailsWithIndex(
      "45.5600",
      "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres",
      "fourth"
    )
    enterMultipleDetailsWithIndex("16", "Draught cider between 1.3% and 3.4% ABV - SPR Rate", "fourth")
    enterMultipleDetailsWithIndex("653.11", "Draught cider between 3.5% and 8.4% ABV - Total litres", "fifth")
    enterMultipleDetailsWithIndex(
      "33.3300",
      "Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres",
      "fifth"
    )
    enterMultipleDetailsWithIndex("18", "Draught cider between 3.5% and 8.4% ABV - SPR Rate", "fifth")
    enterMultipleDetailsWithIndex("777.77", "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres", "sixth")
    enterMultipleDetailsWithIndex(
      "77.7700",
      "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres",
      "sixth"
    )
    enterMultipleDetailsWithIndex("17", "Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate", "sixth")
    clickSaveAndContinueButton()
  }

  def continueInCheckMode(): Unit = {
    checkNewURL
    clickSaveAndContinueButton()
  }

  def updateDetailsInCheckMode(): Unit = {
    checkNewURL
    enterMultipleDetailsWithIndex("777.77", "Draught cider between 1.3% and 3.4% ABV - Total litres", "fourth")
    enterMultipleDetailsWithIndex(
      "77.7700",
      "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres",
      "fourth"
    )
    enterMultipleDetailsWithIndex("7.7", "Draught cider between 1.3% and 3.4% ABV - SPR Rate", "fourth")
    clickSaveAndContinueButton()
  }
}
