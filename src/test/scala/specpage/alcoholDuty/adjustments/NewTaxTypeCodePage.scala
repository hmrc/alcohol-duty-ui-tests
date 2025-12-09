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

object NewTaxTypeCodePage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/declare/repackaged/new-tax-type-code"
  override val newUrl: String =
    TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/change/repackaged/new-tax-type-code"

  override def enterDetails(textToEnter: String): Unit = {
    checkURL
    enterText("new-tax-type-code", textToEnter)
    clickSaveAndContinueButton()
  }

  def enterDetailsWithNewUrl(textToEnter: String): Unit = {
    checkNewURL
    enterText("new-tax-type-code", textToEnter)
    clickSaveAndContinueButton()
  }
}
