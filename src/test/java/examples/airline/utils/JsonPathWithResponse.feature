Feature:

  Scenario: JsonPath with response
    Given url "https://run.mocky.io/v3/e63df380-166a-4dc0-8118-3251a35f59cf"
    When method post
    Then status 200
    * print (karate.jsonPath(response, '$.store.book[*].author'))[0]
    * print response.store.book[1].author
    #* print $.expensive
    * def ddd = $.expensive
    * print ddd
    * def d11 = response.store.book[1].author
    * print d11
    * def d = get response.store.book[*].author
    * print d
    * def d1 = $response.store.book[*].author
    * print d1
    * match response.store.book[*].author == []