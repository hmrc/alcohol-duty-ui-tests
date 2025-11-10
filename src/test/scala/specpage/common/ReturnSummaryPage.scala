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

package specpage.common

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage
import org.openqa.selenium.By
import org.scalatest.Assertion

object  ReturnSummaryPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/check-return"
  override val title       = "The duty due for this return is"

  override def expectedPageTitle: Option[String] = Some(
    "The duty due for this return is £14,749.70 - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some(
    "The duty due for this return is £14,749.70"
  )

  override def checkPageTitle(): Assertion =
    pageTitle should startWith(title)

  override def checkPageHeader(): Assertion =
    driver.findElement(By tagName "h1").getText should startWith(title)

  override def clickButton(text: String): Unit =
    text match {
      case "Change Declared spirits duty"                  =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Spirits/declare/check-your-answers']")
      case "Change Declared wine duty"                     =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Wine/declare/check-your-answers']")
      case "Change Declared cider duty"                    =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Cider/declare/check-your-answers']")
      case "Change Declared other fermented products duty" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/OtherFermentedProduct/declare/check-your-answers']")
      case "Change Declared beer duty"                     =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Beer/declare/check-your-answers']")
      case "Change Adjustment duty value"                  =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/1']")
      case "Change Duty suspended alcohol" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/duty-suspended-deliveries/check-your-answers']")
      case "Change Spirits production" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/quarterly-spirits-production/check-your-answers']")
    }
}
