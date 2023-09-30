Feature: This feature file contains @setup examples

  Scenario: Setup example 1
    * def json = karate.setup()
    * print json


  @setup
  Scenario: Setup data
    * def jsonData =
    """
    {
  "name": "Amod",
  "gender": "Male"
}
    """


Feature: scenario outline using a JSON array as the data-source

  @setup
  Scenario:
    * def kittens = read('../callarray/kittens.json')

  Scenario Outline: cat name: ${name}
    Given url demoBaseUrl
    And path 'cats'
    And request { name: '#(name)' }
    When method post
    Then status 200
    And match response == { id: '#number', name: '#(name)' }

    Examples:
      | karate.setup().kittens |