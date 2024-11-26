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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.quarterlySpiritsQuestion

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object QuarterlySpiritsCheckYourAnswersPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/spirits-check-your-answers"
  override val title       = "Check your answers"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Check your answers - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Check your answers - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Check your answers")

  override def clickButton(text: String): Unit =
    text match {
      case "Change total of all spirits"   =>
        click on cssSelector(
          "a[href='/manage-alcohol-duty/change-what-is-the-total-volume-of-spirits-you-made-this-quarter']"
        )
      case "Change Scotch Whisky"          =>
        click on xpath("(//a[@href='/manage-alcohol-duty/change-how-much-whiskey-have-you-made'])[1]")
      case "Change Irish Whiskey"          =>
        click on xpath("(//a[@href='/manage-alcohol-duty/change-how-much-whiskey-have-you-made'])[2]")
      case "Change type of spirits"        =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-which-of-these-spirits-have-you-made']")
      case "Change other spirits produced" =>
        click on cssSelector("a[href='/manage-alcohol-duty/change-tell-us-about-the-other-spirits-you-have-produced']")
    }
}
