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

import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object AdjustmentCheckYourAnswersPage extends BasePage {

  override val url: String    = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/declare/check-your-answers"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/declare/check-your-answers?index=0"

  override def clickButton(text: String): Unit =
    text match {
      case "Adjustment" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/change/type']")
      case "Description" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/change/change/spoilt-product/alcohol-type']")
      case "Return period being adjusted" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/change/return-period']")
      case "Tax type" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/change/tax-type-code']")
      case "Original tax type" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/change/tax-type-code']")
      case "SPR duty rate" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/change/spr/eligible-volume']")
      case "New SPR duty rate" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/change/repackaged/new-spr-duty-rate']")
      case "Volume" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/change/spr/eligible-volume']")
      case "New tax type" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/change/repackaged/new-tax-type-code']")
      case "Duty value" =>
        click on cssSelector("a[href='/manage-alcohol-duty/complete-return/adjustments/adjustment/change/spoilt-product/volume']")
    }

  def continue(): Unit = {
    checkURL
    clickSaveAndContinueButton()
  }
}
