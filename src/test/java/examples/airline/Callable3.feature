Feature: This feature will be called in to other feature file

  Scenario: Callable scenario
    Given url 'https://api.sirv.com/v2/token'
    * print __arg
    When request __arg
    Then method post