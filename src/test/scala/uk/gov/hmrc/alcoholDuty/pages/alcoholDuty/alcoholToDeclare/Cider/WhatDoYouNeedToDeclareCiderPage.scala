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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.alcoholToDeclare.Cider

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object WhatDoYouNeedToDeclareCiderPage extends BasePage {

  override val url: String    =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/what-do-you-need-to-declare/Cider"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/change-what-do-you-need-to-declare/Cider"
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
      case "Between 1.3% and 3.4% ABV (tax type code 312)"                                                     => click on cssSelector("#rateBand_312")
      case "Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 322)" =>
        click on cssSelector("#rateBand_322")
      case "Sparkling cider between 5.6% and 8.4% ABV (tax type code 324)"                                     => click on cssSelector("#rateBand_324")
      case "Between 1.3% and 3.4% ABV (tax type code 352)"                                                     => click on cssSelector("#rateBand_352")
      case "Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 357)" =>
        click on cssSelector("#rateBand_357")
      case "Sparkling cider between 5.6% and 8.4% ABV (tax type code 359)"                                     => click on cssSelector("#rateBand_359")
      case "Between 1.3% and 3.4% ABV (tax type code 362)"                                                     => click on cssSelector("#rateBand_32")
      case "Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 367)" =>
        click on cssSelector("#rateBand_367")
      case "Sparkling cider between 5.6% and 8.4% ABV (tax type code 369)"                                     => click on cssSelector("#rateBand_369")
      case "Between 1.3% and 3.4% ABV (tax type code 372)"                                                     => click on cssSelector("#rateBand_372")
      case "Cider between 3.5% and 8.4% ABV and sparkling cider between 3.5% and 5.5% ABV (tax type code 377)" =>
        click on cssSelector("#rateBand_377")
      case "Sparkling cider between 5.6% and 8.4% ABV (tax type code 379)"                                     => click on cssSelector("#rateBand_379")
    }
}
