@ignore
Feature: This feature file contains @ignore examples

  Scenario: Scenario one
    * print "Scenario one will be executed"
    * call read('@util')

  @ignore @util
  Scenario: Scenario two
    * print "Scenario two will be executed"


  Scenario: Scenario three
    * print "Scenario three will be executed"
