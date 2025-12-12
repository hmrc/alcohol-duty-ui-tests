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

package specpage.alcoholDuty.adjustments

import org.openqa.selenium.By
import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object AdjustmentListPage extends BasePage {

  override val url: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/1"

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Yes" => click(By.cssSelector("#adjustment-list-yes-no-value"))
      case "No"  => click (By.cssSelector("#adjustment-list-yes-no-value-no"))
    }

  override def clickButton(buttonText: String): Unit =
    buttonText match {
      case "Change Hyperlink" =>
        click(By.cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/declare/check-your-answers?index=0']"))
      case "Remove Hyperlink" =>
        click(By.cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/declare/remove-adjustment?index=0']"))
    }

  def addAnother(adding: Boolean): Unit = {
    checkURL
    if (adding) clickRadioButton("Yes")
    else clickRadioButton("No")
    clickSaveAndContinueButton()
  }

  def selectHyperlink(text: String): Unit = {
    checkURL
    clickButton(text)
  }
}
