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

package specpage.alcoholDuty.alcoholToDeclare.OtherFermentedProducts

import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object HowMuchYouNeedToDeclareOtherFermentedProductPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/OtherFermentedProduct/declare/volumes"
  override val newUrl: String =
    TestConfiguration.url(
      "alcohol-duty-returns-frontend"
    ) + "/complete-return/alcoholic-products/OtherFermentedProduct/change/volumes"
  override val title          = "Tell us about other fermented products you need to declare"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Tell us about other fermented products you need to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Tell us about other fermented products you need to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Tell us about other fermented products you need to declare")

  override def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: String): Unit = {
    val modifiedIndex = ordinalToNumber(index)
    text match {
      case "Standard other fermented products between 1.3% and 3.4% ABV - Total litres" =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Standard other fermented products between 1.3% and 3.4% ABV - Pure alcohol" =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Standard other fermented products between 3.5% and 8.4% ABV - Total litres" =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Standard other fermented products between 3.5% and 8.4% ABV - Pure alcohol" =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Standard other fermented products between 8.5% and 22% ABV - Total litres"  =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Standard other fermented products between 8.5% and 22% ABV - Pure alcohol"  =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Standard other fermented products at or above 22.1% ABV - Total litres"     =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Standard other fermented products at or above 22.1% ABV - Pure alcohol"     =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught other fermented products between 1.3% and 3.4% ABV - Total litres"  =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught other fermented products between 1.3% and 3.4% ABV - Pure alcohol"  =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught other fermented products between 3.5% and 8.4% ABV - Total litres"  =>
        enterText("volumes_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught other fermented products between 3.5% and 8.4% ABV - Pure alcohol"  =>
        enterText("volumes_" + modifiedIndex + "_pureAlcohol", textToEnter)
    }
  }
}
