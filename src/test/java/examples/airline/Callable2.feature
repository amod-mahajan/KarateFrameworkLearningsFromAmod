Feature: This feature will be called in to other feature file

  Scenario: Callable scenario
    Given url 'https://api.sirv.com/v2/token'
    When request
    """
    {
    "clientId": "#(clientId)",
    "clientSecret": "#(clientSecret)"
    }
    """
    Then method post