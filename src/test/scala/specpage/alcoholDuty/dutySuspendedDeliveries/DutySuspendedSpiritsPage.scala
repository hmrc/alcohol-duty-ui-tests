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

package specpage.alcoholDuty.dutySuspendedDeliveries

import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object DutySuspendedSpiritsPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/duty-suspended-deliveries/Spirits/report"
  override val newUrl: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/duty-suspended-deliveries/Spirits/change"

  override def enterMultipleDetails(textToEnter: String, text: String): Unit = {
    text match {
      case "Total Spirits"           => enterText("totalSpirits", textToEnter)
      case "Pure Alcohol In Spirits" => enterText("pureAlcoholInSpirits", textToEnter)
    }
  }

  def enterVolumes(): Unit = {
    checkURL
    enterMultipleDetails("2100.75", "Total Spirits")
    enterMultipleDetails("160.55", "Pure Alcohol In Spirits")
    clickSaveAndContinueButton()
  }
}
