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

  def periodKey(): String =
    s"""${generateYear(Year: Int).toString.takeRight(2)}A${(generateMonth(Month: Int) + 64).toChar}"""

  def previousPeriodKey(): String = s"${Year.toString.takeRight(2)}A${((generateMonth(Month: Int) - 1) + 64).toChar}"

  def generateYear(Year: Int): Int =
    if (generateMonth(Month: Int) == 12)
      Year - 1
    else
      Year

  def generateMonth(Month: Int): Int =
    if ((Month - 1) == 0 || (Month - 1) == 1 || (Month - 1) == 2)
      1
    else if ((Month - 1) == 3 || (Month - 1) == 4 || (Month - 1) == 5)
      4
    else if ((Month - 1) == 6 || (Month - 1) == 7 || (Month - 1) == 8)
      7
    else
      10

  val currentDate: LocalDate          = LocalDate.now()
  val firstDayOfNextMonth: LocalDate  = currentDate.withMonth(generateMonth(Month: Int) + 1) withDayOfMonth 1
  val firstDayCurrentMonth: LocalDate = currentDate.withMonth(generateMonth(Month: Int)) withDayOfMonth 1
  val firstDayOfCurrentMonth: String  = (currentDate.withMonth(generateMonth(Month: Int)) withDayOfMonth 1)
    .format(DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK))
  val lastDayOfCurrentMonth: String   =
    firstDayOfNextMonth.minusDays(1).format(DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK))
  val firstDayOfPreviousMonth: String = (currentDate.withMonth(generateMonth(Month: Int) - 1) withDayOfMonth 1)
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

  def expectedOutstandingPayments: List[List[String]] = List(
    List("To be paid by", "Description", "Left to pay", "Status", "Action"),
    List(
      (currentDate.plusMonths(1) withDayOfMonth 25).format(formatterPaymentMonth),
      "Payment for Alcohol Duty return",
      "£237.44",
      "Due",
      "Pay now"
    ),
    List(
      currentDate.format(DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK)),
      "Late payment interest charge",
      "£20.56",
      "Due",
      "Pay now"
    ),
    List(
      (currentDate.minusMonths(2) withDayOfMonth 25).format(formatterPaymentMonth),
      "Payment for Alcohol Duty return",
      "£4,577.44",
      "Overdue",
      "Pay now"
    ),
    List(
      (currentDate.minusMonths(3) withDayOfMonth 25).format(formatterPaymentMonth),
      "Payment for Alcohol Duty return",
      "£2,577.44",
      "Overdue",
      "Pay now"
    ),
    List(
      (currentDate.minusMonths(4) withDayOfMonth 25).format(formatterPaymentMonth),
      "Credit for Alcohol Duty return",
      "−£2,577.44",
      "Nothing to pay",
      ""
    ),
    List(
      (currentDate.minusMonths(5) withDayOfMonth 1)
        .format(DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK)),
      "Refund payment interest charge",
      "−£20.56",
      "Nothing to pay",
      ""
    ),
    List(
      (currentDate.minusMonths(6) withDayOfMonth 1)
        .format(DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK)),
      "Late payment interest charge",
      "£10.56",
      "Overdue",
      "Pay now"
    )
  )

  def expectedUnallocatedPayments: List[List[String]] = List(
    List("Payment date", "Description", "Amount"),
    List(
      (currentDate withDayOfMonth 1).format(DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK)),
      "Payment",
      "−£1,000.00"
    ),
    List(
      (currentDate.minusMonths(1) withDayOfMonth 1)
        .format(DateTimeFormatter.ofPattern("d MMMM yyyy").withLocale(Locale.UK)),
      "Payment",
      "−£500.00"
    )
  )

  def expectedHistoricalPayments: List[List[String]] = List(
    List("Return period", "Description", "Amount"),
    List(
      currentDate.format(DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(Locale.UK)),
      "Cleared late payment interest charge payments",
      "£20.56"
    ),
    List(
      currentDate.minusMonths(3).format(DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(Locale.UK)),
      "Cleared Alcohol Duty payments",
      "£4,577.44"
    ),
    List(
      currentDate.minusMonths(4).format(DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(Locale.UK)),
      "Cleared Alcohol Duty payments",
      "£2,000.00"
    ),
    List(
      currentDate.minusMonths(6).format(DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(Locale.UK)),
      "Cleared late payment interest charge payments",
      "£10.00"
    )
  )

  private def taxTypeCodeText() = driver.findElement(By.cssSelector(".govuk-radios"))

  def allTaxTypeCodeText(): Seq[String] = taxTypeCodeText().getText.split("\n").toList

  def productsList: Seq[List[String]] = driver
    .findElement(By.tagName("table"))
    .findElements(By.tagName("tr"))
    .asScala
    .map(
      _.findElements(By.xpath("td | th")).asScala
        .map(
          _.getText.trim
            .replaceAll("\nthis product", "")
            .replaceAll("""\n.*between.*""", "")
            .replaceAll("""\n.*at or above.*""", "")
            .replaceAll("""\n.*adjustment with duty value.*""", "")
            .replaceAll("\n", " ")
        )
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
      val key   = row.findElement(By.cssSelector(".govuk-task-list__name-and-hint")).getText.trim.replaceAll("""\nEvery three months.*""", "")
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
}
