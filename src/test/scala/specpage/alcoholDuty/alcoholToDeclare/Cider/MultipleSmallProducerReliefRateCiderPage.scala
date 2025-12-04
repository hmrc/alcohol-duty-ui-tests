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

import org.openqa.selenium.By
import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object MultipleSmallProducerReliefRateCiderPage extends BasePage {

  override val url: String    = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/Cider/declare/spr/multiple-duty-rates/eligible-volume"
  override val newUrl: String = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/Cider/change/spr/multiple-duty-rates/eligible-volume"

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Non-draught cider between 1.3% and 3.4% ABV (362 SPR)"                                               =>
        click(By.cssSelector("#volumesWithRate_taxType"))
      case "Non-draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (367 SPR)" =>
        click(By.cssSelector("#volumesWithRate_taxType-2"))
      case "Non-draught sparkling cider between 5.6% and 8.4% ABV (369 SPR)"                                     =>
        click(By.cssSelector("#volumesWithRate_taxType-3"))
      case "Draught cider between 1.3% and 3.4% ABV (372 SPR)"                                                   =>
        click(By.cssSelector("#volumesWithRate_taxType-4"))
      case "Draught cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (377 SPR)"     =>
        click(By.cssSelector("#volumesWithRate_taxType-5"))
      case "Draught sparkling cider between 5.6% and 8.4% ABV (379 SPR)"                                         =>
        click(By.cssSelector("#volumesWithRate_taxType-6"))
    }

  override def enterMultipleDetails(textToEnter: String, text: String): Unit =
    text match {
      case "Total litres"           => enterText("volumesWithRate_totalLitres", textToEnter)
      case "Litres of pure alcohol" => enterText("volumesWithRate_pureAlcohol", textToEnter)
      case "Duty rate"              => enterText("volumesWithRate_dutyRate", textToEnter)
    }

  def enterDetailsFor367(): Unit = {
    checkURL
    enterMultipleDetails("7999.99", "Total litres")
    enterMultipleDetails("77.9900", "Litres of pure alcohol")
    enterMultipleDetails("20.99", "Duty rate")
    clickSaveAndContinueButton()
  }
}
