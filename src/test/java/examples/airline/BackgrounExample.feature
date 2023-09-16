Feature: Call once example

  Background:
    Given url "https://api.sirv.com/v2/token"

  Scenario: Access token success
    Then request
    """
    {
    "clientId": "IF32COO5YHLI1V1fbm6yaAxQG5w",
    "clientSecret": "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw=="
}
    """
    When method post
    Then status 200

  Scenario: Access token failure
    Then request
    """
    {
    "clientId": "IF32COO5YHLI1V1m6yaAxQG5w",
    "clientSecret": "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw=="
}
    """
    When method post
    Then status 401