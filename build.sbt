lazy val root = (project in file("."))
  .enablePlugins(SbtWeb)
  .settings(
    scalaVersion := "2.13.1",
    name := "Bug",
  )
