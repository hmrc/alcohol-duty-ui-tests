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

import org.openqa.selenium.By
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object DutyDueSpiritsPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Spirits/declare/duty-due"
  override val title = "You will owe £4,588.83"

  override def expectedPageTitle: Option[String] = Some(
    "You will owe £4,588.83 - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("You will owe £14,749.70")


  override def checkPageTitle(amountOnPageTitle: String): Unit = {
    driver.findElement(By tagName "h1").getText should equal("You will owe " + amountOnPageTitle)
  }

  override def checkPageErrorTitle(amountOnPageTitle: String): Unit = {
    driver.findElement(By tagName "h1").getText should equal("You will owe " + amountOnPageTitle)
  }
}
