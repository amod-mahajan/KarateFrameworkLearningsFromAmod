Feature: Create airline

  Scenario: Create airline
    Given url "https://api.instantwebtools.net/v1/airlines"
    * def data = {}
    * data.id = 1232133
    * data.name = "Airline 123"
    * data.country = "dsfsd"
    * data.logo = "Fdsfsdf"
    * data.slogan = "dsffsdg"
    * data.head_quaters = "dfdf"
    * data.website = "sdfsd"
    * data.established = 1990
    * print data
    When request data
    And method post
    Then status 200

  Scenario: Create airline 123
    Given url "https://api.instantwebtools.net/v1/airlines"
    * def data = {}
    * data.id = 1232133, data.name = "Airline 123"
    * data.country = "dsfsd"
    * data.logo = "Fdsfsdf"
    * data.slogan = "dsffsdg"
    * data.head_quaters = "dfdf"
    * data.website = "sdfsd"
    * data.established = 1990
    * print data
    When request data
    And method post
    Then status 200

  Scenario: Create airline 1234
    Given url "https://api.instantwebtools.net/v1/airlines"
    * def data = {}
    * data.id = 1232133, data.name = "Airline 123"
    * data.country = "dsfsd"
    * data.logo = "Fdsfsdf"
    * data.slogan = "dsffsdg"
    * data.head_quaters = "dfdf"
    * data.website = "sdfsd"
    * data.established = 1990
    * data.skills = {}
    * data.skills[0] = "Java"
    * data.skills[1] = "Selenium"
    * print data
    When request data


  Scenario: Create airline 123456
    Given url "https://api.instantwebtools.net/v1/airlines"
    * def payloadClass = Java.type("examples.airline.payloads.Payloads")
    * def data = payloadClass.getCreateAirlinePayload()
    * print data
    When request data