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

package uk.gov.hmrc.alcoholDuty.pages.ECP

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object ECPCheckAnswers extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/adjustments/adjustment/declare/duty-value"
  override val title = "How would you like to be contacted?"

  override def expectedPageTitle: Option[String] = Some(
    "How would you like to be contacted? - Manage your Alcohol Duty - GOV.UK" //Add title when page is ready
  )

  override def expectedPageHeader: Option[String] = Some("How would you like to be contacted?")
}
