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

package specpage.alcoholDuty.alcoholToDeclare.Beer

import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object HowMuchYouNeedToDeclareBeerPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Beer/declare/volumes"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Beer/change/volumes"

  override def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: Int): Unit =
    text match {
      case "Standard beer between 1.3% and 3.4% ABV - Total litres" =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard beer between 1.3% and 3.4% ABV - Pure alcohol" =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Standard beer between 3.5% and 8.4% ABV - Total litres" =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard beer between 3.5% and 8.4% ABV - Pure alcohol" =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Standard beer between 8.5% and 22% ABV - Total litres"  =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard beer between 8.5% and 22% ABV - Pure alcohol"  =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Standard beer at or above 22.1% ABV - Total litres"     =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Standard beer at or above 22.1% ABV - Pure alcohol"     =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Draught beer between 1.3% and 3.4% ABV - Total litres"  =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Draught beer between 1.3% and 3.4% ABV - Pure alcohol"  =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
      case "Draught beer between 3.5% and 8.4% ABV - Total litres"  =>
        enterText("volumes_" + index + "_totalLitres", textToEnter)
      case "Draught beer between 3.5% and 8.4% ABV - Pure alcohol"  =>
        enterText("volumes_" + index + "_pureAlcohol", textToEnter)
    }

  def enterDetailsForLimitedRegimeApprovals(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex("945.55", "Standard beer between 1.3% and 3.4% ABV - Total litres", 0)
    enterMultipleDetailsWithIndex("55.5555", "Standard beer between 1.3% and 3.4% ABV - Pure alcohol", 0)
    clickSaveAndContinueButton()
  }

  def enterDetailsForAllRateBands(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex("945.55", "Standard beer between 1.3% and 3.4% ABV - Total litres", 0)
    enterMultipleDetailsWithIndex("55.5555", "Standard beer between 1.3% and 3.4% ABV - Pure alcohol", 0)
    enterMultipleDetailsWithIndex("898.34", "Standard beer between 3.5% and 8.4% ABV - Total litres", 1)
    enterMultipleDetailsWithIndex("77.5500", "Standard beer between 3.5% and 8.4% ABV - Pure alcohol", 1)
    enterMultipleDetailsWithIndex("667.32", "Standard beer between 8.5% and 22% ABV - Total litres", 2)
    enterMultipleDetailsWithIndex("66.3400", "Standard beer between 8.5% and 22% ABV - Pure alcohol", 2)
    enterMultipleDetailsWithIndex("999.19", "Standard beer at or above 22.1% ABV - Total litres", 3)
    enterMultipleDetailsWithIndex("99.1300", "Standard beer at or above 22.1% ABV - Pure alcohol", 3)
    enterMultipleDetailsWithIndex("887.54", "Draught beer between 1.3% and 3.4% ABV - Total litres", 4)
    enterMultipleDetailsWithIndex("66.4400", "Draught beer between 1.3% and 3.4% ABV - Pure alcohol", 4)
    enterMultipleDetailsWithIndex("699.45", "Draught beer between 3.5% and 8.4% ABV - Total litres", 5)
    enterMultipleDetailsWithIndex("66.8900", "Draught beer between 3.5% and 8.4% ABV - Pure alcohol", 5)
    clickSaveAndContinueButton()
  }

  def enterDetailsFor341(): Unit = {
    checkURL
    enterMultipleDetailsWithIndex("999.19", "Standard beer at or above 22.1% ABV - Total litres", 0)
    enterMultipleDetailsWithIndex("99.1300", "Standard beer at or above 22.1% ABV - Pure alcohol", 0)
    clickSaveAndContinueButton()
  }
}
