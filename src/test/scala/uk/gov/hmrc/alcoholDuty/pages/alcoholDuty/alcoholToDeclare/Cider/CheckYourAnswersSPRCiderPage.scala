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

object CheckYourAnswersSPRCiderPage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/check-your-answers-spr/Cider"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/check-your-answers-spr/Cider"
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
      case "Change Description"        =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-multiple-spr-rates/Cider#taxType']")
      case "Change Total cider"        =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-multiple-spr-rates/Cider#totalLitres']")
      case "Change Total pure alcohol" =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-multiple-spr-rates/Cider#pureAlcohol']")
      case "Change Duty rate"          =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-multiple-spr-rates/Cider#dutyRate']")
    }
}
