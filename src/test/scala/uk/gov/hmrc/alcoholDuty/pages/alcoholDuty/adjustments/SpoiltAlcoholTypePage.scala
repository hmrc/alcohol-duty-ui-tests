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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.adjustments

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object SpoiltAlcoholTypePage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/spoilt-alcohol-type"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/change-spoilt-alcohol-type"
  override val title          = "Which alcoholic product is spoilt?"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Which alcoholic product is spoilt? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Which alcoholic product is spoilt? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Which alcoholic product is spoilt?")

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Beer"                     => click on cssSelector("#Beer")
      case "Cider"                    => click on cssSelector("#Cider")
      case "Wine"                     => click on cssSelector("#Wine")
      case "Spirits"                  => click on cssSelector("#Spirits")
      case "Other fermented products" => click on cssSelector("#OtherFermentedProduct")
    }
}
