Feature: Callable 5

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