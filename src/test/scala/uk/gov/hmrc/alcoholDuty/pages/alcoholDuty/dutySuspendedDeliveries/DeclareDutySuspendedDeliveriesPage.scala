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

object DeclareDutySuspendedDeliveriesPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/do-you-need-to-declare-delivered-received-duty-suspended"
  override val title       = "Do you need to declare alcohol you delivered or received duty suspended?"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Do you need to declare alcohol you delivered or received duty suspended? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Do you need to declare alcohol you delivered or received duty suspended? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Do you need to declare alcohol you delivered or received duty suspended?")

  override def clickRadioButton(text: String): Unit = {
    text match {
      case "Yes" => click on cssSelector("#declare-duty-suspended-deliveries-input")
      case "No" => click on cssSelector("#declare-duty-suspended-deliveries-input-no")
    }
  }
}
