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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.dutySuspendedDeliveries

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object DutySuspendedDeliveriesCheckYourAnswersPage extends BasePage {

  override val url: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/check-your-duty-suspended-deliveries"
  override val title       = "Check your answers"

  override def expectedPageTitle: Option[String]  = Some(
    "Check your answers - Manage your Alcohol Duty - GOV.UK"
  )
  override def expectedPageHeader: Option[String] = Some(
    "Check your answers"
  )

  override def clickButton(text: String): Unit =
    text match {
      case "Change total net quantity of duty suspended beer"                                          =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-your-beer-in-duty-suspense']")
      case "Change total net quantity of pure alcohol in your duty suspended beer"                     =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-your-beer-in-duty-suspense']")
      case "Change total net quantity of duty suspended cider"                                         =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-your-cider-in-duty-suspense']")
      case "Change total net quantity of pure alcohol in your duty suspended cider"                    =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-your-cider-in-duty-suspense']")
      case "Change total net quantity of duty suspended wine"                                          =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-your-wine-in-duty-suspense']")
      case "Change total net quantity of pure alcohol in your duty suspended wine"                     =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-your-wine-in-duty-suspense']")
      case "Change total net quantity of duty suspended spirits"                                       =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-your-spirits-in-duty-suspense']")
      case "Change total net quantity of pure alcohol in your duty suspended spirits"                  =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-your-spirits-in-duty-suspense']")
      case "Change total net quantity of duty suspended other fermented products"                      =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-your-other-fermented-in-duty-suspense']")
      case "Change total net quantity of pure alcohol in your duty suspended other fermented products" =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-your-other-fermented-in-duty-suspense']")
    }
}
