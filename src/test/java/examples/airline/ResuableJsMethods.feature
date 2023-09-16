Feature: Reusable javascript functions

  Scenario: Reusable javascript functions
    * def printName = function() { return "amod"}
    * def printName1 = function(name) { return name}
    * def printName2 =
    """
    function(name)
    {
    let welcome = "Hello " + name;
      return welcome
    }
    """