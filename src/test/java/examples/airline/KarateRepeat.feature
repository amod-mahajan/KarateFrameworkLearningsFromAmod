Feature: Karate repeat examples

  Scenario: Karate repeat example - 1
    * def dataGen = function(a) { return a + "karate" }
    * def data = karate.repeat(5, dataGen)
    * print data

  Scenario: Karate repeat example - 2
    * def javUtils = Java.type('examples.airline.utils.RandomDataGenerator')
    * def data = karate.repeat(5, javUtils.getRandomFullName)
    * print data

  Scenario: Karate repeat example - 3
    * def javUtils = Java.type('examples.airline.utils.RandomDataGenerator')
    * def dataGen = function() { return javUtils.getRandomFullName("gh") }
    * def data = karate.repeat(5, dataGen)
    * print data

  Scenario: Karate repeat example - 4
    * def dataGen = function() { return karate.call('Callable1.feature') }
    * def data = karate.repeat(5, dataGen)
    * print data
