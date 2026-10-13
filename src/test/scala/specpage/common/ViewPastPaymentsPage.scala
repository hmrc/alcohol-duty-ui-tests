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
import uk.gov.hmrc.selenium.webdriver.Driver

import scala.jdk.CollectionConverters.CollectionHasAsScala

object ViewPastPaymentsPage extends BasePage {

  override val url: String = TestConfiguration.url("alcohol-duty-returns-frontend") + "/view-payments"

  def viewPastYearPayments(): Unit = {
    checkURL
    clickHyperlink("View 2024 payments")
  }

  def clickManageLink(): Unit = {
    checkURL
    clickHyperlink("Manage")
  }

  def checkYouOweAmount(amount: String): Unit = {
    checkURL
    Driver.instance.findElement(By.cssSelector("p.govuk-heading-m span.govuk-heading-l")).getText shouldBe amount
  }

  def checkOutstandingPayments(expectedRows: Seq[(String, String, String)]): Unit = {
    checkURL
    val rows = Driver.instance
      .findElements(By.xpath("//table[caption[normalize-space()='Outstanding payments']]/tbody/tr"))
      .asScala
      .map { row =>
        val cells = row.findElements(By.tagName("td")).asScala.map(_.getText.trim).toSeq
        (cells(1).linesIterator.next(), cells(2), cells(4).linesIterator.next())
      }
      .toSeq
    rows shouldBe expectedRows
  }
}
