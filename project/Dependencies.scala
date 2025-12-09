import sbt.*

object Dependencies {

  val test: Seq[ModuleID] = Seq(
    "org.scalatest"       %% "scalatest"              % "3.2.19"   % Test,
    "junit"                % "junit"                  % "4.13.2"   % Test,
    "com.novocode"         % "junit-interface"        % "0.11"     % Test,
    "uk.gov.hmrc"         %% "ui-test-runner"         % "0.52.0"   % Test,
    "org.scalatestplus"   %% "selenium-4-12"          % "3.2.17.0" % Test,
    "com.typesafe.play"   %% "play-json-joda"         % "2.10.8"   % Test,
    "com.typesafe"         % "config"                 % "1.4.5"    % Test,
    "com.vladsch.flexmark" % "flexmark-all"           % "0.64.8"   % Test,
  )

}
