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

object CheckYourAnswersReturnsWinePage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/return-check-your-answers/Wine"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/return-check-your-answers/Wine"
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
      case "Change Wine to declare" =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-what-do-you-need-to-declare/Wine']")
      case "Change Wine duty" =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-how-much-do-you-need-to-declare/Wine']")
      case "Change Wine eligible for Small Producer Relief" =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-single-spr-rate/Wine']")
    }
}
