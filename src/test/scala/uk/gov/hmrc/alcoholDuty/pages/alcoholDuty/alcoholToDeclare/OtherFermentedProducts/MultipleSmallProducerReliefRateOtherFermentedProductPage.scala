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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.alcoholToDeclare.OtherFermentedProducts

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object MultipleSmallProducerReliefRateOtherFermentedProductPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/OtherFermentedProduct/declare/spr/multiple-duty-rates/eligible-volume"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/OtherFermentedProduct/change/spr/multiple-duty-rates/eligible-volume"
  override val title          = "Tell us about the other fermented products that is eligible for Small Producer Relief"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Tell us about the other fermented product that is eligible for Small Producer Relief - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Tell us about the other fermented product that is eligible for Small Producer Relief - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some(
    "Tell us about the other fermented product that is eligible for Small Producer Relief"
  )

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Non-draught other fermented products between 1.3% and 3.4% ABV (364 SPR)"                                               =>
        click on cssSelector("#volumesWithRate_taxType")
      case "Non-draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (369 SPR)" =>
        click on cssSelector("#volumesWithRate_taxType-2")
      case "Draught other fermented products between 1.3% and 3.4% ABV (374 SPR)"                                                   =>
        click on cssSelector("#volumesWithRate_taxType-3")
      case "Draught other fermented products between 3.5% and 8.4% ABV and sparkling cider between 5.6% and 8.4% ABV (379 SPR)"     =>
        click on cssSelector("#volumesWithRate_taxType-4")
    }

  override def enterMultipleDetails(textToEnter: String, text: String): Unit =
    text match {
      case "Total litres"           => enterText("volumesWithRate_totalLitres", textToEnter)
      case "Litres of pure alcohol" => enterText("volumesWithRate_pureAlcohol", textToEnter)
      case "Duty rate"              => enterText("volumesWithRate_dutyRate", textToEnter)
    }
}
