Feature: Call once example

#  Background:
    #* def accessToken = callonce read('Callable1.feature')
    #* def accessToken = karate.callSingle('Callable1.feature')

  Scenario: Generate access token - 1
    * print accessToken.response.token

  Scenario: Generate access token - 2
    * print accessToken.response.token