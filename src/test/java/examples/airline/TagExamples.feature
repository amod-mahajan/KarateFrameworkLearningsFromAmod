Feature: Tag examples

  @Smoke
  Scenario: Smoke Test Scenario 1
    * print "Smoke Test Scenario 1 executed"

  @Smoke
  Scenario: Smoke Test Scenario 2
    * print "Smoke Test Scenario 2 use case executed"

  @Sanity
  Scenario: Sanity Test Scenario 1
    * print "Sanity Test Scenario 1 executed"

  @Sanity
  @Smoke
  Scenario: Sanity & Smoke Test Scenario 1
    * print "Sanity & Smoke Test Scenario 1 executed"
