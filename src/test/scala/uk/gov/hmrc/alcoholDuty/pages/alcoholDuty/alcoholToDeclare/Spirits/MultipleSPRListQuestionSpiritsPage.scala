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

object MultipleSPRListQuestionSpiritsPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Spirits/declare/spr/multiple-duty-rates/eligible-volumes"
  override val title       = "Spirits with Small Producer Relief duty to declare"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Spirits with Small Producer Relief duty to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Spirits with Small Producer Relief duty to declare - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Spirits with Small Producer Relief duty to declare")

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Yes" => click on cssSelector("#multipleSPRList-yesNoValue")
      case "No"  => click on cssSelector("#multipleSPRList-yesNoValue-no")
    }

  override def clickButton(text: String): Unit =
    text match {
      case "Change hyperlink" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Spirits/declare/spr/multiple-duty-rates/eligible-volume?index=0']")
      case "Remove hyperlink" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Spirits/declare/spr/multiple-duty-rates/remove-volume?index=0']")
    }
}
