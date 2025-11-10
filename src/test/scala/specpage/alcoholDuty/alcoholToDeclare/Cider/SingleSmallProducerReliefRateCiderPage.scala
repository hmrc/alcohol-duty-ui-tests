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

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object SingleSmallProducerReliefRateCiderPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Cider/declare/spr/eligible-volumes"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Cider/change/spr/eligible-volumes"
  override val title          = "Tell us about the cider that is eligible for Small Producer Relief"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Tell us about the cider that is eligible for Small Producer Relief - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Tell us about the cider that is eligible for Small Producer Relief - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some(
    "Tell us about the cider that is eligible for Small Producer Relief"
  )

  override def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: String): Unit = {
    val modifiedIndex = ordinalToNumber(index)
    text match {
      case "Non-draught cider between 1.3% and 3.4% ABV - Total litres"        =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Non-draught cider between 1.3% and 3.4% ABV - Pure alcohol litres" =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Non-draught cider between 1.3% and 3.4% ABV - SPR Rate"            =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Non-draught cider between 3.5% and 8.4% ABV - Total litres"        =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Non-draught cider between 3.5% and 8.4% ABV - Pure alcohol litres" =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Non-draught cider between 3.5% and 8.4% ABV - SPR Rate"            =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Non-draught sparkling cider between 5.6% and 8.4% ABV - Total litres" =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Non-draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres" =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Non-draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate" =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - Total litres"            =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - Pure alcohol litres"     =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught cider between 1.3% and 3.4% ABV - SPR Rate"                =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - Total litres"            =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - Pure alcohol litres"     =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught cider between 3.5% and 8.4% ABV - SPR Rate"                =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - Total litres" =>
        enterText("volumesWithRate_" + modifiedIndex + "_totalLitres", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - Pure alcohol litres" =>
        enterText("volumesWithRate_" + modifiedIndex + "_pureAlcohol", textToEnter)
      case "Draught sparkling cider between 5.6% and 8.4% ABV - SPR Rate" =>
        enterText("volumesWithRate_" + modifiedIndex + "_dutyRate", textToEnter)
    }
  }
}
