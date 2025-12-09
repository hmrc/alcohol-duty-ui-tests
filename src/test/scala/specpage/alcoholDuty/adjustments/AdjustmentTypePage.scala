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

object AdjustmentTypePage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/declare/type"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/change/type"
  
  override def clickRadioButton(text: String): Unit =
    text match {
      case "Under-declaration"           => click(By.cssSelector("#under-declaration"))
      case "Over-declaration"            => click(By.cssSelector("#over-declaration"))
      case "Repackaged draught products" => click(By.cssSelector("#repackaged-draught-products"))
      case "Spoilt"                      => click(By.cssSelector("#spoilt"))
      case "Drawback"                    => click(By.cssSelector("#drawback"))
    }
    
  def selectAdjustmentType(adjustmentType: String): Unit = {
    checkURL
    clickRadioButton(adjustmentType)
    clickSaveAndContinueButton()
  }

  def selectAdjustmentTypeWithNewUrl(adjustmentType: String): Unit = {
    checkNewURL
    clickRadioButton(adjustmentType)
    clickSaveAndContinueButton()
  }
}
