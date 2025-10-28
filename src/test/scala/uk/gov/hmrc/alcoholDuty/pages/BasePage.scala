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

package uk.gov.hmrc.alcoholDuty.pages
import org.openqa.selenium.support.ui.{ExpectedConditions, FluentWait, Wait}
import org.openqa.selenium.{By, WebDriver, WebElement}
import org.scalatest.Assertion
import org.scalatest.concurrent.Eventually
import org.scalatest.matchers.should.Matchers
import org.scalatestplus.selenium.{Page, WebBrowser}
import uk.gov.hmrc.alcoholDuty.driver.BrowserDriver

import java.time.format.DateTimeFormatter
import java.time.{Duration, LocalDate}
import java.util.Locale
import scala.jdk.CollectionConverters.CollectionHasAsScala
import scala.util.matching.Regex

trait BasePage extends Page with Matchers with BrowserDriver with Eventually with WebBrowser {
  override val url: String = ""
  val newUrl: String = ""
  val title: String = ""
  val urlPattern: Regex = "^(https?://)?([\\w.-]+)?(\\.[a-z]{2,6})([/\\w .-]*)*\\??([^#\\s]*)#?([^\\s]*)$".r

  def validateUrl(url: String): Boolean =
    url match {
      case urlPattern(_, _, _, _, _, _) => true
      case _ => false
    }

  /** Fluent Wait config * */
  var fluentWait: Wait[WebDriver] = new FluentWait[WebDriver](driver)
    .withTimeout(Duration.ofSeconds(20))
    .pollingEvery(Duration.ofMillis(500))

  def waitForPageHeader: WebElement = fluentWait.until(ExpectedConditions.visibilityOfElementLocated(By.tagName("h1")))

  /** Page assertions * */
  def expectedPageTitle: Option[String] = None

  def expectedPageErrorTitle: Option[String] = None

  def expectedPageHeader: Option[String] = None

  def pageHeader: Option[String] = {
    waitForPageHeader
    val header: Option[String] = find(tagName("h1")).map(_.text)
    if (header.get.takeRight(2) == " ?")
      Some(header.get.replaceAll(" \\?$", "?"))
    else
      header
  }

  private val expectedPageTitleList = expectedPageTitle.map(_.split(";").toList)
  private val expectedPageErrorTitleList = expectedPageErrorTitle.map(_.split(";").toList)
  private val expectedPageHeaderList = expectedPageHeader.map(_.split(";").toList)

  def checkPageTitle(): Assertion = {
    fluentWait.until(ExpectedConditions.visibilityOfElementLocated(By.tagName("h1")))
    expectedPageTitleList should contain(List(pageTitle))
  }

  def checkPageErrorTitle(): Assertion = {
    //    fluentWait.until(ExpectedConditions.visibilityOfElementLocated(By.tagName("h1")))
    fluentWait.until(ExpectedConditions.visibilityOfElementLocated(By.className("govuk-error-summary__title")))
    expectedPageErrorTitleList should contain(List(pageTitle))
  }

  def enterText(id: String, textToEnter: String): Unit = {
    driver.findElement(By.id(id)).clear()
    driver.findElement(By.id(id)).sendKeys(textToEnter)
  }

  def checkURL: Assertion =
    if (url.contains("...")) {
      fluentWait.until(ExpectedConditions.urlMatches(url.replace("...", "") + ".*"))
      driver.getCurrentUrl should fullyMatch regex (url.replace("...", "") + ".*").r
    } else {
      fluentWait.until(ExpectedConditions.urlToBe(url))
      driver.getCurrentUrl should equal(url)
    }

  def checkNewURL: Assertion =
    if (newUrl.contains("...")) {
      fluentWait.until(ExpectedConditions.urlMatches(newUrl.replace("...", "") + ".*"))
      driver.getCurrentUrl should fullyMatch regex (newUrl.replace("...", "") + ".*").r
    } else {
      fluentWait.until(ExpectedConditions.urlToBe(newUrl))
      driver.getCurrentUrl should equal(newUrl)
    }

