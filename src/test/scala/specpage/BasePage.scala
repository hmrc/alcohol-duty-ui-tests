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

package specpage
import org.openqa.selenium.support.ui.{ExpectedConditions, FluentWait, Wait}
import org.openqa.selenium.{By, WebDriver, WebElement}
import org.scalatest.Assertion
import org.scalatest.concurrent.Eventually
import org.scalatest.matchers.should.Matchers
import org.scalatestplus.selenium.{Page, WebBrowser}
import uk.gov.hmrc.alcoholDuty.driver.BrowserDriver
import uk.gov.hmrc.selenium.component.PageObject
import uk.gov.hmrc.selenium.webdriver.Driver

import java.time.format.DateTimeFormatter
import java.time.{Duration, LocalDate}
import java.util.Locale
import scala.jdk.CollectionConverters.CollectionHasAsScala
import scala.util.matching.Regex

trait BasePage extends Page with PageObject with Matchers with BrowserDriver with Eventually with WebBrowser {
  override val url: String = ""
  val newUrl: String       = ""
  val title: String        = ""
  val urlPattern: Regex    = "^(https?://)?([\\w.-]+)?(\\.[a-z]{2,6})([/\\w .-]*)*\\??([^#\\s]*)#?([^\\s]*)$".r

  def validateUrl(url: String): Boolean =
    url match {
      case urlPattern(_, _, _, _, _, _) => true
      case _                            => false
    }

  /** Fluent Wait config * */
  def fluentWait: Wait[WebDriver] = new FluentWait[WebDriver](Driver.instance)
    .withTimeout(Duration.ofSeconds(20))
    .pollingEvery(Duration.ofMillis(500))

  def waitForPageHeader: WebElement = fluentWait.until(ExpectedConditions.visibilityOfElementLocated(By.tagName("h1")))

  /** Page assertions * */
  def checkURL: Assertion =
    if (url.contains("...")) {
      fluentWait.until(ExpectedConditions.urlMatches(url.replace("...", "") + ".*"))
      Driver.instance.getCurrentUrl should fullyMatch regex (url.replace("...", "") + ".*").r
    } else {
      fluentWait.until(ExpectedConditions.urlToBe(url))
      Driver.instance.getCurrentUrl should equal(url)
    }

  def checkNewURL: Assertion =
    if (newUrl.contains("...")) {
      fluentWait.until(ExpectedConditions.urlMatches(newUrl.replace("...", "") + ".*"))
      Driver.instance.getCurrentUrl should fullyMatch regex (newUrl.replace("...", "") + ".*").r
    } else {
      fluentWait.until(ExpectedConditions.urlToBe(newUrl))
      Driver.instance.getCurrentUrl should equal(newUrl)
    }

  def checkNewDynamicURL(urlSuffix: String): Unit = {
    val expectedUrl = newUrl + urlSuffix
    fluentWait.until(ExpectedConditions.urlToBe(expectedUrl))
  }

  def checkExistingDynamicURL(urlSuffix: String): Unit = {
    val expectedUrl = url + urlSuffix
    fluentWait.until(ExpectedConditions.urlToBe(expectedUrl))
  }

  def clickSubmitButton(): Unit = click(By.cssSelector("#submit"))

  def clickECPSubmitButton(): Unit = click(By.cssSelector("#submitButton"))

  def clickSaveAndContinueButton(): Unit = click(By.id("saveAndContinueButton"))

  def clickConfirmAndContinueButton(): Unit = click(By.id("confirmAndContinueButton"))

  def clickContinueButton(): Unit = click(By.id("continueButton"))

  def clickBackButton(): Unit = click(By.xpath("//a[normalize-space()='Back']"))

  def enterText(id: String, textToEnter: String): Unit =
    sendKeys(By.id(id), textToEnter)

  def enterDetails(data: String): Unit = {}

  def enterMultipleDetails(textToEnter: String, text: String): Unit = {}

  def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: String): Unit = {}

  def clickRadioButton(text: String): Unit             =
    Driver.instance.findElements(By.tagName("label")).asScala.filter(_.getText.trim == text).head.click()

  def clickCheckBox(text: String): Unit =
    Driver.instance.findElements(By.tagName("label")).asScala.filter(_.getText.trim == text).head.click()

  def clickButton(buttonText: String): Unit = click(By.partialLinkText(buttonText))

  def clickHyperlink(text: String): Unit = click(By.linkText(text))

  def periodKey: String = {
    val adjustedYear = if (currentMonth <= 3) previousYear else year
    val yearSuffix   = adjustedYear.toString.takeRight(2) // Last two digits of the year

    // Generate period key based on the first month of the current quarter
    // This is the most recent month with quarterly spirits
    generateMonth(currentMonth) match {
      case 1  => s"${yearSuffix}AL" // First month of Q1 -> AL
      case 4  => s"${yearSuffix}AC" // First month of Q2 -> AC
      case 7  => s"${yearSuffix}AF" // First month of Q3 -> AF
      case 10 => s"${yearSuffix}AI" // First month of Q4 -> AI
    }
  }

  def generateMonth(month: Int): Int =
    month match {
      case m if m >= 1 && m <= 3   => 1
      case m if m >= 4 && m <= 6   => 4
      case m if m >= 7 && m <= 9   => 7
      case m if m >= 10 && m <= 12 => 10
      case _                       => throw new IllegalArgumentException(s"Invalid month: $month. Valid values are 1 to 12.")

    }

  val currentDate: LocalDate = LocalDate.now()
  val year: Int              = currentDate.getYear
  val previousYear: Int      = year - 1
  val currentMonth: Int      = currentDate.getMonthValue

  val formatter: DateTimeFormatter = DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(Locale.UK)

  def get12MonthsAgoPeriodKey: String                         =
    s"""${currentDate.minusMonths(12).getYear.toString.takeRight(2)}A${(currentDate
      .minusMonths(12)
      .getMonthValue + 64).toChar}"""

  def enterDate(month: String, year: String): Unit = {}

  def selectCheckBoxes(choiceOfCheckBox: Array[String]): Unit =
    for (i <- choiceOfCheckBox.indices)
      selectCheckbox(By.xpath(s"//label[normalize-space()='${choiceOfCheckBox(i)}']"))

  def ordinalToNumber(ordinal: String): Int = ordinal.toLowerCase() match {
    case "first"       => 0
    case "second"      => 1
    case "third"       => 2
    case "fourth"      => 3
    case "fifth"       => 4
    case "sixth"       => 5
    case "seventh"     => 6
    case "eighth"      => 7
    case "ninth"       => 8
    case "tenth"       => 9
    case "eleventh"    => 10
    case "twelfth"     => 11
    case "thirteenth"  => 12
    case "fourteenth"  => 13
    case "fifteenth"   => 14
    case "sixteenth"   => 15
    case "seventeenth" => 16
    case "eighteenth"  => 17
    case "nineteenth"  => 18
    case "twentieth"   => 19
    case _             => throw new IllegalArgumentException("Invalid ordinal")
  }

  def clickAgreeAndSendReturnButton(): Unit = click(By.cssSelector("#continueButton"))

  def getSpecificMonth: String =
    currentDate.minusMonths(12).format(formatter)
}
