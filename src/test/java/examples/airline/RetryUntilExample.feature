Feature: Retry until example

  Scenario: Retry until scenario
   * configure retry = {count :  6, interval:  5000}
   Given url "https://api.sirv.com/v21/token"
   When request
    """
    {
    "clientId": "IF32COO5YHLI1V1fbm6yaAxQG5w",
    "clientSecret": "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw=="
}
    """
   * def utils = Java.type("examples.airline.utils.JsonUtils")
    #And retry until responseStatus == 200
   And retry until utils.wannaRetry(karate.toString(response))
   Then method post
    And status 200