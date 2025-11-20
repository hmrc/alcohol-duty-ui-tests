/*
 * Copyright 2025 HM Revenue & Customs
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

package specsteps

import org.openqa.selenium.By
import specpage.BasePage
import specpage.generic.PageObjectFinder
import specsteps.AlcoholDutyStepDefSteps._
import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.selenium.webdriver.Driver

object BaseStepDefSteps extends BasePage {

  // I navigate to the {string}
  def thenINavigateToThe(page: String): Unit =
    go to PageObjectFinder.page(page)

  // I click submit button on {string}
  def whenIClickSubmitButtonOn(page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickSubmitButton()

  // I click ECPSubmit on {string}
  def whenIClickECPSubmitOn(page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickECPSubmitButton()

  // I am presented with the {string}
  def thenIAmPresentedWithThe(page: String): Unit =
    PageObjectFinder.page(page).checkURL

  // I am presented with the {string} with new url
  def thenIAmPresentedWithTheWithNewUrl(page: String): Unit =
    PageObjectFinder.page(page).checkNewURL

  // I am presented with the {string} with url suffix as {string}
  def thenIAmPresentedWithTheWithUrlSuffixAs(page: String, urlSuffix: String): Unit =
    PageObjectFinder.page(page).checkNewDynamicURL(urlSuffix)

  // I am presented with the {string} with existing url suffix as {string}
  def thenIAmPresentedWithTheWithExistingUrlSuffixAs(page: String, urlSuffix: String): Unit =
    PageObjectFinder.page(page).checkExistingDynamicURL(urlSuffix)

  // I select radio button {string} on {string}
  def whenISelectRadioButtonOn(choice: String, page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickRadioButton(choice)

  // I {string} checkbox {string} on {string}
  def whenICheckboxOn(checkBoxAction: String, choice: String, page: String): Unit =
    checkBoxAction match {
      case "select" | "unselect" =>
        //        PageObjectFinder.page(page).waitForPageHeader
        PageObjectFinder.page(page).selectCheckBoxes(choice.split(","))
    }

  // I click save and continue button on {string}
  def whenIClickSaveAndContinueButtonOn(page: String): Unit =
    PageObjectFinder.page(page).clickSaveAndContinueButton()

  // I click confirm and continue button on {string}
  def whenIClickConfirmAndContinueButtonOn(page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickConfirmAndContinueButton()

  // I click continue button on {string}
  def whenIClickContinueButtonOn(page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickContinueButton()

  // I click back button on {string}
  def whenIClickBackButtonOn(page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickBackButton()

  // I enter {string} on {string}
  def whenIEnterOn(data: String, page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).enterDetails(data)

  // I enter {string} for {string} on {string}
  def whenIEnterForOn(textToEnter: String, text: String, page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).enterMultipleDetails(textToEnter, text)

  // I enter {string} for {string} on {string} at {string} input box
  def whenIEnterForOnAtInputBox(textToEnter: String, text: String, page: String, index: String): Unit =
    //      PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).enterMultipleDetailsWithIndex(textToEnter, text, index)

  // I enter month {string} and year {string} on {string}
  def whenIEnterMonthAndYearOn(month: String, year: String, page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).enterDate(month, year)

  // I enter redirect url for {string}
  def whenIEnterRedirectUrlFor(page: String): Unit =
    page match {
      case "Task List Page"       =>
        Driver.instance.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/task-list")
      case "Return Summary Page"  =>
        Driver.instance.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/complete-return/check-return")
      case "Alcohol Duty Service" =>
        Driver.instance.get(
          TestConfiguration.url("alcohol-duty-returns-frontend") + "/before-you-start-your-return/" + periodKey
        )
    }

  // I cleared the data to view completed returns from previous years
  def givenIClearedTheDataToViewCompletedReturnsFromPreviousYears(): Unit =
    Driver.instance.get(
      TestConfiguration.url("alcohol-duty-returns-frontend") + "/test-only/clear-user-fulfilled-obligations"
    )

  // I click the link to view completed returns from the previous year on {string}
  def whenIClickTheLinkToViewCompletedReturnsFromThePreviousYearOn(page: String): Unit = {
    PageObjectFinder.page(page).waitForPageHeader
    Driver.instance
      .findElement(
        By.xpath("//h2[normalize-space()='Completed returns from previous years']/following-sibling::p[1]/a")
      )
      .click()
  }

  // I click on the first {string} link on {string}
  def whenIClickOnTheFirstLinkOn(hyperlink: String, page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    Driver.instance.findElement(By.xpath("//tbody[@class='govuk-table__body']//td[3]//a[1]")).click()

  // I click {string} on {string}
  def whenIClickOn(button: String, page: String): Unit =
    PageObjectFinder.page(page).clickButton(button)

  // I click on {string} hyperlink on {string}
  def whenIClickOnHyperlinkOn(hyperlink: String, page: String): Unit =
    Driver.instance.findElement(By.xpath("//a[normalize-space()='" + hyperlink + "']")).click()

  // I click on {string} link on {string}
  def whenIClickOnLinkOn(hyperlink: String, page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    Driver.instance.findElement(By.xpath("//tbody/tr[3]/td[5]/ul[1]/li[1]/a[1]")).click()

  // I cleared the data for the service
  def givenIClearedTheDataForTheService(): Unit =
    Driver.instance.get(TestConfiguration.url("alcohol-duty-returns-frontend") + "/test-only/clear-all")

  // I cleared the data for ECP service
  def givenIClearedTheDataForECPService(): Unit =
    Driver.instance.get(TestConfiguration.url("alcohol-duty-contact-preferences-frontend") + "/test-only/clear-all")

  // I clear the data to view Past Payments
  def givenIClearTheDataToViewPastPayments(): Unit =
    Driver.instance.get(
      TestConfiguration.url("alcohol-duty-returns-frontend") + "/test-only/clear-user-historic-payments"
    )

  // I click on change link {int} on {string} for alcohol type {string}
  def andIClickOnChangeLinkOnForAlcoholType(changeLinkIndex: Int, page: String, alcoholType: String): Unit = {
    PageObjectFinder.page(page).waitForPageHeader
    Driver.instance
      .findElement(
        By.xpath(
          "(//a[@href='/manage-alcohol-duty/complete-return/alcoholic-products/" + alcoholType + "/declare/check-your-answers'])[" + changeLinkIndex + "]"
        )
      )
      .click()
  }

  // I click on Agree and send return button {string}
  def whenIClickOnAgreeAndSendReturnButton(page: String): Unit =
    //    PageObjectFinder.page(page).waitForPageHeader
    PageObjectFinder.page(page).clickAgreeAndSendReturnButton()

  // Background steps 1 for starting a return
  def loginAndStartReturn(appaId: String): Unit = {
    givenIClearedTheDataForTheService()
    thenINavigateToThe("Auth Login Stub Page")
    whenIEnterRedirectURLOnAuthLoginStubPageFor("Alcohol Duty Service")
    whenISelectAffinityTypeAsOn("Organisation", "Auth Login Stub Page")
    whenIEnterEnrollmentKeyIdentifierNameAndIdentifierValueOn("HMRC-AD-ORG", "APPAID", appaId, "Auth Login Stub Page")
    whenIClickSubmitButtonOn("Auth Login Stub Page")
    thenIAmPresentedWithThe("Before You Start Page")
    whenIClickContinueButtonOn("Before You Start Page")
    thenIAmPresentedWithThe("Task List Page")
  }

  // Background steps 2 for AlcoholDutyReturnsChangeLinksCYAPage.feature
  def selectAllRegimes(): Unit = {
    whenIClickOnHyperlinkOn("Tell us if you have alcoholic products to declare", "Task List Page")
    thenIAmPresentedWithThe("Declare Alcohol Duty Question Page")
    whenISelectRadioButtonOn("Yes", "Declare Alcohol Duty Question Page")
    whenIClickSaveAndContinueButtonOn("Declare Alcohol Duty Question Page")
    thenIAmPresentedWithThe("What Alcohol Do You Need To Declare Page")
    whenICheckboxOn(
      "select",
      "Beer,Cider,Wine,Spirits,Other fermented products",
      "What Alcohol Do You Need To Declare Page"
    )
    whenIClickSaveAndContinueButtonOn("What Alcohol Do You Need To Declare Page")
    thenIAmPresentedWithThe("Task List Page")
  }

  // Background steps 2 for adjustments
  def navigateToAdjustmentTypePage(): Unit = {
    whenIClickOnHyperlinkOn("Tell us if you have adjustments to declare", "Task List Page")
    thenIAmPresentedWithThe("Declare Adjustment Question Page")
    whenISelectRadioButtonOn("Yes", "Declare Adjustment Question Page")
    whenIClickSaveAndContinueButtonOn("Declare Adjustment Question Page")
    thenIAmPresentedWithThe("Adjustment Type Page")
  }

  // Background steps for payments
  def loginForPayments(appaId: String = "XMADP0002900211"): Unit = {
    givenIClearTheDataToViewPastPayments()
    thenINavigateToThe("Auth Login Stub Page")
    whenIEnterRedirectURLOnAuthLoginStubPageFor("View Past Payments Page")
    whenISelectAffinityTypeAsOn("Organisation", "Auth Login Stub Page")
    whenIEnterEnrollmentKeyIdentifierNameAndIdentifierValueOn("HMRC-AD-ORG", "APPAID", appaId, "Auth Login Stub Page")
    whenIClickSubmitButtonOn("Auth Login Stub Page")
  }

  // Background steps for ECP
  def loginForEcp(appaId: String, typeOfJourney: String = "Email Contact Preference"): Unit = {
    givenIClearedTheDataForECPService()
    thenINavigateToThe("Auth Login Stub Page")
    whenIEnterRedirectURLOnAuthLoginStubPageFor(typeOfJourney) // specify if "Email Update" or "Email Bounce"
    whenISelectAffinityTypeAsOn("Organisation", "Auth Login Stub Page")
    whenIEnterEnrollmentKeyIdentifierNameAndIdentifierValueOn("HMRC-AD-ORG", "APPAID", appaId, "Auth Login Stub Page")
    whenIEnterCredIDOn("cred0", "Auth Login Stub Page")
    whenIClickSubmitButtonOn("Auth Login Stub Page")
  }

}
