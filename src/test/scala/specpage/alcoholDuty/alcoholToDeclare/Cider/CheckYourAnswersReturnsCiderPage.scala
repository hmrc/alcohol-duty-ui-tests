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

package specpage.alcoholDuty.alcoholToDeclare.Cider

import org.openqa.selenium.By
import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object CheckYourAnswersReturnsCiderPage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Cider/declare/check-your-answers"

  override def clickButton(text: String): Unit =
    text match {
      case "Change Cider to declare"                         =>
        click(By.cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Cider/change/products-to-include']"))
      case "Change Cider duty"                               =>
        click(By.cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Cider/change/volumes']"))
      case "Change Cider eligible for Small Producer Relief" =>
        click(By.cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Cider/change/spr/eligible-volumes']"))
    }

  def continue(): Unit = {
    checkURL
    clickSaveAndContinueButton()
  }

  def clickChangeLink(text: String): Unit = {
    checkURL
    clickButton(text)
  }
}
