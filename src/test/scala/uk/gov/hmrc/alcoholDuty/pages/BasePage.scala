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
  val newUrl: String       = ""
  val title: String        = ""
  val urlPattern: Regex    = "^(https?://)?([\\w.-]+)?(\\.[a-z]{2,6})([/\\w .-]*)*\\??([^#\\s]*)#?([^\\s]*)$".r

  def validateUrl(url: String): Boolean =
    url match {
      case urlPattern(_, _, _, _, _, _) => true
      case _                            => false
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

  private val expectedPageTitleList      = expectedPageTitle.map(_.split(";").toList)
  private val expectedPageErrorTitleList = expectedPageErrorTitle.map(_.split(";").toList)
  private val expectedPageHeaderList     = expectedPageHeader.map(_.split(";").toList)

  def checkPageTitle(): Assertion = {
    fluentWait.until(ExpectedConditions.visibilityOfElementLocated(By.tagName("h1")))
    expectedPageTitleList should contain(List(pageTitle))
  }

  def checkPageErrorTitle(): Assertion = {
    fluentWait.until(ExpectedConditions.visibilityOfElementLocated(By.tagName("h1")))
    expectedPageErrorTitleList should contain(List(pageTitle))
  }

  def enterText(id: String, textToEnter: String): Unit = {
    driver.findElement(By.id(id)).clear()
    driver.findElement(By.id(id)).sendKeys(textToEnter)
  }

  def checkPageTitle(page: String): Unit = {}

  def checkPageErrorTitle(page: String): Unit = {}

  def checkURL: Assertion =
    if (url.contains("...")) {
      driver.getCurrentUrl should fullyMatch regex (url.replace("...", "") + ".*").r
    } else {
      driver.getCurrentUrl should equal(url)
    }

  def checkNewURL: Assertion =
    if (newUrl.contains("...")) {
      driver.getCurrentUrl should fullyMatch regex (newUrl.replace("...", "") + ".*").r
    } else {
      driver.getCurrentUrl should equal(newUrl)
    }

  def checkNewURLWithTwoDynamicValues(urlPrefix: String, urlSuffix: String): Unit = {
    val currentUrl = driver.getCurrentUrl
    if (newUrl.contains("...")) {
      val updatedUrl = newUrl.replace("...", urlSuffix).replace("preFix-", urlPrefix)
      validateUrl(updatedUrl)
      currentUrl shouldBe updatedUrl
    } else {
      validateUrl(currentUrl)
      currentUrl shouldBe newUrl
    }
  }

  def checkNewURLWithOneDynamicValue(urlSuffix: String): Unit = {
    val currentUrl = driver.getCurrentUrl
    if (newUrl.contains("...")) {
      val updatedUrl = newUrl.replace("preFix-", "").replace("...", urlSuffix)
      validateUrl(updatedUrl)
      currentUrl shouldBe updatedUrl
    } else {
      validateUrl(currentUrl)
      currentUrl shouldBe newUrl
    }
  }

  def checkNewDynamicURL(urlSuffix: String): Unit = {
    val expectedUrl = newUrl + urlSuffix
    if (url.contains("...")) {
      driver.getCurrentUrl should fullyMatch regex (url.replace("...", "") + ".*").r
    } else {
      driver.getCurrentUrl should equal(expectedUrl)
    }
  }

  def checkExistingDynamicURL(urlSuffix: String): Unit = {
    val expectedUrl = url + urlSuffix
    if (url.contains("...")) {
      driver.getCurrentUrl should fullyMatch regex (url.replace("...", "") + ".*").r
    } else {
      driver.getCurrentUrl should equal(expectedUrl)
    }
  }

  def checkPageHeader(): Assertion = {
    fluentWait.until(ExpectedConditions.textToBe(By.cssSelector("h1"), expectedPageHeader.get))
    expectedPageHeaderList should contain(List(pageHeader.get))
  }

  def clickSubmitButton(): Unit = click on cssSelector("#submit")

  def clickSaveAndContinueButton(): Unit = click on id("saveAndContinueButton")

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

  private def errorMessage() = driver.findElement(By.cssSelector(".govuk-error-summary__body"))

  def listOfErrorMessages(): List[String] = errorMessage().getText.split("\n").toList

  def checkDynamicPageHeader(text: String): Unit =
    text match {
      case "Under-declaration"           =>
        driver.findElement(By.xpath("//div/form/h2")).getText.trim.replaceAll("This section is:\n", "") should equal(
          "Adjust for under-declared alcohol"
        )
      case "Over-declaration"            =>
        driver.findElement(By.xpath("//div/form/h2")).getText.trim.replaceAll("This section is:\n", "") should equal(
          "Adjust for over-declared alcohol"
        )
      case "Spoilt"                      =>
        driver.findElement(By.xpath("//div/form/h2")).getText.trim.replaceAll("This section is:\n", "") should equal(
          "Adjust for spoilt alcohol"
        )
      case "Drawback"                    =>
        driver.findElement(By.xpath("//div/form/h2")).getText.trim.replaceAll("This section is:\n", "") should equal(
          "Adjust for duty drawback"
        )
      case "Repackaged draught products" =>
        driver.findElement(By.xpath("//div/form/h2")).getText.trim.replaceAll("This section is:\n", "") should equal(
          "Adjust for repackaged draught products"
        )
    }

  def clickButton(buttonText: String): Unit = click on partialLinkText(buttonText)

  def pageData: Map[String, String] = driver
    .findElements(By.cssSelector(".govuk-summary-list__row"))
    .asScala
    .flatMap { row =>
      val key   = row.findElement(By.cssSelector(".govuk-summary-list__key")).getText.trim
      val value = row.findElement(By.cssSelector(".govuk-summary-list__value")).getText.trim.replace("\n", ",")
      Map(key -> value)
    }
    .toMap

  val Year: Int  = LocalDate.now().getYear
  val Month: Int = LocalDate.now().getMonthValue
  val periodKeyCodes: Seq[String] = Seq("AL", "AA", "AB", "AC", "AD", "AE", "AF", "AG", "AH", "AI", "AJ", "AK")

  def periodKey: String = {
    val adjustedYear = if (Month == 1) year - 1 else year
    val yearSuffix   = adjustedYear.toString.takeRight(2) // Last two digits of the year
    Month match {
      case 2 | 3 | 4   => s"${yearSuffix}AA"
      case 5 | 6 | 7   => s"${yearSuffix}AD"
      case 8 | 9 | 10  => s"${yearSuffix}AG"
      case 11 | 12 | 1 => s"${yearSuffix}AJ"
      case _           => throw new IllegalArgumentException("Invalid month value. Valid values are 1 to 12.")
    }
  }

  def previousPeriodKey: String = {
    val currentDate = LocalDate.now()
    val month = currentDate.getMonthValue
    val year = currentDate.getYear

    // Determine the base year suffix
    val yearSuffix = if (month == 1) (year - 1).toString.takeRight(2) else year.toString.takeRight(2)

    // Shortened letter code mapping
    val letterCode = periodKeyCodes(month - 1)

    // Return only the year suffix and letter code
    s"$yearSuffix$letterCode"
  }

  def generateYear(Year: Int): Int =
    if (generateMonth(Month: Int) == 12)
      Year - 1
    else
      Year

  def generateMonth(month: Int): Int = {
    month match {
      case m if m >= 1 && m <= 3  => 1
      case m if m >= 4 && m <= 6  => 4
      case m if m >= 7 && m <= 9  => 7
      case m if m >= 10 && m <= 12 => 10
      case _ => throw new IllegalArgumentException(s"Invalid month: $month. Valid values are 1 to 12.")
    }
  }

  def getDateRange: String = {
    // Determine the base month and year for the range
    val Month: Int = LocalDate.now().getMonthValue

    val (startMonth, startYear) = Month match {
      case 2 | 3 | 4 => (1, Year) // January
      case 5 | 6 | 7 => (4, Year) // April
      case 8 | 9 | 10 => (7, Year) // July
      case 11 | 12 | 1 => (10, if (Month == 1) Year - 1 else Year) // October
      case _ => throw new IllegalArgumentException("Invalid month value")
    }

    val startDate = LocalDate.of(startYear, startMonth, 1)
    val endDate = startDate.withDayOfMonth(startDate.lengthOfMonth())

    val formatter = DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK)
    s"${startDate.format(formatter)} to ${endDate.format(formatter)}"
  }

  val currentDate: LocalDate          = LocalDate.now()
  val year: Int                       = currentDate.getYear
  val currentMonth: Int               = currentDate.getMonthValue
  val generatedMonth: Int             = generateMonth(currentMonth)
  val firstDayOfNextMonth: LocalDate  = currentDate.withMonth(generateMonth(Month: Int) + 1) withDayOfMonth 1
  val firstDayCurrentMonth: LocalDate = currentDate.withMonth(generateMonth(Month: Int)) withDayOfMonth 1
  val firstDayOfPreviousMonth: String = currentDate
    .withMonth(generatedMonth)
    .withDayOfMonth(1)
    .minusMonths(1)
    .format(DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK))
  val lastDayOfPreviousMonth: String  =
    firstDayCurrentMonth.minusDays(1).format(DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK))

  val formatter: DateTimeFormatter = DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(Locale.UK)
  val now: LocalDate               = LocalDate.now()

  def getCompletedMonth1PeriodKey: String =
    s"""${now.minusMonths(5).getYear.toString.takeRight(2)}A${(now.minusMonths(5).getMonthValue + 64).toChar}"""

  def expectedOutstandingReturns: List[List[String]] = List(
    List("Period", "Status", "Action"),
    List(now.minusMonths(1).format(formatter), "Due", "Submit Return"),
    List(now.minusMonths(2).format(formatter), "Overdue", "Submit Return"),
    List(now.minusMonths(3).format(formatter), "Overdue", "Submit Return"),
    List(now.minusMonths(4).format(formatter), "Overdue", "Submit Return")
  )

  def expectedCompletedReturns: List[List[String]] = List(
    List("Period", "Status", "Action"),
    List(now.minusMonths(5).format(formatter), "Completed", "View Return"),
    List(now.minusMonths(6).format(formatter), "Completed", "View Return"),
    List(now.minusMonths(7).format(formatter), "Completed", "View Return")
  )

  val formatterPaymentMonth: DateTimeFormatter = DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK)

  def expectedOutstandingPayments: List[List[String]] = {
    val paymentFormatter = formatterPaymentMonth
    val dateFormatter    = DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK)

    def formatDateWithPaymentMonth(monthOffset: Int): String =
      currentDate.plusMonths(monthOffset).withDayOfMonth(25).format(paymentFormatter)

    def formatDateWithDay1(monthOffset: Int): String =
      currentDate.minusMonths(monthOffset).withDayOfMonth(1).format(dateFormatter)

    def formatCurrentDate: String =
      currentDate.format(dateFormatter)

    List(
      List("To be paid by", "Description", "Left to pay", "Status", "Action"),
      List(formatDateWithPaymentMonth(1), "Payment for Alcohol Duty return", "£237.44", "Due", "Pay now"),
      List(formatCurrentDate, "Late payment interest charge", "£20.56", "Due", "Pay now"),
      List(formatDateWithPaymentMonth(-2), "Payment for Alcohol Duty return", "£4,577.44", "Overdue", "Pay now"),
      List(formatDateWithPaymentMonth(-3), "Payment for Alcohol Duty return", "£2,577.44", "Overdue", "Pay now"),
      List(formatDateWithPaymentMonth(-4), "Credit for Alcohol Duty return", "−£2,577.44", "Nothing to pay", ""),
      List(formatDateWithDay1(5), "Refund payment interest charge", "−£20.56", "Nothing to pay", ""),
      List(formatDateWithDay1(6), "Late payment interest charge", "£10.56", "Overdue", "Pay now")
    )
  }

  def expectedUnallocatedPayments: List[List[String]] = {
    val dateFormatter = DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK)

    def formatDateWithDay1(monthOffset: Int): String =
      currentDate.minusMonths(monthOffset).withDayOfMonth(1).format(dateFormatter)

    List(
      List("Payment date", "Description", "Amount"),
      List(formatDateWithDay1(0), "Payment", "−£1,000.00"),
      List(formatDateWithDay1(1), "Payment", "−£500.00")
    )
  }

  def expectedHistoricalPayments: List[List[String]] = {
    val dateFormatter = DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(Locale.UK)

    def formatMonthYear(monthOffset: Int): String =
      currentDate.minusMonths(monthOffset).format(dateFormatter)

    List(
      List("Return period", "Description", "Amount"),
      List(formatMonthYear(0), "Cleared late payment interest charge payments", "£20.56"),
      List(formatMonthYear(3), "Cleared Alcohol Duty payments", "£4,577.44"),
      List(formatMonthYear(4), "Cleared Alcohol Duty payments", "£2,000.00"),
      List(formatMonthYear(6), "Cleared late payment interest charge payments", "£10.00")
    )
  }

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
        .map(_.getText.trim.replaceAll("""\nSubmit.*""", "").replaceAll("\n", " "))
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
      val key   = row
        .findElement(By.cssSelector(".govuk-task-list__name-and-hint"))
        .getText
        .trim
        .replaceAll("""\nEvery three months.*""", "")
      val value = row.findElement(By.cssSelector(".govuk-task-list__status")).getText.trim.replace("\n", ",")
      Map(key -> value)
    }
    .toMap

  def dataAtCheckYourAnswersPage: Map[String, String] = driver
    .findElements(By.cssSelector(".govuk-summary-list__row"))
    .asScala
    .flatMap { row =>
      val key   = row.findElement(By.cssSelector(".govuk-summary-list__key")).getText.trim
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

  def clickAgreeAndSendReturnButton(): Unit = click on cssSelector("#continueButton")

  def alcoholTypes: List[String] = driver
    .findElement(By.cssSelector(".govuk-checkboxes"))
    .findElements(By.tagName("label"))
    .asScala
    .map(_.getText.trim)
    .toList

  //this method returns a string that contains a date of five months past
  def getSpecificMonth: String =
    now.minusMonths(5).format(formatter)

  def getPaymentTypeValue(paymentType: String): Int =
    paymentType match {
      case "Outstanding" => 1
      case "Unallocated" => 2
      case "Historical"  => 3
      case _             => throw new IllegalArgumentException(s"Unknown payment type: $paymentType")
    }

  def getMonthDetails: Map[String, String] = {
    val formatter   = DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(java.util.Locale.UK)
    val currentDate = LocalDate.now()

    def formatMonths(offset: Int): String = currentDate.plusMonths(offset).format(formatter)

    val monthOffsets = (-10 to 10).map { offset =>
      val key =
        if (offset == 0) "currentMonth"
        else if (offset < 0) s"minus${-offset}Months"
        else s"plus${offset}Months"
      key -> formatMonths(offset)
    }
    monthOffsets.toMap
  }

  def replacePlaceholdersInScenario(dataTable: List[List[String]]): List[List[String]] = {
    // Retrieve the month details for replacements
    val monthDetails = getMonthDetails

    // Replace placeholders in the data table
    dataTable.map { row =>
      row.map { cell =>
        monthDetails.foldLeft(cell) { (updatedCell, replacement) =>
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
