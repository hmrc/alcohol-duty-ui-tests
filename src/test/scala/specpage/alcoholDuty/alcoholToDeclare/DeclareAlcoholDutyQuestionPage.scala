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

package specpage.alcoholDuty.alcoholToDeclare

import org.openqa.selenium.By
import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object DeclareAlcoholDutyQuestionPage extends BasePage {

  override val url: String = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/do-you-need-to-declare"

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Yes" => click(By.cssSelector("#declareAlcoholDutyQuestion-yesNoValue"))
      case "No"  => click(By.cssSelector("#declareAlcoholDutyQuestion-yesNoValue-no"))
    }

  def declareAlcohol(declaringAlcohol: Boolean): Unit = {
    checkURL
    if (declaringAlcohol) clickRadioButton("Yes")
    else clickRadioButton("No")
    clickSaveAndContinueButton()
  }
}
