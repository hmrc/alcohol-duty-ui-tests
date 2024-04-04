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

object TaxTypePage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/what-is-this-products-tax-type"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/change-what-is-this-products-tax-type"
  override val title          = "Your product’s tax type code"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Your product’s tax type code - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Your product’s tax type code - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Your product’s tax type code")

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Cider, tax type code 352"                    => click on xpath("//input[@id='352_Cider']")
      case "Other fermented products, tax type code 301" =>
        click on xpath("//input[@value='301_OtherFermentedProduct']")
      case "Spirits, tax type code 370"                  => click on xpath("//input[@value='370_Spirits']")
      case "Wine, tax type code 378"                     => click on xpath("//input[@value='378_Wine']")
      case "Beer, tax type code 331"                     => click on xpath("//input[@value='331_Beer']")
      case "Beer, tax type code 311"                     => click on xpath("//input[@value='311_Beer']")
      case "Beer, tax type code 321"                     => click on xpath("//input[@value='321_Beer']")
      case "Spirits, tax type code 355"                  => click on xpath("//input[@value='355_Spirits']")
      case "Wine, tax type code 363"                     => click on xpath("//input[@value='363_Wine']")
      case "Cider, tax type code 377"                    => click on xpath("//input[@value='377_Cider']")
      case "Cider, tax type code 301"                    => click on xpath("//input[@value='301_Cider']")
      case "Wine, tax type code 333"                     => click on xpath("//input[@value='333_Wine']")
    }
}