  def checkNewDynamicURL(urlSuffix: String): Unit = {
    val expectedUrl = newUrl + urlSuffix
    if (url.contains("...")) {
      fluentWait.until(ExpectedConditions.urlMatches(url.replace("...", "") + ".*"))
      driver.getCurrentUrl should fullyMatch regex (url.replace("...", "") + ".*").r
    } else {
      fluentWait.until(ExpectedConditions.urlToBe(expectedUrl))
      driver.getCurrentUrl should equal(expectedUrl)
    }
  }

  def checkExistingDynamicURL(urlSuffix: String): Unit = {
    val expectedUrl = url + urlSuffix
    if (url.contains("...")) {
      fluentWait.until(ExpectedConditions.urlMatches(url.replace("...", "") + ".*"))
      driver.getCurrentUrl should fullyMatch regex (url.replace("...", "") + ".*").r
    } else {
      fluentWait.until(ExpectedConditions.urlToBe(expectedUrl))
      driver.getCurrentUrl should equal(expectedUrl)
    }
  }

  def checkPageHeader(): Assertion = {
    fluentWait.until(ExpectedConditions.textToBe(By.cssSelector("h1"), expectedPageHeader.get))
    expectedPageHeaderList should contain(List(pageHeader.get))
  }

  def clickSubmitButton(): Unit = click on cssSelector("#submit")

  def clickECPSubmitButton(): Unit = click on cssSelector("#submitButton")

  def clickSaveAndContinueButton(): Unit = click on id("saveAndContinueButton")

  def clickConfirmAndContinueButton(): Unit = click on id("confirmAndContinueButton")

  def clickContinueButton(): Unit = click on id("continueButton")

  def clickBackButton(): Unit = click on xpath("//a[normalize-space()='Back']")

  def enterDetails(data: String): Unit = {}

  def enterMultipleDetails(textToEnter: String, text: String): Unit = {}

  def enterMultipleDetailsWithIndex(textToEnter: String, text: String, index: String): Unit = {}

  def clickRadioButton(text: String): Unit =
    driver.findElements(By.tagName("label")).asScala.filter(_.getText.trim == text).head.click()

  def clickCheckBox(text: String): Unit =
    driver.findElements(By.tagName("label")).asScala.filter(_.getText.trim == text).head.click()

  def checkPageErrorSummaryTitle(errorSummaryTitle: String): Unit = {
    val actualErrorSummaryTitle = driver.findElement(By.className("govuk-error-summary__title")).getText
    actualErrorSummaryTitle should be(errorSummaryTitle)
  }

  def checkPageErrorMessage(errorMessage: String): Unit = {
    val actualErrorMessage =
      driver.findElement(By.cssSelector(".govuk-error-summary__body")).getText.trim.replaceAll("\n", ",")
    assert(actualErrorMessage.contains(errorMessage))
  }

  def checkListOfErrorMessages(expectedErrorMessages: List[String]): Unit =
    fluentWait.until(
      ExpectedConditions.textToBePresentInElementLocated(
        By.cssSelector(".govuk-error-summary__body"),
        expectedErrorMessages.mkString("\n")
      )
    )

  private def errorMessage() = driver.findElement(By.cssSelector(".govuk-error-summary__body"))

  def listOfErrorMessages(): List[String] = errorMessage().getText.split("\n").toList

  def checkDynamicPageHeader(text: String): Unit =
    text match {
      case "Under-declaration" =>
        driver.findElement(By.xpath("//span[@id='adjustment-return-period-section']")).getText.trim.replaceAll("This section is:\n", "") should equal(
          "Adjust for under-declared alcohol"
        )
      case "Over-declaration" =>
        driver.findElement(By.xpath("//span[@id='adjustment-return-period-section']")).getText.trim.replaceAll("This section is:\n", "") should equal(
          "Adjust for over-declared alcohol"
        )
      case "Spoilt" =>
        driver.findElement(By.xpath("//span[@id='adjustment-return-period-section']")).getText.trim.replaceAll("This section is:\n", "") should equal(
          "Adjust for spoilt alcohol"
        )
      case "Drawback" =>
        driver.findElement(By.xpath("//span[@id='adjustment-return-period-section']")).getText.trim.replaceAll("This section is:\n", "") should equal(
          "Adjust for duty drawback"
          //(By.xpath("//span[@id='when-did-you-pay-duty-section']"))
        )
      case "Repackaged draught products" =>
        driver.findElement(By.xpath("//span[@id='adjustment-return-period-section']")).getText.trim.replaceAll("This section is:\n", "") should equal(
          "Adjust for repackaged draught products"
        )
    }

