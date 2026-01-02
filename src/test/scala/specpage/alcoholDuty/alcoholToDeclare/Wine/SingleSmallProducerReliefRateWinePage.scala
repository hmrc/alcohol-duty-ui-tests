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

package specpage.alcoholDuty.alcoholToDeclare.Wine

import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object SingleSmallProducerReliefRateWinePage extends BasePage {

  override val url: String    =
    TestConfiguration.url(
      "alcohol-duty-returns-frontend"
    ) + "/complete-return/alcoholic-products/Wine/declare/spr/eligible-volumes"
  override val newUrl: String =
    TestConfiguration.url(
      "alcohol-duty-returns-frontend"
    ) + "/complete-return/alcoholic-products/Wine/change/spr/eligible-volumes"

  override def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: Int): Unit =
    text match {
      case "Non-draught wine between 1.3% and 3.4% ABV - Total litres"        =>
        enterText("volumesWithRate_" + index + "_totalLitres", textToEnter)
      case "Non-draught wine between 1.3% and 3.4% ABV - Pure alcohol litres" =>
        enterText("volumesWithRate_" + index + "_pureAlcohol", textToEnter)
      case "Non-draught wine between 1.3% and 3.4% ABV - SPR Rate"            =>
        enterText("volumesWithRate_" + index + "_dutyRate", textToEnter)
      case "Non-draught wine between 3.5% and 8.4% ABV - Total litres"        =>
        enterText("volumesWithRate_" + index + "_totalLitres", textToEnter)
      case "Non-draught wine between 3.5% and 8.4% ABV - Pure alcohol litres" =>
        enterText("volumesWithRate_" + index + "_pureAlcohol", textToEnter)
      case "Non-draught wine between 3.5% and 8.4% ABV - SPR Rate"            =>
        enterText("volumesWithRate_" + index + "_dutyRate", textToEnter)
      case "Draught wine between 1.3% and 3.4% ABV - Total litres"            =>
        enterText("volumesWithRate_" + index + "_totalLitres", textToEnter)
      case "Draught wine between 1.3% and 3.4% ABV - Pure alcohol litres"     =>
        enterText("volumesWithRate_" + index + "_pureAlcohol", textToEnter)
      case "Draught wine between 1.3% and 3.4% ABV - SPR Rate"                =>
        enterText("volumesWithRate_" + index + "_dutyRate", textToEnter)
      case "Draught wine between 3.5% and 8.4% ABV - Total litres"            =>
        enterText("volumesWithRate_" + index + "_totalLitres", textToEnter)
      case "Draught wine between 3.5% and 8.4% ABV - Pure alcohol litres"     =>
        enterText("volumesWithRate_" + index + "_pureAlcohol", textToEnter)
      case "Draught wine between 3.5% and 8.4% ABV - SPR Rate"                =>
        enterText("volumesWithRate_" + index + "_dutyRate", textToEnter)
    }

  def enterDetailsForAllSprRateBands(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex("888.88", "Non-draught wine between 1.3% and 3.4% ABV - Total litres", 0)
    enterMultipleDetailsWithIndex("99.4500", "Non-draught wine between 1.3% and 3.4% ABV - Pure alcohol litres", 0)
    enterMultipleDetailsWithIndex("15", "Non-draught wine between 1.3% and 3.4% ABV - SPR Rate", 0)
    enterMultipleDetailsWithIndex("776.45", "Non-draught wine between 3.5% and 8.4% ABV - Total litres", 1)
    enterMultipleDetailsWithIndex("78.9000", "Non-draught wine between 3.5% and 8.4% ABV - Pure alcohol litres", 1)
    enterMultipleDetailsWithIndex("18", "Non-draught wine between 3.5% and 8.4% ABV - SPR Rate", 1)
    enterMultipleDetailsWithIndex("776.89", "Draught wine between 1.3% and 3.4% ABV - Total litres", 2)
    enterMultipleDetailsWithIndex("99.9900", "Draught wine between 1.3% and 3.4% ABV - Pure alcohol litres", 2)
    enterMultipleDetailsWithIndex("15", "Draught wine between 1.3% and 3.4% ABV - SPR Rate", 2)
    enterMultipleDetailsWithIndex("889.65", "Draught wine between 3.5% and 8.4% ABV - Total litres", 3)
    enterMultipleDetailsWithIndex("66.5400", "Draught wine between 3.5% and 8.4% ABV - Pure alcohol litres", 3)
    enterMultipleDetailsWithIndex("20", "Draught wine between 3.5% and 8.4% ABV - SPR Rate", 3)
    clickSaveAndContinueButton()
  }
}
