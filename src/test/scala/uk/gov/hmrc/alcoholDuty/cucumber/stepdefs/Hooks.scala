package uk.gov.hmrc.alcoholDuty.cucumber.stepdefs

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


import uk.gov.hmrc.alcoholDuty.driver.BrowserDriver
import uk.gov.hmrc.selenium.webdriver.{Browser, Driver}
import io.cucumber.scala._
import org.apache.commons.io.FileUtils
import org.openqa.selenium._
import org.scalatest.matchers.should.Matchers

import java.io.File

object Hooks extends ScalaDsl with EN with Matchers with Browser with BrowserDriver {

  BeforeAll {
    startBrowser()
    Driver.instance.manage().deleteAllCookies()
  }

  // To take a screenshot and embed in to the Cucumber report
  private def takeScreenshot(scenario: Scenario, s: String, dr: WebDriver with TakesScreenshot): Unit = {
    val name = scenario.getName.replaceAll(" ", "_")
    if (!new java.io.File(s"./target/screenshots/$name$s.png").exists) {
      dr.manage().window().maximize()
      val scr      = dr.getScreenshotAs(OutputType.FILE)
      FileUtils.copyFile(scr, new File(s"./target/screenshots/$name$s.png"))
      val byteFile = dr.getScreenshotAs(OutputType.BYTES)
      scenario.attach(byteFile, "image/png", name)
    }
  }

  After { scenario: Scenario =>
    if (scenario.isFailed) {
      driver match {
        case a: TakesScreenshot =>
          takeScreenshot(scenario, "-page-on-failure", a)
          println(s"Page of failure was: ${driver.getCurrentUrl}")
      }
    }
  }

  AfterAll {
    quitBrowser()
  }
}
