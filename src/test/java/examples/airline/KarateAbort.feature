Feature: Karate abort examples

  Scenario: Karate abort - simple example
    * def role = "Employee"
    * if(role != "Admin") karate.fail("Role must be admin")
    * print "Permission granted"


    Scenario Outline: Access token testing
      * configure abortedStepsShouldPass = true
      Given url "https://api.sirv.com/v2/token"
      When request
      """
      {
    "clientId": "#(id)",
    "clientSecret": "#(secret)"
}
      """
      Then method post
      And status <statusCode>
      * if(statusCode != 200 ) karate.abort()
      And print response.token

      Examples:
      |id|secret|statusCode|
      |IF32COO5YHLI1V1fbm6yaAxQG5w|qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw==|200|
      |IF32COO5YHLI1V1fbm6ybAxQG5w|qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw==|401|
