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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.alcoholToDeclare

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object WhatDoYouNeedToDeclarePage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/what-do-you-need-to-declare/Beer"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/change-what-do-you-need-to-declare/Beer"
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
      case "Between 1.3% and 3.4% ABV (tax type code 311)" => click on cssSelector("#rateBand_311")
      case "Between 3.5% and 8.4% ABV (tax type code 321)" => click on cssSelector("#rateBand_321")
      case "Between 8.5% and 22% ABV (tax type code 331)"  => click on cssSelector("#rateBand_331")
      case "Exceeding 22.1% ABV (tax type code 341)"       => click on cssSelector("#rateBand_341")
      case "Between 1.3% and 3.4% ABV (tax type code 351)" => click on cssSelector("#rateBand_351")
      case "Between 3.5% and 8.4% ABV (tax type code 356)" => click on cssSelector("#rateBand_356")
      case "Between 1.3% and 3.4% ABV (tax type code 361)" => click on cssSelector("#rateBand_361")
      case "Between 3.5% and 8.4% ABV (tax type code 366)" => click on cssSelector("#rateBand_366")
      case "Between 1.3% and 3.4% ABV (tax type code 371)" => click on cssSelector("#rateBand_371")
      case "Between 3.5% and 8.4% ABV (tax type code 376)" => click on cssSelector("#rateBand_376")
    }
}
