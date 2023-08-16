Feature: Fuzzy matchers examples

#  Scenario: Fuzzy matchers - 1
#    * def jo =
#    """
#    {
#  "id": "123",
#  "dob": 1991
#}
#    """
#  * match jo.id == "123"
#  * match jo.id == '#string'
#  * match jo.id == '#string'
#  * match jo.dob == '#number'
#
#  * match jo.id == "#regex [0-9]{3}"
#    * match jo.id == "#regex \\d{3}"
#
#    # * match jo.dob == "#regex [0-9]{4}"
#    * match (jo.dob + "") == "#regex [0-9]{4}"

#  Scenario: Fuzzy matchers - 2
#    * def jo =
#    """
#    {
#  "name": "amod",
#  "company": "RC"
#}
#    """
#    * match jo ==
#    """
#    {
#  "name": "#present",
#  "company": "#ignore"
#}
#    """

#  Scenario: Basic example 3
#    * def jsonResponse =
#      """
#      {
#      "id": 123,
#      "name": "Amod Mahajan",
#      "manager": false,
#      "skills": [
#      "Java",
#      "Testing"
#      ]
#      }
#      """
#    * match jsonResponse.skills == '#array'
#    * match jsonResponse.skills == '#[]'
#    * match jsonResponse.skills == '#[2]'
#    * match jsonResponse.skills == '#[] #string'
#    * match jsonResponse.skills == '#? _[0] == "Java"'
#    * match jsonResponse.skills == '#? _[0].length == 4'

      Scenario: Fuzzy matchers - 2
    * def jo =
    """
    {
  "company": "RC"
}
    """
        * match jo.name == '#notnull'