  def clickButton(buttonText: String): Unit = click on partialLinkText(buttonText)

  def pageData: Map[String, String] = driver
    .findElements(By.cssSelector(".govuk-summary-list__row"))
    .asScala
    .flatMap { row =>
      val key = row.findElement(By.cssSelector(".govuk-summary-list__key")).getText.trim
      val value = row.findElement(By.cssSelector(".govuk-summary-list__value")).getText.trim.replace("\n", ",")
      Map(key -> value)
    }
    .toMap

  def periodKey: String = {
    val adjustedYear = if (currentMonth <= 3) previousYear else year
    val yearSuffix = adjustedYear.toString.takeRight(2) // Last two digits of the year

    // Generate period key based on the first month of the current quarter
    // This is the most recent month with quarterly spirits
    generateMonth(currentMonth) match {
      case 1 => s"${yearSuffix}AL" // First month of Q1 -> AL
      case 4 => s"${yearSuffix}AC" // First month of Q2 -> AC
      case 7 => s"${yearSuffix}AF" // First month of Q3 -> AF
      case 10 => s"${yearSuffix}AI" // First month of Q4 -> AI
    }
  }

  def previousPeriodKey: String = {
    val adjustedYear = if (currentMonth <= 3) previousYear else year
    val yearSuffix = adjustedYear.toString.takeRight(2) // Last two digits of the year

    // Get the month before the most recent month with quarterly spirits
    generateMonth(currentMonth) match {
      case 1 => s"${yearSuffix}AK" // First month of Q1 -> AL
      case 4 => s"${yearSuffix}AB" // First month of Q2 -> AC
      case 7 => s"${yearSuffix}AE" // First month of Q3 -> AF
      case 10 => s"${yearSuffix}AH" // First month of Q4 -> AI
    }
  }

  def generateMonth(month: Int): Int = {
    month match {
      case m if m >= 1 && m <= 3 => 1
      case m if m >= 4 && m <= 6 => 4
      case m if m >= 7 && m <= 9 => 7
      case m if m >= 10 && m <= 12 => 10
      case _ => throw new IllegalArgumentException(s"Invalid month: $month. Valid values are 1 to 12.")

    }
  }

