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

object HowMuchYouNeedToDeclareCiderPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Cider/declare/volumes"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Cider/change/volumes"

  override def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: String): Unit = {
    val modifiedIndex = ordinalToNumber(index)
    text match {
      case "Standard cider between 1.3% and 3.4% ABV - Total litres"          =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Standard cider between 1.3% and 3.4% ABV - Pure alcohol"          =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Standard cider between 3.5% and 8.4% ABV - Total litres"          =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Standard cider between 3.5% and 8.4% ABV - Pure alcohol"          =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Standard sparkling between 5.6% and 8.4% ABV - Total litres"      =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Standard sparkling between 5.6% and 8.4% ABV - Pure alcohol"      =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - Total litres"           =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - Pure alcohol"           =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - Total litres"           =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - Pure alcohol"           =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres" =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol" =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
    }
  }

  def enterDetailsForAllRateBands(exclude359: Boolean = false): Unit = {
    checkURL
    enterMultipleDetailsWithIndex("789.44", "Standard cider between 1.3% and 3.4% ABV - Total litres", "first")
    enterMultipleDetailsWithIndex("43.4400", "Standard cider between 1.3% and 3.4% ABV - Pure alcohol", "first")
    enterMultipleDetailsWithIndex("898.12", "Standard cider between 3.5% and 8.4% ABV - Total litres", "second")
    enterMultipleDetailsWithIndex("22.2200", "Standard cider between 3.5% and 8.4% ABV - Pure alcohol", "second")
    enterMultipleDetailsWithIndex("999.99", "Standard sparkling between 5.6% and 8.4% ABV - Total litres", "third")
    enterMultipleDetailsWithIndex("99.9900", "Standard sparkling between 5.6% and 8.4% ABV - Pure alcohol", "third")
    enterMultipleDetailsWithIndex("787.44", "Draught cider between 1.3% and 3.4% ABV - Total litres", "fourth")
    enterMultipleDetailsWithIndex("33.2100", "Draught cider between 1.3% and 3.4% ABV - Pure alcohol", "fourth")
    enterMultipleDetailsWithIndex("889.12", "Draught cider between 3.5% and 8.4% ABV - Total litres", "fifth")
    enterMultipleDetailsWithIndex("22.4500", "Draught cider between 3.5% and 8.4% ABV - Pure alcohol", "fifth")
    if (!exclude359) {
      enterMultipleDetailsWithIndex(
        "888.88",
        "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres",
        "sixth"
      )
      enterMultipleDetailsWithIndex(
        "888.8800",
        "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol",
        "sixth"
      )
    }
    clickSaveAndContinueButton()
  }

  def continueInCheckMode(): Unit = {
    checkNewURL
    clickSaveAndContinueButton()
  }

  def updateDetailsInCheckMode(): Unit = {
    checkNewURL
    enterMultipleDetailsWithIndex("999.99", "Standard cider between 1.3% and 3.4% ABV - Total litres", "first")
    enterMultipleDetailsWithIndex("99.9900", "Standard cider between 1.3% and 3.4% ABV - Pure alcohol", "first")
    clickSaveAndContinueButton()
  }
}
