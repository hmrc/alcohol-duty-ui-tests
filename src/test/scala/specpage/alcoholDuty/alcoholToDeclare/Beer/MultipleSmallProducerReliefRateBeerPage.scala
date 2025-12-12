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

import org.openqa.selenium.By
import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object MultipleSmallProducerReliefRateBeerPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Beer/declare/spr/multiple-duty-rates/eligible-volume"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Beer/change/spr/multiple-duty-rates/eligible-volume"

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Non-draught beer between 1.3% and 3.4% ABV (361 SPR)" => click(By.cssSelector("#volumesWithRate_taxType"))
      case "Non-draught beer between 3.5% and 8.4% ABV (366 SPR)" => click(By.cssSelector("#volumesWithRate_taxType-2"))
      case "Draught beer between 1.3% and 3.4% ABV (371 SPR)"     => click(By.cssSelector("#volumesWithRate_taxType-3"))
      case "Draught beer between 3.5% and 8.4% ABV (376 SPR)"     => click(By.cssSelector("#volumesWithRate_taxType-4"))
    }

  override def enterMultipleDetails(textToEnter: String, text: String): Unit =
    text match {
      case "Total litres"           => enterText("volumesWithRate_totalLitres", textToEnter)
      case "Litres of pure alcohol" => enterText("volumesWithRate_pureAlcohol", textToEnter)
      case "Duty rate"              => enterText("volumesWithRate_dutyRate", textToEnter)
    }

  def enterDetailsFor361(mustSelectRateBand: Boolean = true): Unit = {
    checkURL
    if (mustSelectRateBand) clickRadioButton("Non-draught beer between 1.3% and 3.4% ABV (361 SPR)")
    enterMultipleDetails("9999.99", "Total litres")
    enterMultipleDetails("89.9999", "Litres of pure alcohol")
    enterMultipleDetails("19", "Duty rate")
    clickSaveAndContinueButton()
  }

  def enterDetailsFor371InCheckMode(): Unit = {
    checkNewURL
    clickRadioButton("Draught beer between 1.3% and 3.4% ABV (371 SPR)")
    enterMultipleDetails("7777.77", "Total litres")
    enterMultipleDetails("777.7777", "Litres of pure alcohol")
    enterMultipleDetails("77.77", "Duty rate")
    clickSaveAndContinueButton()
  }

  def changeTaxTypeFromCheckYourAnswers(): Unit = {
    checkNewDynamicURL("#taxType")
    clickRadioButton("Non-draught beer between 3.5% and 8.4% ABV (366 SPR)")
    clickSaveAndContinueButton()
  }

  def changeDetailsFromMultipleSprList(): Unit = {
    checkExistingDynamicURL("?index=0")
    clickRadioButton("Draught beer between 1.3% and 3.4% ABV (371 SPR)")
    enterMultipleDetails("8888.88", "Total litres")
    enterMultipleDetails("88.8800", "Litres of pure alcohol")
    enterMultipleDetails("22", "Duty rate")
    clickSaveAndContinueButton()
  }
}
