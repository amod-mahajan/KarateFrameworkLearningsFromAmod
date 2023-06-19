Feature: Generate random data using Java faker library

  Scenario: Create simple JSON Object - Data Faker
    * def dataFaker = Java.type("net.datafaker.Faker")
    * def dataFakerObject = new dataFaker()
    * def idValue = dataFakerObject.number().digits(5)
    * def nameValue = dataFakerObject.name().fullName()
    * set jsonObjectPayload
      | path | value                              |
      | id   | dataFakerObject.number().digits(5) |
      | name | dataFakerObject.name().fullName()  |
    * print jsonObjectPayload