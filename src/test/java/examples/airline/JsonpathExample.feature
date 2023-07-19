Feature: Jsonpath concepts in details

  Scenario: Basics Jsonpath examples
    * def jsonObject =
    """
    {
  "store": {
    "book": [
      {
        "category": "reference",
        "author": "Nigel Rees",
        "title": "Sayings of the Century",
        "price": 8.95
      },
      {
        "category": "fiction",
        "author": "Evelyn Waugh",
        "title": "Sword of Honour",
        "price": 12.99
      },
      {
        "category": "fiction",
        "author": "Herman Melville",
        "title": "Moby Dick",
        "isbn": "0-553-21311-3",
        "price": 8.99
      },
      {
        "category": "fiction",
        "author": "J. R. R. Tolkien",
        "title": "The Lord of the Rings",
        "isbn": "0-395-19395-8",
        "price": 22.99
      }
    ],
    "bicycle": {
      "color": "red",
      "price": 19.95
    }
  },
  "expensive": 10,
  "title": "New Title"
}
    """
    #* match jsonObject.expensive == 11
#    * def expensiveVal = get jsonObject.expensive
#    * print "expensive value ", expensiveVal
#    * match expensiveVal == 10

#    * def expensiveVal = get jsonObject $.expensive
#    * print "expensive value ", expensiveVal
#    * match expensiveVal == 10

#    * def expensiveVal = $jsonObject.expensive
#    * print "expensive value ", expensiveVal
#    * match expensiveVal == 10

#    * def expensiveVal = karate.get('$jsonObject.expensive')
#    * print "expensive value ", expensiveVal
#    * match expensiveVal == 10

#    * def expensiveVal = karate.jsonPath(jsonObject, '$.expensive')
#    * print "expensive value ", expensiveVal
#    * match expensiveVal == 10
#    * match karate.jsonPath(jsonObject, '$.expensive') == karate.get('$jsonObject.expensive')

#  * print jsonObject.store.book[1].title
#  * print jsonObject.store.book[*].title

#    * print karate.jsonPath(jsonObject, '$.store.book[1].title')
#    * print (karate.get('$jsonObject.store.book[*].title'))[3]

#  * def v1 = karate.jsonPath(jsonObject, '$..book..title')
#    * print v1

#  * print karate.jsonPath(jsonObject, "$.store.book[?(@.author == 'Nigel Rees')].title")

   #  * print karate.jsonPath(jsonObject, "$.store.book[?(@.author == 'Nigel Rees' || @.author == 'Evelyn Waugh')].title")

   * print karate.jsonPath(jsonObject, '$.store.book[0,1,2]')

















                                    #* print karate.jsonPath(jsonObject, '$.store.book.length()')
    #* print karate.jsonPath(jsonObject, '$.store.book[*].price')
#    * print karate.jsonPath(jsonObject, '$..price.sum()')
#    * print karate.jsonPath(jsonObject, '$..price.min()')
#    * print karate.jsonPath(jsonObject, '$..price.max()')


#  * print karate.get("jsonObject.store.book[1].author1", 100)
#    * print karate.get("$jsonObject.store.book[*].author", 100)






