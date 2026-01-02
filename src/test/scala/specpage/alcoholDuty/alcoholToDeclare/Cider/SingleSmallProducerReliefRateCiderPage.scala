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

  override def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: Int): Unit =
    text match {
      case "Non-draught cider between 1.3% and 3.4% ABV - Total litres"                  =>
        enterText("volumesWithRate_" + index + "_totalLitres", textToEnter)
      case "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres"           =>
        enterText("volumesWithRate_" + index + "_pureAlcohol", textToEnter)
      case "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate"                      =>
        enterText("volumesWithRate_" + index + "_dutyRate", textToEnter)
      case "Non-draught cider between 3.5% and 8.4% ABV - Total litres"                  =>
        enterText("volumesWithRate_" + index + "_totalLitres", textToEnter)
      case "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres"           =>
        enterText("volumesWithRate_" + index + "_pureAlcohol", textToEnter)
      case "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate"                      =>
        enterText("volumesWithRate_" + index + "_dutyRate", textToEnter)
      case "Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres"        =>
        enterText("volumesWithRate_" + index + "_totalLitres", textToEnter)
      case "Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres" =>
        enterText("volumesWithRate_" + index + "_pureAlcohol", textToEnter)
      case "Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate"            =>
        enterText("volumesWithRate_" + index + "_dutyRate", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - Total litres"                      =>
        enterText("volumesWithRate_" + index + "_totalLitres", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres"               =>
        enterText("volumesWithRate_" + index + "_pureAlcohol", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - SPR Rate"                          =>
        enterText("volumesWithRate_" + index + "_dutyRate", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - Total litres"                      =>
        enterText("volumesWithRate_" + index + "_totalLitres", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres"               =>
        enterText("volumesWithRate_" + index + "_pureAlcohol", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - SPR Rate"                          =>
        enterText("volumesWithRate_" + index + "_dutyRate", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres"            =>
        enterText("volumesWithRate_" + index + "_totalLitres", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres"     =>
        enterText("volumesWithRate_" + index + "_pureAlcohol", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate"                =>
        enterText("volumesWithRate_" + index + "_dutyRate", textToEnter)
    }

  def enterDetailsForAllSprRateBands(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex("656.66", "Non-draught cider between 1.3% and 3.4% ABV - Total litres", 0)
    enterMultipleDetailsWithIndex("66.6600", "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres", 0)
    enterMultipleDetailsWithIndex("14", "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate", 0)
    enterMultipleDetailsWithIndex("999.99", "Non-draught cider between 3.5% and 8.4% ABV - Total litres", 1)
    enterMultipleDetailsWithIndex("98.9900", "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres", 1)
    enterMultipleDetailsWithIndex("12.45", "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate", 1)
    enterMultipleDetailsWithIndex("6666.66", "Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres", 2)
    enterMultipleDetailsWithIndex(
      "666.6600",
      "Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres",
      2
    )
    enterMultipleDetailsWithIndex("36", "Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate", 2)
    enterMultipleDetailsWithIndex("887.21", "Draught cider between 1.3% and 3.4% ABV - Total litres", 3)
    enterMultipleDetailsWithIndex("45.5600", "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres", 3)
    enterMultipleDetailsWithIndex("16", "Draught cider between 1.3% and 3.4% ABV - SPR Rate", 3)
    enterMultipleDetailsWithIndex("653.11", "Draught cider between 3.5% and 8.4% ABV - Total litres", 4)
    enterMultipleDetailsWithIndex("33.3300", "Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres", 4)
    enterMultipleDetailsWithIndex("18", "Draught cider between 3.5% and 8.4% ABV - SPR Rate", 4)
    enterMultipleDetailsWithIndex("777.77", "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres", 5)
    enterMultipleDetailsWithIndex(
      "77.7700",
      "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres",
      5
    )
    enterMultipleDetailsWithIndex("17", "Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate", 5)
    clickSaveAndContinueButton()
  }

  def continueInCheckMode(): Unit = {
    checkNewURL
    clickSaveAndContinueButton()
  }

  def updateDetailsInCheckMode(): Unit = {
    checkNewURL
    enterMultipleDetailsWithIndex("777.77", "Draught cider between 1.3% and 3.4% ABV - Total litres", 3)
    enterMultipleDetailsWithIndex("77.7700", "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres", 3)
    enterMultipleDetailsWithIndex("7.7", "Draught cider between 1.3% and 3.4% ABV - SPR Rate", 3)
    clickSaveAndContinueButton()
  }
}
