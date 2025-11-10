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

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object WhatDoYouNeedToDeclareOtherFermentedProductPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/OtherFermentedProduct/declare/products-to-include"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/OtherFermentedProduct/change/products-to-include"
  override val title          = "What do you need to declare?"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: What do you need to declare? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "What do you need to declare? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("What do you need to declare?")

  override def clickCheckBox(text: String): Unit =
    text match {
      case "Between 1.3% and 3.4% ABV (tax type code 314)" => click on cssSelector("#rateBand_314")
      case "Between 3.5% and 8.4% ABV (tax type code 324)" => click on cssSelector("#rateBand_324")
      case "Between 8.5% and 22% ABV (tax type code 334)"  => click on cssSelector("#rateBand_334")
      case "Exceeding 22% ABV (tax type code 344)"         => click on cssSelector("#rateBand_344")
      case "Between 1.3% and 3.4% ABV (tax type code 354)" => click on cssSelector("#rateBand_354")
      case "Between 3.5% and 8.4% ABV (tax type code 359)" => click on cssSelector("#rateBand_359")
      case "Between 1.3% and 3.4% ABV (tax type code 364)" => click on cssSelector("#rateBand_364")
      case "Between 3.5% and 8.4% ABV (tax type code 369)" => click on cssSelector("#rateBand_369")
      case "Between 1.3% and 3.4% ABV (tax type code 374)" => click on cssSelector("#rateBand_374")
      case "Between 3.5% and 8.4% ABV (tax type code 379)" => click on cssSelector("#rateBand_379")
    }
}
