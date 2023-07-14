Feature: Create an airline

  Scenario: Create an airline with hardcoded json payload
    Given url createAirlineUrl
    And print "url is" , createAirlineUrl
    And print 'someVar value', someVar
    #And print 'userType', userType
    And print 'userType direct', karate.properties['userType']
    And request {"id":443543,"name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https:\/\/upload.wikimedia.org\/wikipedia\/en\/thumb\/9\/9b\/Qatar_Airways_Logo.svg\/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaairways.com","established":"1990"}
    When method post
    Then status 200

  Scenario: Create an airline with multiline json payload
    Given url createAirlineUrl
    And request
    """
    {
    "id": 435345,
    "name": "Sri Lankan Airways",
    "country": "Sri Lanka",
    "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png",
    "slogan": "From Sri Lanka",
    "head_quaters": "Katunayake, Sri Lanka",
    "website": "www.srilankaairways.com",
    "established": "1990"
}
    """
    When method post
    Then status 200


  Scenario: Create an airline with created json payload
    Given url "https://api.instantwebtools.net/v1/airlines"
    * def requestPayload = {}
    * requestPayload.id = 423432
    * requestPayload.name = "Sri Lankan Airways", requestPayload.country = "Sri Lanka"
    * requestPayload.logo = "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png"
    * requestPayload.slogan = "From Sri Lanka"
    * requestPayload.head_quaters = "Katunayake, Sri Lanka"
    * requestPayload.website = "www.srilankaairways.com"
    * requestPayload.established = 1990
    * requestPayload.address = []
    * requestPayload.address[0] = {}
    * requestPayload.address[0].city = "BLR"
    * requestPayload.address[0].state = "KA"
    * requestPayload.address[1] = {}
    * requestPayload.address[1].city = "DL"
    * requestPayload.address[1].state = "DL"
    * print requestPayload
    And request requestPayload
    When method post
    Then status 200

  Scenario: Create an airline with json payload from external source
    Given url "https://api.instantwebtools.net/v1/airlines"
    * def requestPayload = read('payloads/CreateAirlinePayload.json')
    * set requestPayload.id = 324324
    * print requestPayload
    And request requestPayload
    When method post
    Then status 200
    * remove requestPayload.id
    And request requestPayload
    When method post
    Then status 200


  Scenario: Create an airline with json payload from external source
    Given url "https://api.instantwebtools.net/v1/airlines"
    * def requestPayload = read('payloads/CreateAirlinePayload.json')
    * set requestPayload.ceo = "Amod Mahajan"
    * set requestPayload.foo =
    """
    {
    "foo1" : {
      "foo2": "boo1"
    }
  }
    """
    * set requestPayload.foo.foo1.foo2 = "boo2"
    * set requestPayload.Skills[0] =
    """
    {
      "sub": "Java"
    }
    """
    * set requestPayload.Skills[1] =
    """
    {
      "sub": "Selenium"
    }
    """
    * print requestPayload



  # C:\WorldOfRetargetCommon\KarateQuickStartDemo\src\test\java\examples\airline\src\test\java\examples\airline\payloads\CreateAirlinePayload.json