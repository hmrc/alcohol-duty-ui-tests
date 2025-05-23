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

object DutySuspenseDeliveriesCheckYourAnswersPage extends BasePage {

  override val url: String =
    TestConfiguration.url(
      "alcohol-duty-returns-frontend"
    ) + "/complete-return/duty-suspended-deliveries/check-your-answers-duty-suspense"
  override val title       = "Check your answers"

  override def expectedPageTitle: Option[String]  = Some(
    "Check your answers - Manage your Alcohol Duty - GOV.UK"
  )
  override def expectedPageHeader: Option[String] = Some(
    "Check your answers"
  )

  override def clickButton(text: String): Unit =
    text match {
      case "Type of Alcohol"                                          =>
        click on xpath("(//dt[normalize-space()='Type of alcohol']")
      case "Beer"                     =>
        click on xpath("(//a[@href='/manage-alcohol-duty/complete-return/duty-suspended-deliveries/Beer/change'])[2]")
      case "Change"                                         =>
        click on xpath("(//a[@href='/manage-alcohol-duty/complete-return/duty-suspended-deliveries/change-which-duty-suspended-alcohol']")
      case "Beer"                    =>
        click on xpath("(//dt[normalize-space()='Beer']")
      case "Change"                                          =>
        click on xpath("(//a[@href='/manage-alcohol-duty/complete-return/duty-suspended-deliveries/Beer/change-duty-suspense']")

    }
}
