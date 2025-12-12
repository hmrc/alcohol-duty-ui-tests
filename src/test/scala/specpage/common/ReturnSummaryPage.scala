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

import org.openqa.selenium.By
import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object ReturnSummaryPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/check-return"

  override def clickButton(text: String): Unit =
    text match {
      case "Change Declared spirits duty"                  =>
        click(By.cssSelector(
          "a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Spirits/declare/check-your-answers']"
        ))
      case "Change Declared wine duty"                     =>
        click(By.cssSelector(
          "a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Wine/declare/check-your-answers']"
        ))
      case "Change Declared cider duty"                    =>
        click(By.cssSelector(
          "a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Cider/declare/check-your-answers']"
        ))
      case "Change Declared other fermented products duty" =>
        click(By.cssSelector(
          "a[href='/manage-alcohol-duty/complete-return/alcoholic-products/OtherFermentedProduct/declare/check-your-answers']"
        ))
      case "Change Declared beer duty"                     =>
        click(By.cssSelector(
          "a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Beer/declare/check-your-answers']"
        ))
      case "Change Adjustment duty value"                  =>
        click(By.cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/1']"))
      case "Change Duty suspended alcohol"                 =>
        click(By.cssSelector(
          "a[href='/manage-alcohol-duty/complete-return/duty-suspended-deliveries/check-your-answers']"
        ))
      case "Change Spirits production"                     =>
        click(By.cssSelector(
          "a[href='/manage-alcohol-duty/complete-return/quarterly-spirits-production/check-your-answers']"
        ))
    }

  def continue(): Unit = {
    checkURL
    clickAgreeAndSendReturnButton()
  }
  
  def clickChangeLink(text: String): Unit = {
    checkURL
    clickButton(text)
  }
}
