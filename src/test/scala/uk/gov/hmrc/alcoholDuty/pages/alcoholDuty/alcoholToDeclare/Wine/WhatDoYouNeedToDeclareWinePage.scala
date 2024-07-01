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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.alcoholToDeclare.Wine

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object WhatDoYouNeedToDeclareWinePage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/what-do-you-need-to-declare/Wine"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/change-what-do-you-need-to-declare/Wine"
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
      case "Between 1.3% and 3.4% ABV (tax type code 313)" => click on cssSelector("#rateBand_313")
      case "Between 3.5% and 8.4% ABV (tax type code 323)" => click on cssSelector("#rateBand_323")
      case "Between 8.5% and 22% ABV (tax type code 333)"  => click on cssSelector("#rateBand_333")
      case "Exceeding 22% ABV (tax type code 343)"         => click on cssSelector("#rateBand_343")
      case "Between 1.3% and 3.4% ABV (tax type code 353)" => click on cssSelector("#rateBand_353")
      case "Between 3.5% and 8.4% ABV (tax type code 358)" => click on cssSelector("#rateBand_358")
      case "Between 1.3% and 3.4% ABV (tax type code 363)" => click on cssSelector("#rateBand_363")
      case "Between 3.5% and 8.4% ABV (tax type code 368)" => click on cssSelector("#rateBand_368")
      case "Between 1.3% and 3.4% ABV (tax type code 373)" => click on cssSelector("#rateBand_373")
      case "Between 3.5% and 8.4% ABV (tax type code 378)" => click on cssSelector("#rateBand_378")
    }
}
