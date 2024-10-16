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

package uk.gov.hmrc.alcoholDuty.cucumber.stepdefs

import io.cucumber.datatable.DataTable
import io.cucumber.scala.{EN, ScalaDsl}
import org.openqa.selenium.By
import org.scalatest.concurrent.Eventually
import org.scalatest.matchers.should.Matchers
import org.scalatestplus.selenium.WebBrowser
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.driver.BrowserDriver
import uk.gov.hmrc.alcoholDuty.pages.BasePage
import uk.gov.hmrc.alcoholDuty.pages.generic.PageObjectFinder
import uk.gov.hmrc.alcoholDuty.pages.generic.PageObjectFinder.DataTableConverters

import scala.jdk.CollectionConverters._

trait BaseStepDef
    extends ScalaDsl
    with EN
    with BrowserDriver
    with Eventually
    with Matchers
    with WebBrowser
    with BasePage {

  Then("""I navigate to the {string}""") { page: String =>
    go to PageObjectFinder.page(page)
  }

  When("""I click submit button on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickSubmitButton()
  }

  Then("""I am presented with the {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).checkURL
    PageObjectFinder.page(page).checkPageHeader()
    PageObjectFinder.page(page).checkPageTitle()
  }

  Then("""I am presented with the dynamic header page {string} {string}""") { (page: String, text: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).checkURL
    PageObjectFinder.page(page).checkPageHeader()
    PageObjectFinder.page(page).checkPageTitle()
    checkDynamicPageHeader(text)
  }

  Then("""I am presented with the {string} with new url""") { page: String =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).checkNewURL
    PageObjectFinder.page(page).checkPageHeader()
    PageObjectFinder.page(page).checkPageTitle()
  }

  Then("""I am presented with the {string} with new url containing prefix as {string} and suffix as {string}""") {
    (page: String, urlPrefix: String, urlSuffix: String) =>
      PageObjectFinder.page(page).waitForPageHeader
      PageObjectFinder.page(page).checkNewURLWithTwoDynamicValues(urlPrefix, urlSuffix)
      PageObjectFinder.page(page).checkPageHeader()
      PageObjectFinder.page(page).checkPageTitle()
  }

  Then("""I am presented with the {string} with url suffix as {string}""") { (page: String, urlSuffix: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).checkNewURLWithOneDynamicValue(urlSuffix)
    PageObjectFinder.page(page).checkPageHeader()
    PageObjectFinder.page(page).checkPageTitle()
  }

  When("""I select radio button {string} on {string}""") { (choice: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickRadioButton(choice)
  }

  When("""I {string} checkbox {string} on {string}""") { (checkBoxAction: String, choice: String, page: String) =>
    checkBoxAction match {
      case "select" | "unselect" =>
        PageObjectFinder.page(page).waitForPageHeader
        PageObjectFinder.page(page).selectCheckBoxes(choice.split(","))
    }
  }

  When("""I click save and continue button on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickSaveAndContinueButton()
  }

  When("""I click continue button on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickContinueButton()
  }

  When("""I click back button on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickBackButton()
  }

  Then("""I am presented with the {string} error page""") { page: String =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).checkURL
    PageObjectFinder.page(page).checkPageErrorTitle()
  }

  Then("""The error summary title is {string} and the error message is {string}""") {
    (errorSummaryTitle: String, errorMessage: String) =>
      PageObjectFinder.checkPageErrorSummaryTitle(errorSummaryTitle)
      val finalErrorMessage = errorMessage.replace("^", "’")
      PageObjectFinder.checkPageErrorMessage(finalErrorMessage)
  }

  When("""I enter {string} on {string}""") { (data: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).enterDetails(data)
  }

  When("""I enter {string} for {string} on {string}""") { (textToEnter: String, text: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).enterMultipleDetails(textToEnter, text)
  }

  When("""I enter {string} for {string} on {string} at {string} input box""") {
    (textToEnter: String, text: String, page: String, index: String) =>
      PageObjectFinder.page(page).waitForPageHeader
      PageObjectFinder.page(page).enterMultipleDetailsWithIndex(textToEnter, text, index)
  }

  When("""I enter month {string} and year {string} on {string}""") { (month: String, year: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).enterDate(month, year)
  }

  When("""I enter redirect url for {string}""") { (page: String) =>
    page match {
      case "Task List Page"            =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/task-list/your-alcohol-duty-return")
      case "Return Summary Page"       =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/return-summary")
      case "Alcohol Duty Service"      =>
        driver.get(
          TestConfiguration.url("alcohol-duty-returns-frontend") + "/before-you-start-your-return/" + periodKey()
        )
      case "Previous Month Period Key" =>
        driver.get(
          TestConfiguration.url(
            "alcohol-duty-returns-frontend"
          ) + "/before-you-start-your-return/" + previousPeriodKey()
        )
    }
  }

  And("""^I should see the following details""") { data: DataTable =>
    val expectedData = data.asMaps().asScala.toList.flatMap(_.asScala.toMap).toMap
    val actualData   = PageObjectFinder.pageData
    actualData should be(expectedData)
  }

  And("""I should verify the outstanding returns details on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    val expected = PageObjectFinder.expectedOutstandingReturns
    val actual   = outstandingReturnsList
    actual should be(expected)
  }

  And("""I should verify the completed returns details on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    val expected = PageObjectFinder.expectedCompletedReturns
    val actual   = completedReturnsList
    actual should be(expected)
  }

  And("""I verify the content {string} on {string}""") { (expectedText: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    val actualText = driver.findElement(By.className("govuk-heading-l")).getText
    actualText should be(expectedText)
  }

  And("""I should verify the details of the table {int} on {string}""") { (num: Int, page: String, data: DataTable) =>
    PageObjectFinder.page(page).waitForPageHeader
    val expected                                   = data.asScalaListOfLists
    def getResultList(num: Int): Seq[List[String]] =
      driver
        .findElement(By.xpath("//div/table[" + num + "]"))
        .findElements(By.tagName("tr"))
        .asScala
        .map(
          _.findElements(By.xpath("td | th")).asScala
            .map(_.getText.trim)
            .toList
        )
        .toList

    val actual = getResultList(num)
    actual should be(expected)
  }

  And("""I should verify the {string} payment details of the table {int} on {string}""") { (tableHeader: String, num: Int, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader

    def getResultList(num: Int): Seq[List[String]] =
      driver
        .findElement(By.xpath("//div/table[" + num + "]"))
        .findElements(By.tagName("tr"))
        .asScala
        .map(
          _.findElements(By.xpath("td | th")).asScala
            .map(_.getText.trim.replaceAll("""\nPay.*""", "").replaceAll("""\(ref:.*""", "").replaceAll("\n", ""))
            .toList
        )
        .toList

    val actual = getResultList(num)

    tableHeader match {
      case "Outstanding" =>
        actual should be(expectedOutstandingPayments)
      case "Unallocated" =>
        actual should be(expectedUnallocatedPayments)
      case "Historical" =>
        actual should be(expectedHistoricalPayments)
    }
  }

  And("""^I should see the following product details""") { data: DataTable =>
    val expected = data.asScalaListOfLists
    val actual   = productsList
    actual should be(expected)
  }

  And("""I click on View Return link for one of the completed returns on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    driver.findElement(By.xpath("//div/table[2]/tbody/tr[1]/td[3]/ul/li/a")).click()
  }

  When("""I click {string} on {string}""") { (button: String, page: String) =>
    PageObjectFinder.page(page).clickButton(button)
  }

  When("""I verify the ABV value displayed as {string} on {string}""") { (expectedText: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    val actualText = driver.findElement(By.cssSelector("ul[class='govuk-list govuk-list--bullet'] li")).getText
    actualText should be(expectedText)
  }

  Then("""I verify the due amount displayed as {string} on {string}""") { (expectedText: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    val actualText = driver.findElement(By.xpath("//main/div/div/p[1]")).getText.trim.replaceAll("\n", " ")
    actualText should be(expectedText)
  }

  Then("""I verify the return due date for {string} on {string}""") { (content: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    val actualText = driver.findElement(By.xpath("//div/div/form/p[1]")).getText

    content match {
      case "Latest Month Selected" =>
        actualText should be(
          "Use this service to submit your Alcohol Duty Return for " + firstDayOfCurrentMonth + " to " + lastDayOfCurrentMonth + "."
        )

      case "Previous Month Selected" =>
        actualText should be(
          "Use this service to submit your Alcohol Duty Return for " + firstDayOfPreviousMonth + " to " + lastDayOfPreviousMonth + "."
        )
    }
  }

  And("""I should verify the table header displayed""") { (data: DataTable) =>
    val expectedText = data.asScalaListOfStrings
    tableHeaderText should be(expectedText)
  }

  Then("""I can see below tax type codes on the {string}""") { (page: String, data: DataTable) =>
    PageObjectFinder.page(page).waitForPageHeader
    val expectedText = data.asScalaListOfStrings
    allTaxTypeCodeText() should be(expectedText)
  }

  Then("""I can see below text on the {string}""") { (page: String, data: DataTable) =>
    PageObjectFinder.page(page).waitForPageHeader
    val expectedText = data.asScalaListOfStrings
    getBulletPointsTextPureAlcohol should be(expectedText)
  }

  Then("""I can see below text on the {string} for pure alcohol""") { (data: DataTable) =>
    val expectedText = data.asScalaListOfStrings
    getBulletPointsTextPureAlcohol should be(expectedText)
  }

  Then("""I can see below text for {string}""") { (entryType: String, data: DataTable) =>
    val expectedText = data.asScalaListOfStrings
    entryType match {
      case "pure alcohol" => getBulletPointsTextPureAlcohol should be(expectedText)
      case "duty due"     => getBulletPointsTextDutyDue     should be(expectedText)
    }
  }

  Then("""I am presented with the {string} {string}""") { (page: String, specificPage: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).checkURL
    PageObjectFinder.page(page).checkPageTitle(specificPage)
  }

  When("""I click on {string} hyperlink on {string}""") { (hyperlink: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    driver.findElement(By.xpath("//a[normalize-space()='" + hyperlink + "']")).click()
  }

  And("""^I should see the following status of the submission journey""") { data: DataTable =>
    val expectedData = data.asMaps().asScala.toList.flatMap(_.asScala.toMap).toMap
    val actualData   = PageObjectFinder.taskListPageContentView
    actualData should be(expectedData)
  }

  And("""I should see the following subsections""") { data: DataTable =>
    val expected = data.asScalaListOfStrings
    subSectionsHeaderText should be(expected)
  }

  Given("""I cleared the data for the service""") {
    driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/test-only/clear-all")
  }

  And("""I should see following details at the {string}""") { (page: String, data: DataTable) =>
    val expectedData = data.asMaps().asScala.toList.flatMap(_.asScala.toMap).toMap
    PageObjectFinder.page(page).waitForPageHeader
    val actualData   = PageObjectFinder.dataAtCheckYourAnswersPage
    actualData should be(expectedData)
  }

  And("""I should see the {string} and below error messages""") { (errorSummaryTitle: String, data: DataTable) =>
    val expectedErrorMessage = data.asScalaListOfStrings
    PageObjectFinder.checkPageErrorSummaryTitle(errorSummaryTitle)
    PageObjectFinder.listOfErrorMessages() should be(expectedErrorMessage)
  }
  And("""I check the page source for the following key-value pairs:""") { (data: DataTable) =>
    val pageSource: String = driver.getPageSource.trim
    val keyValuePairs      = data.asMaps(classOf[String], classOf[String]).asScala

    // Function to count occurrences of a substring in a string
    def countOccurrences(source: String, target: String): Int =
      source.sliding(target.length).count(window => window == target)
    // Verify each key-value pair
    keyValuePairs.foreach { pair =>
      val key   = pair.get("key")
      val value = pair.get("value")
      if (key != null && value != null) {
        val keyCount   = countOccurrences(pageSource, key)
        if (keyCount == 0) {
          fail(s"The key '$key' does not exist, please check")
        }
        val valueCount = countOccurrences(pageSource, value)
        if (valueCount == 0) {
          fail(s"The value '$value' does not exist, please check")
        }
      }
    }
  }

  And("""I should see the following text on the page""") { data: DataTable =>
    val expected = data.asScalaListOfStrings
    alcoholToDeclareSectionText should be(expected)
  }

  And("""I click on change link {int} on {string} for alcohol type {string}""") {
    (changeLinkIndex: Int, page: String, alcoholType: String) =>
      PageObjectFinder.page(page).waitForPageHeader
      driver
        .findElement(
          By.xpath(
            "(//a[@href='/manage-alcohol-duty/return-check-your-answers/" + alcoholType + "'])[" + changeLinkIndex + "]"
          )
        )
        .click()
  }

  And("""I should see the following details at the returns summary page""") { data: DataTable =>
    val expected = data.asScalaListOfLists
    val actual   = declaredProductListAtReturnsSummary
    actual should be(expected)
  }

  And("""the status of the Send return is marked as {string}""") { (sendReturnStatus: String) =>
    val expected = driver.findElement(By.xpath("//strong[@class='govuk-tag govuk-tag--grey']")).getText
    sendReturnStatus should be(expected)
  }

  When("""I click on Agree and send return button {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickAgreeAndSendReturnButton()
  }

  When("""the page source contains {string}""") { (paymentAmountText: String) =>
    val actualText = driver.findElement(By.xpath("//p[normalize-space()='" + paymentAmountText + "']")).getText
    actualText should be(paymentAmountText)
  }

  And("""I should see the following alcohol types""") { data: DataTable =>
    val expected = data.asScalaListOfStrings
    alcoholTypes should be(expected)
  }
}
