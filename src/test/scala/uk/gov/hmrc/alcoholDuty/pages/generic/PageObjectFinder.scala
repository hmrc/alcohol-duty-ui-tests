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

package uk.gov.hmrc.alcoholDuty.pages.generic

import io.cucumber.datatable.DataTable
import org.apache.commons.io.FileUtils
import org.scalatest.exceptions.TestFailedException
import uk.gov.hmrc.alcoholDuty.pages.BasePage

import java.io.{File, FileNotFoundException}
import scala.jdk.CollectionConverters.CollectionHasAsScala
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.util.Locale

object PageObjectFinder extends BasePage {

  override val title: String = ""
  override val url: String = ""

  private val files = {
    val directories = Seq(
      file("src/test/scala/uk/gov/hmrc/alcoholDuty/pages/")
    )

    val fileList: File => List[File] = f => FileUtils
      .listFiles(f, Array("scala"), true)
      .asScala.toList

    directories.flatMap(fileList)
  }

  def page(pageIn: String): BasePage = {
    val page = pageIn.replaceAll(" ", "")
    files.find(_.getName == s"$page.scala")
      .map(_.getAbsolutePath.replaceAll(".*/(uk/.*).scala", "$1").replaceAll("/", "."))
      .map(str => Class.forName(str + "$").getField("MODULE$").get(classOf[BasePage]).asInstanceOf[BasePage])
      .getOrElse(throw new TestFailedException(s"$page does not exist in tests, or it does not conform to Web page format", new FileNotFoundException(), 12))
  }

  def file(path: String): File = {
    new File(path)
  }

  val formatter: DateTimeFormatter = DateTimeFormatter.ofPattern("MMMM yyyy").withLocale(Locale.UK)
  val now: LocalDate = LocalDate.now()
  val getDueMonth: String        = now.minusMonths(1).format(formatter)
  val getOverdueMonth1: String   = now.minusMonths(2).format(formatter)
  val getOverdueMonth2: String   = now.minusMonths(3).format(formatter)
  val getOverdueMonth3: String   = now.minusMonths(4).format(formatter)
  val getCompletedMonth1: String = now.minusMonths(5).format(formatter)
  val getCompletedMonth2: String = now.minusMonths(6).format(formatter)
  val getCompletedMonth3: String = now.minusMonths(7).format(formatter)
  def expectedOutstandingReturns: List[List[String]] = List(List("Period", "Status", "Action"), List(getDueMonth, "DUE", "Submit Return"), List(getOverdueMonth1, "OVERDUE", "Submit Return"),
    List(getOverdueMonth2, "OVERDUE", "Submit Return"), List(getOverdueMonth3, "OVERDUE", "Submit Return"))
  def expectedCompletedReturns: List[List[String]]   = List(List("Period", "Status", "Action"), List(getCompletedMonth1, "COMPLETED", "View Return"), List(getCompletedMonth2, "COMPLETED", "View Return"),
    List(getCompletedMonth3, "COMPLETED", "View Return"))

  implicit class DataTableConverters(dataTable: DataTable) {
    def asScalaListOfStrings: List[String] = dataTable.cells().asScala.flatMap(_.asScala).toList

    def asScalaListOfLists: List[List[String]] = dataTable.rows(0).asLists().asScala.map(_.asScala.toList).toList

  }
}