  def getDateRange: String = {
    val Month: Int = LocalDate.now().getMonthValue

    val (startMonth, startYear) = Month match {
      case 1 | 2 | 3 => (12, previousYear) // If in January, take December of the previous year
      case 4 | 5 | 6 => (3, year) // If in April, take March of the current year
      case 7 | 8 | 9 => (6, year) // If in July, take June of the current year
      case 10 | 11 | 12 => (9, year) // If in October, take September of the
      case _ => throw new IllegalArgumentException("Invalid month value")
    }

    val startDate = LocalDate.of(startYear, startMonth, 1)
    val endDate = startDate.withDayOfMonth(startDate.lengthOfMonth())

    val formatter = DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK)
    s"${startDate.format(formatter)} to ${endDate.format(formatter)}"
  }

  val currentDate: LocalDate = LocalDate.now()
  val year: Int = currentDate.getYear
  val previousYear: Int = year - 1
  val currentMonth: Int = currentDate.getMonthValue

  val formatter: DateTimeFormatter = DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(Locale.UK)

  def get12MonthsAgoPeriodKey: String =
    s"""${currentDate.minusMonths(12).getYear.toString.takeRight(2)}A${(currentDate.minusMonths(12).getMonthValue + 64).toChar}"""

  private def taxTypeCodeText() = driver.findElement(By.cssSelector(".govuk-radios"))

  def allTaxTypeCodeText(): Seq[String] = taxTypeCodeText().getText.split("\n").toList

  def productsList: Seq[List[String]] = driver
    .findElement(By.tagName("table"))
    .findElements(By.tagName("tr"))
    .asScala
    .map(
      _.findElements(By.xpath("td | th")).asScala
        .map(getVisibleTextFromElement)
        .toList
    )
    .toList

  def outstandingReturnsList: Seq[List[String]] = driver
    .findElement(By.xpath("//div/table[1]"))
    .findElements(By.tagName("tr"))
    .asScala
    .map(
      _.findElements(By.xpath("td | th")).asScala
        .map(_.getText.trim.replaceAll("""\nComplete.*""", "").replaceAll("\n", " "))
        .toList
    )
    .toList

  def completedReturnsList: Seq[List[String]] = driver
    .findElement(By.xpath("//div/table[2]"))
    .findElements(By.tagName("tr"))
    .asScala
    .map(
      _.findElements(By.xpath("td | th")).asScala
        .map(_.getText.trim.replaceAll("""\nView.*""", "").replaceAll("\n", " "))
        .toList
    )
    .toList

  //To get the pure alcohol text
  private def bulletPointsTextPureAlcohol() =
    driver.findElement(By.xpath("(//ul[@class='govuk-list govuk-list--bullet'])[1]"))

  def getBulletPointsTextPureAlcohol: Seq[String] = bulletPointsTextPureAlcohol().getText.split("\n").toList

  //To get the duty due text
  private def bulletPointsTextDutyDue() =
    driver.findElement(By.xpath("(//ul[@class='govuk-list govuk-list--bullet'])[2]"))

  def getBulletPointsTextDutyDue: Seq[String] = bulletPointsTextDutyDue().getText.split("\n").toList

  def enterDate(month: String, year: String): Unit = {}

  def selectCheckBoxes(choiceOfCheckBox: Array[String]): Unit =
    for (i <- choiceOfCheckBox.indices)
      click on xpath(s"//label[normalize-space()='${choiceOfCheckBox(i)}']")

  def subSectionsHeaderText: List[String] = driver
    .findElement(By.cssSelector("main[id='main-content'] div[class='govuk-grid-column-two-thirds']"))
    .findElements(By.tagName("h2"))
    .asScala
    .map(_.getText.trim)
    .toList

  def tableHeaderText: List[String] = driver
    .findElements(By.cssSelector("caption[class='govuk-table__caption govuk-table__caption--m']"))
    .asScala
    .map(_.getText.trim)
    .toList

  def taskListPageContentView: Map[String, String] = driver
    .findElements(By.xpath("//li[@class='govuk-task-list__item govuk-task-list__item--with-link']"))
    .asScala
    .flatMap { row =>
      val key = row
        .findElement(By.cssSelector(".govuk-task-list__name-and-hint"))
        .getText
        .trim
        .replaceAll("""\nYou can adjust declared.*""", "")
        .replaceAll("""\nEvery three months.*""", "")
      val value = row.findElement(By.cssSelector(".govuk-task-list__status")).getText.trim.replace("\n", ",")
      Map(key -> value)
    }
    .toMap

  def dataAtCheckYourAnswersPage: Map[String, String] = driver
    .findElements(By.cssSelector(".govuk-summary-list__row"))
    .asScala
    .flatMap { row =>
      val key = row.findElement(By.cssSelector(".govuk-summary-list__key")).getText.trim
      val value = row.findElement(By.cssSelector(".govuk-summary-list__value")).getText.trim.replace("\n", "")
      Map(key -> value)
    }
    .toMap

  def alcoholToDeclareSectionText: List[String] = driver
    .findElement(By.xpath("//dd[@class='govuk-summary-list__value']/ul"))
    .findElements(By.tagName("li"))
    .asScala
    .map(_.getText.trim)
    .toList

  def alcoholDeclaredSectionTextCYA: List[String] = driver
    .findElement(By.xpath("//dl"))
    .findElements(By.tagName("dl"))
    .asScala
    .map(_.getText.trim)
    .toList

  def ordinalToNumber(ordinal: String): Int = ordinal.toLowerCase() match {
    case "first" => 0
    case "second" => 1
    case "third" => 2
    case "fourth" => 3
    case "fifth" => 4
    case "sixth" => 5
    case "seventh" => 6
    case "eighth" => 7
    case "ninth" => 8
    case "tenth" => 9
    case "eleventh" => 10
    case "twelfth" => 11
    case "thirteenth" => 12
    case "fourteenth" => 13
    case "fifteenth" => 14
    case "sixteenth" => 15
    case "seventeenth" => 16
    case "eighteenth" => 17
    case "nineteenth" => 18
    case "twentieth" => 19
    case _ => throw new IllegalArgumentException("Invalid ordinal")
  }

  def clickAgreeAndSendReturnButton(): Unit = click on cssSelector("#continueButton")

  def alcoholTypes: List[String] = driver
    .findElement(By.cssSelector(".govuk-checkboxes"))
    .findElements(By.tagName("label"))
    .asScala
    .map(_.getText.trim)
    .toList

  def getSpecificMonth: String =
    currentDate.minusMonths(12).format(formatter)

  def getPaymentTypeValue(paymentType: String): Int =
    paymentType match {
      case "Outstanding" => 1
      case "Unallocated" => 2
      case "Historical" => 3
      case _ => throw new IllegalArgumentException(s"Unknown payment type: $paymentType")
    }

  def getMonthDetails(formatType: String): Map[String, String] = {
    val currentDate = LocalDate.now()

    // Define the formatter based on the formatType
    val formatter = formatType match {
      case "MonthYear" => DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(java.util.Locale.UK)
      case "FullDate" => DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(java.util.Locale.UK)
      case _ => throw new IllegalArgumentException("Invalid format type. Use 'MonthYear' or 'FullDate'.")
    }

    // Function to compute dates for a specific day and month offset
    def computeDate(day: Int, offset: Int): String = {
      val targetDate = currentDate.plusMonths(offset)
      val adjustedDay = Math.min(day, targetDate.lengthOfMonth()) // Adjust day to the last valid day of the month
      targetDate.withDayOfMonth(adjustedDay).format(formatter)
    }

    // Generate keys for all days (1 to 31) and special cases like "CurrentDateAndMonth"
    val monthOffsets: Seq[(String, String)] = (-10 to 10).flatMap { offset =>
      (1 to 31).map { day =>
        val key =
          if (offset < 0) s"${day}Minus${-offset}Months"
          else if (offset > 0) s"${day}Plus${offset}Months"
          else s"${day}CurrentMonth"
        key -> computeDate(day, offset)
      }
    } ++ Seq("CurrentDateAndMonth" -> computeDate(currentDate.getDayOfMonth, 0))

    monthOffsets.toMap
  }


  def replacePlaceholdersInScenario(dataTable: List[List[String]], formatType: String): List[List[String]] = {
    // Retrieve the month details for replacements
    val monthDetails = getMonthDetails(formatType)

    // Replace placeholders in the data table
    dataTable.map { row =>
      row.map { cell =>
        // Replace "[empty]" with an empty string
        val withoutEmptyPlaceholder = if (cell == "[empty]") "" else cell

        // Replace dynamic month placeholders
        monthDetails.foldLeft(withoutEmptyPlaceholder) { (updatedCell, replacement) =>
          val (key, value) = replacement
          if (updatedCell.contains(key)) updatedCell.replace(key, value) else updatedCell
        }
      }
    }
  }

  def paymentDetails(paymentType: String): Seq[List[String]] = {
    val tableIndex = getPaymentTypeValue(paymentType)
    driver
      .findElement(By.xpath("//div/table[" + tableIndex + "]"))
      .findElements(By.tagName("tr"))
      .asScala
      .map(
        _.findElements(By.xpath("td | th")).asScala
          .map(
            _.getText.trim
              .replaceAll("""\nPay.*""", "")
              .replaceAll("""\(ref:.*""", "")
              .replaceAll("\n", "")
          )
          .toList
      )
      .toList
  }

  def currentMonthPaymentDetails(paymentType: String): Seq[List[String]] = {
    val tableIndex = getPaymentTypeValue(paymentType)

    driver
      .findElement(By.xpath(s"//div/table[$tableIndex]"))
      .findElements(By.tagName("tr"))
      .asScala
      .drop(1) // skip the header row
      .headOption // take only the first data row
      .map { row =>
        row.findElements(By.tagName("td")).asScala
          .map(
            _.getText.trim
              .replaceAll("""\nPay.*""", "")
              .replaceAll("""\(ref:.*""", "")
              .replaceAll("\n", "")
          )
          .toList
      }
      .toList
  }

    def getVisibleTextFromElement(element: WebElement): String = {
      val htmlContent = element.getAttribute("innerHTML")
      htmlContent
        .replaceAll("""<span[^>]*class="[^"]*govuk-visually-hidden[^"]*"[^>]*>.*?</span>""", "")
        .replaceAll("<[^>]+>", "")
        .replaceAll("\n", " ")
        .replaceAll("\\s+", " ")
        .trim
    }
  }
