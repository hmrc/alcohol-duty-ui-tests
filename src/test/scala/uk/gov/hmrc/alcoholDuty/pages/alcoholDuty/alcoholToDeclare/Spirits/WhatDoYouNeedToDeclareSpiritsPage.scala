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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.alcoholToDeclare.Spirits

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object WhatDoYouNeedToDeclareSpiritsPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/what-do-you-need-to-declare/Spirits"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/change-what-do-you-need-to-declare/Spirits"
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
      case "Between 1.3% and 3.4% ABV (tax type code 315)" => click on cssSelector("#rateBand_315")
      case "Between 3.5% and 8.4% ABV (tax type code 325)" => click on cssSelector("#rateBand_325")
      case "Between 8.5% and 22% ABV (tax type code 335)"  => click on cssSelector("#rateBand_335")
      case "Exceeding 22% ABV (tax type code 345)"         => click on cssSelector("#rateBand_345")
      case "Between 1.3% and 3.4% ABV (tax type code 355)" => click on cssSelector("#rateBand_355")
      case "Between 3.5% and 8.4% ABV (tax type code 360)" => click on cssSelector("#rateBand_360")
      case "Between 1.3% and 3.4% ABV (tax type code 365)" => click on cssSelector("#rateBand_365")
      case "Between 3.5% and 8.4% ABV (tax type code 370)" => click on cssSelector("#rateBand_370")
      case "Between 1.3% and 3.4% ABV (tax type code 375)" => click on cssSelector("#rateBand_375")
      case "Between 3.5% and 8.4% ABV (tax type code 380)" => click on cssSelector("#rateBand_380")
    }
}
