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

import scala.jdk.CollectionConverters.{CollectionHasAsScala, MapHasAsScala}

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

  Then("""I am presented with the {string}""") {( page: String) =>
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

  When("""I select radio button {string} on {string}""") { (choice: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickRadioButton(choice)
  }

  When("""I select checkbox {string} on {string}""") { (choice: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).selectCheckBoxes(choice.split(","))
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
    PageObjectFinder.page(page).enterMultipleDetails(textToEnter,text)
  }

  When("""I enter month {string} and year {string} on {string}""") { (month: String, year: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).enterDate(month,year)
  }

  When("""I enter redirect url for {string}""") { (page: String) =>
    page match {
      case "How Much Rye Have You Used Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/how-much-rye-have-you-used")
      case "How Much Malted Barley Have You Used Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/how-much-malted-barley-have-you-used")
      case "How Much Wheat Have You Used Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/how-much-wheat-have-you-used")
      case "How Much Unmalted Grain Have You Used Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/how-much-unmalted-grain-have-you-used")
      case "How Much Ethylene Gas Have You Used Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/how-much-ethylene-gas-have-you-used")
      case "Declare Duty Suspended Deliveries Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/do-you-need-to-declare-delivered-received-duty-suspended")
      case "Declare Spirits Total Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/what-is-the-total-volume-of-spirits-you-made-this-quarter")
      case "Quarterly Spirits Returns Guidance Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/tell-us-about-the-spirits-and-ingredients-you-have-used")
      case "Product Entry Guidance Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/tell-us-about-your-alcohol")
      case "Declare Small Producer Relief Duty Rate Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/what-is-your-small-producer-duty-rate")
      case "Declare Adjustment Question Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/do-you-need-to-make-any-adjustments-from-a-previous-return")
      case "Task List Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/task-list/your-alcohol-duty-return")
    }
  }

  And("""^I should see the following details""") { data: DataTable =>
    val expectedData = data.asMaps().asScala.toList.flatMap(_.asScala.toMap).toMap
    val actualData = PageObjectFinder.pageData
    actualData should be(expectedData)
  }

  And("""^I should see the following product details""") { data: DataTable =>
    val expected = data.asScalaListOfLists
    val actual = productsList
    actual should be(expected)
  }

  When("""I click {string} on {string}""") { (button: String, page: String) =>
    PageObjectFinder.page(page).clickButton(button)
  }

  When("""I verify the ABV value displayed as {string} on {string}""") { (expectedText: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    val actualText = driver.findElement(By.cssSelector("ul[class='govuk-list govuk-list--bullet'] li")).getText
    actualText should be(expectedText)
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
      case "duty due" => getBulletPointsTextDutyDue should be(expectedText)
    }
  }

  Then("""I am presented with the {string} {string}""") { (page: String, specificPage: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).checkURL
    PageObjectFinder.page(page).checkPageTitle(specificPage)
  }

  When("""I click on {string} hyperlink on {string}""") { (hyperlink: String, page: String) =>
    PageObjectFinder.page(page).waitForPageHeader
    driver.findElement(By.xpath("//a[normalize-space()='"+hyperlink+"']")).click()
  }

  And("""^I should see the following status of the submission journey""") { data: DataTable =>
    val expectedData = data.asMaps().asScala.toList.flatMap(_.asScala.toMap).toMap
    val actualData = PageObjectFinder.taskListPageContentView
    actualData should be(expectedData)
  }

  And("""^I should see the following subsections$""") { data: DataTable =>
    val expected = data.asScalaListOfStrings
    subSectionsHeaderText should be(expected)
  }
}
