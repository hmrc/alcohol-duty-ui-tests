/*
 * Copyright 2026 HM Revenue & Customs
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

package specpage.ECP

import org.openqa.selenium.By
import specpage.BasePage
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration

object ECPBeforeYouStartPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-contact-preferences-frontend") + "/before-you-start"

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Email me when I have a message in my account" => click(By.cssSelector("#contactPreferenceEmail"))
      case "Continue receiving letters by post"            => click(By.cssSelector("#contactPreferencePost"))
    }

  def continueByEmail(email: String): Unit = {
    checkURL
    clickRadioButton("Email me when I have a message in my account")
    enterText("emailAddress", email)
    clickContinueButton()
  }

  def continueByPost(): Unit = {
    checkURL
    clickRadioButton("Continue receiving letters by post")
    clickContinueButton()
  }

}
