Feature: Scenario outline examples - basics

  Scenario Outline: Basics of data driven for <fn>
    * def firstName = "<fn>"
    * def id = <id>
    * def isManager = <manager>
    * print "Details are " , firstName, id, isManager
    * match firstName == '#string'
    * match id == '#number'
    * match isManager == '#boolean'
    Examples:
      | fn      | id  | manager |
      | amod    | 100 | false   |
      | animesh | 200 | true    |

  Scenario Outline: Basics of data driven - JSON payload
    * def jsonDoc =
    """
    {
      "name": "<fn>",
      "id": <id>,
      "isManager": <manager>
    }
    """
    * print jsonDoc
    * print __row
    * print __num
    Examples:
      | fn      | id! | manager! |
      | amod    | 100 | false    |
      | animesh | 200 | true     |

  Scenario Outline: Basics of data driven - JSON payload - Embedded expression
    * def jsonDoc =
    """
    {
      "name": "#(fn)",
      "id": ##(id),
      "isManager": ##(manager)
    }
    """
    * print jsonDoc
    * print fn
    * print id
    * print manager
    * print __row
    Examples:
      | fn      | id! | manager! |
      | amod    |     | false    |
      | animesh | 200 |          |

  Scenario Outline: Basics of data driven - JSON payload - Embedded expression in examples
    * def randomName = "amod"
    * def jsonDoc =
    """
    {
      "name": "<fn>",
      "id": ##(id),
      "isManager": ##(manager)
    }
    """
    * print jsonDoc
    Examples:
      | fn      | id! | manager! |
      | #(randomName)    | 100 | false    |
      | animesh | 200 | true     |


  Scenario Outline: Basics of data driven - JSON payload - From JSON File <name>
    * def jsonDoc =
    """
    {
     "name": "<name>",
      "id": ##(id),
      "isManager": ##(isManager)
    }
    """
    * print jsonDoc
    * print __row
    Examples:
     |read('payloads/MOCK_DATA_JSON.json')|


  Scenario Outline: Basics of data driven - JSON payload - From JSON File <name>
    * print __row
    #* match __row == '#string'
    * def jsonUtils = Java.type('examples.airline.utils.JsonUtils')
    #* def jsonObject = jsonUtils.removeNullKeys(__row)
    * def jsonObject = jsonUtils.removeNullKeys(karate.toString(__row))
    * print jsonObject
    * print __row
    Examples:
      |read('payloads/MOCK_DATA_JSON.json')|

  Scenario Outline: Basics of data driven - JSON payload - From CSV File <name>
    * def jsonDoc =
    """
    {
     "name": "<name>",
      "id": ##(id),
      "isManager": ##(isManager)
    }
    """
    * print jsonDoc
    * print __row
    Examples:
      |read('payloads/MOCK_DATA.csv')|

  Scenario Outline: Basics of data driven - JSON payload - From CSV File <name>
    * print __row
    #* match __row == '#string'
    * def jsonUtils = Java.type('examples.airline.utils.JsonUtils')
    #* def jsonObject = jsonUtils.removeNullKeys(__row)
    * def jsonObject = jsonUtils.removeNullKeys(karate.toString(__row))
    * print jsonObject
    * print __row
    Examples:
      |read('payloads/MOCK_DATA.csv')|