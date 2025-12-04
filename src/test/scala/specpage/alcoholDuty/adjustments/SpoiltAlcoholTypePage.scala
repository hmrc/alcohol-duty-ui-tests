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

object SpoiltAlcoholTypePage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/declare/spoilt-product/alcohol-type"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/change/change/spoilt-product/alcohol-type"

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Beer"                     => click on cssSelector("#Beer")
      case "Cider"                    => click on cssSelector("#Cider")
      case "Wine"                     => click on cssSelector("#Wine")
      case "Spirits"                  => click on cssSelector("#Spirits")
      case "Other fermented products" => click on cssSelector("#OtherFermentedProduct")
    }

  def selectAlcoholType(regime: String): Unit = {
    checkURL
    clickRadioButton(regime)
    clickSaveAndContinueButton()
  }
}
