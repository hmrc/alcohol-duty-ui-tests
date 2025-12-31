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

object HowMuchYouNeedToDeclareWinePage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Wine/declare/volumes"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Wine/change/volumes"

  override def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: Int): Unit =
    text match {
      case "Standard wine between 1.3% and 3.4% ABV - Total litres" =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard wine between 1.3% and 3.4% ABV - Pure alcohol" =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Standard wine between 3.5% and 8.4% ABV - Total litres" =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard wine between 3.5% and 8.4% ABV - Pure alcohol" =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Standard wine between 8.5% and 22% ABV - Total litres"  =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard wine between 8.5% and 22% ABV - Pure alcohol"  =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Standard wine at or above 22.1% ABV - Total litres"     =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard wine at or above 22.1% ABV - Pure alcohol"     =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Draught wine between 1.3% and 3.4% ABV - Total litres"  =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Draught wine between 1.3% and 3.4% ABV - Pure alcohol"  =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Draught wine between 3.5% and 8.4% ABV - Total litres"  =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Draught wine between 3.5% and 8.4% ABV - Pure alcohol"  =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
    }

  def enterDetailsForAllRateBands(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex("1234.55", "Standard wine between 1.3% and 3.4% ABV - Total litres", 0)
    enterMultipleDetailsWithIndex("35.5500", "Standard wine between 1.3% and 3.4% ABV - Pure alcohol", 0)
    enterMultipleDetailsWithIndex("3698.52", "Standard wine between 3.5% and 8.4% ABV - Total litres", 1)
    enterMultipleDetailsWithIndex("88.8800", "Standard wine between 3.5% and 8.4% ABV - Pure alcohol", 1)
    enterMultipleDetailsWithIndex("8974.23", "Standard wine between 8.5% and 22% ABV - Total litres", 2)
    enterMultipleDetailsWithIndex("22.2200", "Standard wine between 8.5% and 22% ABV - Pure alcohol", 2)
    enterMultipleDetailsWithIndex("990.01", "Standard wine at or above 22.1% ABV - Total litres", 3)
    enterMultipleDetailsWithIndex("82.2200", "Standard wine at or above 22.1% ABV - Pure alcohol", 3)
    enterMultipleDetailsWithIndex("895.22", "Draught wine between 1.3% and 3.4% ABV - Total litres", 4)
    enterMultipleDetailsWithIndex("22.3300", "Draught wine between 1.3% and 3.4% ABV - Pure alcohol", 4)
    enterMultipleDetailsWithIndex("569.33", "Draught wine between 3.5% and 8.4% ABV - Total litres", 5)
    enterMultipleDetailsWithIndex("24.5500", "Draught wine between 3.5% and 8.4% ABV - Pure alcohol", 5)
    clickSaveAndContinueButton()
  }

  def enterDetailsFor313(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex("1234.55", "Standard wine between 1.3% and 3.4% ABV - Total litres", 0)
    enterMultipleDetailsWithIndex("35.5500", "Standard wine between 1.3% and 3.4% ABV - Pure alcohol", 0)
    clickSaveAndContinueButton()
  }
}
