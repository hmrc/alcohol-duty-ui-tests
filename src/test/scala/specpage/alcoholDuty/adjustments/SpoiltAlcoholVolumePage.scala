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

package specpage.alcoholDuty.adjustments

import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object SpoiltAlcoholVolumePage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/declare/spoilt-product/volume"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/change/spoilt-product/volume"

  override def enterMultipleDetails(textToEnter: String, text: String): Unit =
    text match {
      case "Total Litres"           => enterText("volumes_totalLitresVolume", textToEnter)
      case "Litres Of Pure Alcohol" => enterText("volumes_pureAlcoholVolume", textToEnter)
      case "Duty Paid"              => enterText("volumes_duty", textToEnter)
    }

  def enterVolumes(): Unit = {
    checkURL
    enterMultipleDetails("3000.75", "Total Litres")
    enterMultipleDetails("250.5500", "Litres Of Pure Alcohol")
    enterMultipleDetails("3255.55", "Duty Paid")
    clickSaveAndContinueButton()
  }

  def enterVolumesWithNewUrl(total: String, pureAlcohol: String, dutyRate: String): Unit = {
    checkNewURL
    enterMultipleDetails(total, "Total Litres")
    enterMultipleDetails(pureAlcohol, "Litres Of Pure Alcohol")
    enterMultipleDetails(dutyRate, "Duty Paid")
    clickSaveAndContinueButton()
  }
}
