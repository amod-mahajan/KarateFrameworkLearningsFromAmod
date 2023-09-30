Feature: This feature file will call other feature files

  Scenario: Calling callable
    * def returnData = call read('Callable.feature')
    * print returnData
    * print returnData.username



  Scenario: Calling callable1
    * def returnData = call read('Callable1.feature')
    * print returnData
    * print returnData.response.token

  Scenario: Calling callable2
    * def clientId = "IF32COO5YHLI1V1fbm6yaAxQG5w"
    * def clientSecret = "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw=="
    * def returnData = call read('Callable2.feature')
    * print returnData
    * print returnData.response.token


  Scenario: Calling callable2
    * def clientId1 = "IF32COO5YHLI1V1fbm6yaAxQG5w"
    * def clientSecret1 = "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw=="
    * def returnData = call read('Callable2.feature') {clientId: '#(clientId1)', clientSecret: '#(clientSecret1)'}
    * print returnData
    * print returnData.response.token


  Scenario: Calling callable2
    * def clientId1 = "IF32COO5YHLI1V1fbm6yaAxQG5w"
    * def clientSecret1 = "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw=="
    * def jsonObject =
    """
    {clientId: '#(clientId1)', clientSecret: '#(clientSecret1)'}
    """
    * def returnData = call read('Callable2.feature') jsonObject
    * print returnData
    * print returnData.response.token


  Scenario: Calling callable3
    * def jsonObject =
    """
    {
    "clientId": "IF32COO5YHLI1V1fbm6yaAxQG5w",
    "clientSecret": "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw=="
    }
    """
    * def returnData = call read('Callable3.feature') jsonObject
    * print returnData
    * print returnData.response.token

  Scenario: Calling callable4
    * def jsonObject =
    """
    {
    "clientId": "IF32COO5YHLI1V1fbm6yaAxQG5w",
    "clientSecret": "qPDYKw/9KlediMWs4IRNRsMeBgt/fsEsIEgmFKPVR+CvSwIF3ErzhdCrSdYlkY/JGu9lgkGCmB9IxgZPV+NqCw=="
    }
    """
    * def returnData = call read('Callable4.feature@failure') jsonObject
    * print returnData
    * print returnData.response.token


  Scenario: Calling callable5
    * def returnData = call read('Callable5.feature')
    * print returnData