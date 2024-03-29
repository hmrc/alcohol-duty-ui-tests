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

object CheckYourAnswersPage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/return-check-your-answers"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/return-check-your-answers?index=0"
  override val title          = "Check your answers"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Check your answers - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Check your answers - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Check your answers")

  override def clickButton(text: String): Unit =
    text match {
      case "Change Name"                               =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-what-name-do-you-want-to-give-this-product']")
      case "Change Alcohol Strength"                   =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-what-is-this-products-alcohol-by-volume-strength']")
      case "Change Eligible for Draught Relief"        =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-is-this-product-eligible-for-draught-relief']")
      case "Change Eligible for Small Producer Relief" =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-is-this-product-eligible-for-small-producer-relief']")
      case "Change Tax Type Code"                      =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-what-is-this-products-tax-type']")
      case "Change Volume"                             =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-how-much-of-this-product-do-you-need-to-declare']")
      case "Change Duty Rate"                          =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-what-is-your-small-producer-duty-rate']")
    }
}
