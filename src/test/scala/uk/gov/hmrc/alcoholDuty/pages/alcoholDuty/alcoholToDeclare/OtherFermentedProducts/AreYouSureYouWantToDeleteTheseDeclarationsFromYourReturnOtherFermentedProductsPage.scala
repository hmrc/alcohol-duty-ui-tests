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

package uk.gov.hmrc.alcoholDuty.pages.alcoholDuty.alcoholToDeclare.OtherFermentedProducts

import uk.gov.hmrc.alcoholDuty.conf.TestConfiguration
import uk.gov.hmrc.alcoholDuty.pages.BasePage

object AreYouSureYouWantToDeleteTheseDeclarationsFromYourReturnOtherFermentedProductsPage extends BasePage {

  override val url: String    = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/OtherFermentedProduct/declare/spr/multiple-duty-rates/missing-details/confirmation"
  override val newUrl: String = TestConfiguration.url(
    "alcohol-duty-returns-frontend"
  ) + "/complete-return/alcoholic-products/OtherFermentedProduct/change/spr/multiple-duty-rates/missing-details/confirmation"
  override val title          = "Are you sure you want to delete these declarations from your return?"

  override def expectedPageErrorTitle: Option[String] = Some(
    "Error: Are you sure you want to delete these declarations from your return? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageTitle: Option[String] = Some(
    "Are you sure you want to delete these declarations from your return? - Manage your Alcohol Duty - GOV.UK"
  )

  override def expectedPageHeader: Option[String] = Some("Are you sure you want to delete these declarations from your return?")

  override def clickRadioButton(text: String): Unit =
    text match {
      case "Yes, delete these declarations" => click on cssSelector("#deleteMissingDeclarations")
      case "No, I want to go back and add details for these declarations"  => click on cssSelector("#deleteMissingDeclarations-no")
    }
}
