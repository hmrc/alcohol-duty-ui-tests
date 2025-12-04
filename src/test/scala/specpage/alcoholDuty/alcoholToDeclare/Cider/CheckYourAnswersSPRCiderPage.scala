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

object CheckYourAnswersSPRCiderPage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/alcoholic-products/Cider/declare/spr/check-your-answers"

  override def expectedPageHeader: Option[String] = Some("Check your answers")

  override def clickButton(text: String): Unit =
    text match {
      case "Change Description"        =>
        click(By.cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Cider/change/spr/multiple-duty-rates/eligible-volume#taxType']"))
      case "Change Total cider"        =>
        click(By.cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Cider/change/spr/multiple-duty-rates/eligible-volume#totalLitres']"))
      case "Change Total pure alcohol" =>
        click(By.cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Cider/change/spr/multiple-duty-rates/eligible-volume#pureAlcohol']"))
      case "Change Duty rate"          =>
        click(By.cssSelector("a[href='/manage-alcohol-duty/complete-return/alcoholic-products/Cider/change/spr/multiple-duty-rates/eligible-volume#dutyRate']"))
    }

  def continue(): Unit = {
    checkURL
    clickContinueButton()
  }
}
