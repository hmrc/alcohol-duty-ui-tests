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
import org.scalatest.concurrent.Eventually
import org.scalatest.matchers.should.Matchers
import org.scalatestplus.selenium.WebBrowser
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.driver.BrowserDriver
import uk.gov.hmrc.alcoholDuty.pages.BasePage
import uk.gov.hmrc.alcoholDuty.pages.generic.PageObjectFinder
import scala.collection.JavaConverters._


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

  Then("""I am presented with the {string}""") { page: String =>
    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).checkURL
    PageObjectFinder.page(page).checkPageHeader()
    PageObjectFinder.page(page).checkPageTitle()
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

  When("""I enter redirect url for {string}""") { (page: String) =>
    page match {
      case "Product Volume Page"                    =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/productVolume")
      case "Declare Duty Suspended Deliveries Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/declareDutySuspendedDeliveriesQuestion")
      case "Declare Duty Suspended Deliveries Outside UK Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/declareDutySuspendedDeliveriesOutsideUk")
      case "Declare Spirits Total Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/declareSpiritsTotal")
      case "Quarterly Spirits Returns Guidance Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/quarterlySpiritsReturnGuidance")
      case "Product Entry Guidance Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/productEntryGuidance")
      case "Declare Small Producer Relief Duty Rate Page" =>
        driver.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/declareSmallProducerReliefDutyRate")
    }
  }

  And("""^I should see the following details""") { data: DataTable =>
    val expectedData = data.asMaps().asScala.toList.flatMap(_.asScala.toMap).toMap
    val actualData = PageObjectFinder.pageData
    actualData should be(expectedData)
  }

  When("""I click {string} on {string}""") { (button: String, page: String) =>
    PageObjectFinder.page(page).clickButton(button)
  }
}
