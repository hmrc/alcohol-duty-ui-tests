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
import org.junit.Assert
import org.openqa.selenium.{By, WebElement}
import org.scalatest.concurrent.Eventually
import org.scalatest.matchers.should.Matchers
import org.scalatestplus.selenium.WebBrowser
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.driver.BrowserDriver
import uk.gov.hmrc.alcoholDuty.pages.BasePage
import uk.gov.hmrc.alcoholDuty.pages.generic.PageObjectFinder
import uk.gov.hmrc.alcoholDuty.pages.generic.PageObjectFinder.DataTableConverters
import java.time.format.DateTimeFormatter

import java.time.LocalDate
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

  When("""I click ECPSubmit on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickECPSubmitButton()
  }

  Then("""I am presented with the {string}""") { (page: String) =>
    //waitForPageHeaderRemoved in necessary places
    PageObjectFinder.page(page).checkURL
    PageObjectFinder.page(page).checkPageHeader()
    PageObjectFinder.page(page).checkPageTitle()
  }

  Then("""I am presented with the dynamic url {string}""") { (page: String) =>
    PageObjectFinder.page(page).checkCentralAssessmentURL()
    PageObjectFinder.page(page).checkPageHeader()
    PageObjectFinder.page(page).checkPageTitle()
  }

  And("""I verify the button {string} is displayed on {string}""") { (buttonText: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).verifyButtonDisplayed(buttonText)
  }

  Then("""I am presented with the dynamic header page {string} {string}""") { (page: String, text: String) =>
    PageObjectFinder.page(page).checkURL
    PageObjectFinder.page(page).checkPageHeader()
    PageObjectFinder.page(page).checkPageTitle()
    checkDynamicPageHeader(text)
  }

  Then("""I am presented with the {string} with new url""") { page: String =>
    PageObjectFinder.page(page).checkNewURL
    PageObjectFinder.page(page).checkPageHeader()
    PageObjectFinder.page(page).checkPageTitle()
  }

  Then("""I am presented with the {string} with new url containing prefix as {string} and suffix as {string}""") {
    (page: String, urlPrefix: String, urlSuffix: String) =>
      PageObjectFinder.page(page).checkNewURLWithTwoDynamicValues(urlPrefix, urlSuffix)
      PageObjectFinder.page(page).checkPageHeader()
      PageObjectFinder.page(page).checkPageTitle()
  }

  Then("""I am presented with the {string} with url suffix as {string}""") { (page: String, urlSuffix: String) =>
    PageObjectFinder.page(page).checkNewDynamicURL(urlSuffix)
    PageObjectFinder.page(page).checkPageHeader()
    PageObjectFinder.page(page).checkPageTitle()
  }

  Then("""I am presented with the {string} with existing url suffix as {string}""") {
    (page: String, urlSuffix: String) =>
      PageObjectFinder.page(page).checkExistingDynamicURL(urlSuffix)
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

  When("""I click confirm and continue button on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickConfirmAndContinueButton()
  }

  When("""I click continue button on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickContinueButton()
  }

  When("""I click update email address link on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickUpdateLink()
  }

  When("""I click back button on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickBackButton()
  }

  When("""I enter {string} on {string}""") { (data: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).enterDetails(data)
  }

  When("""I enter email address {string} on {string}""") { (email: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    val emailField = driver.findElement(By.xpath("//input[@id='emailAddress']"))
    emailField.clear()
    emailField.sendKeys(email)
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
      case "Task List Page"       =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/task-list")
      case "Return Summary Page"  =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/check-return")
      case "Alcohol Duty Service" =>
        driver.get(
          TestConfiguration.url("alcohol-duty-returns-frontend") + "/before-you-start-your-return/" + periodKey
        )
    }
  }

  And("""^I should see the following details""") { data: DataTable =>
    val expectedData = data.asMaps().asScala.toList.flatMap(_.asScala.toMap).toMap
    val actualData   = PageObjectFinder.pageData
    actualData should be(expectedData)
  }

  Given("""I cleared the data to view completed returns from previous years""") {
    driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/test-only/clear-user-fulfilled-obligations")
  }

  When("""I click the link to view completed returns from the previous year on {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    driver
      .findElement(
        By.xpath("//h2[normalize-space()='Completed returns from previous years']/following-sibling::p[1]/a")
      )
      .click()
  }

  When("""I click on the first {string} link on {string}""") { (hyperlink: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    driver.findElement(By.xpath("//tbody[@class='govuk-table__body']//td[3]//a[1]")).click()
  }

  And("""I navigate back to {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    driver.findElement(By.xpath("//a[normalize-space()='Back']")).click()
  }

  And("""I click on link {string} on {string}""") { (hyperlink: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    driver.findElement(By.xpath("//a[@id='back-to-returns-link']")).click()
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

  Then("""I am presented with the {string} {string}""") { (page: String, specificPage: String) =>
    PageObjectFinder.page(page).checkURL
    PageObjectFinder.page(page).checkPageTitle(specificPage)
  }

  When("""I click on {string} hyperlink on {string}""") { (hyperlink: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    driver.findElement(By.xpath("//a[normalize-space()='" + hyperlink + "']")).click()
  }

  When("""I click on {string} link on {string}""") { (hyperlink: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    driver.findElement(By.xpath("//tbody/tr[3]/td[5]/ul[1]/li[1]/a[1]")).click()
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

  Given("""I cleared the data for ECP service""") {
    driver.get(TestConfiguration.url("alcohol-duty-contact-preferences-frontend") + "/test-only/clear-all")
  }

  Given("""I clear the data to view Past Payments""") {
    driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/test-only/clear-user-historic-payments")
  }

  Given("""I go to the Before You Start auth page""") {
    driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/test-only/clear-all")
  }

  And("""I should see following details at the {string}""") { (page: String, data: DataTable) =>
    val expectedData = data.asMaps().asScala.toList.flatMap(_.asScala.toMap).toMap
    PageObjectFinder.page(page).waitForPageHeader
    val actualData   = PageObjectFinder.dataAtCheckYourAnswersPage
    actualData should be(expectedData)
  }

  And("""I should see the {string} and below error messages""") { (errorSummaryTitle: String, data: DataTable) =>
    val expectedErrorMessages = data.asScalaListOfStrings
    PageObjectFinder.checkPageErrorSummaryTitle(errorSummaryTitle)
    PageObjectFinder.checkListOfErrorMessages(expectedErrorMessages)
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

  And("""I should see the following text on CYA page""") { data: DataTable =>
    val expected = data.asScalaListOfStrings
    alcoholDeclaredSectionTextCYA should be(expected)
  }

  And("""I click on change link {int} on {string} for alcohol type {string}""") {
    (changeLinkIndex: Int, page: String, alcoholType: String) =>
      PageObjectFinder.page(page).waitForPageHeader
      driver
        .findElement(
          By.xpath(
            "(//a[@href='/manage-alcohol-duty/complete-return/alcoholic-products/" + alcoholType + "/declare/check-your-answers'])[" + changeLinkIndex + "]"
          )
        )
        .click()
  }

  And("""I verify {int} change links present on {string}""") { (expectedCount: Int, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    val changeHrefs: List[WebElement] = driver.findElements(By.xpath("//a[text()='Change']")).asScala.toList
    changeHrefs.size shouldBe expectedCount
  }

  And("""I should see the following details of the table {int} at the returns summary page""") {
    (num: Int, data: DataTable) =>
      val expected = data.asScalaListOfLists

      def declaredProductListAtReturnsSummary(num: Int): Seq[List[String]] = driver
        .findElements(By.xpath("//table[" + num + "]/tbody/tr[@class='govuk-table__row']"))
        .asScala
        .map { declaredProductDetails =>
          declaredProductDetails
            .findElements(By.tagName("td"))
            .asScala
            .map(getVisibleTextFromElement)
            .toList
        }
        .map(_.map {
          case text if text.startsWith("Change") => "Change" // Replace text with "Change" if it starts with "Change"
          case other                             => other // Keep all other values as they are
        })
        .toList

      val actual = declaredProductListAtReturnsSummary(num)
      actual should be(expected)
  }

  When("""I click on Agree and send return button {string}""") { (page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickAgreeAndSendReturnButton()
  }

}
