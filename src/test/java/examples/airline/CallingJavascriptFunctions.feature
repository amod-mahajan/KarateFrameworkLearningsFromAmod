Feature: Calling javascript custom functions

  Scenario: Calling javascript functions - 1
    * def getName = function() { return "amod"}
    * def value = getName()
    * print value
    * def getName1 = function(name) { return name}
    * def value1 = getName1("Mukesh")
    * print value1
    * def getName2 =
    """
    function(name)
    {
      let welcome = "Hello " + name;
      return welcome
    }
    """
    * def value2 = getName2("Mukesh")
    * print value2
    * def getName3 =
    """
    function printName(name)
    {
      let welcome = "Hello " + name;
      return welcome
    }
    """
    * def value2 = getName3("Naveen")
    * print value2

  Scenario: Calling javascript functions from js file
    * def jsUtils1 = read('utils/jsutils.js')
   # * def val = jsUtils1("mukesh")
    #* print val
    * def val = jsUtils1().printName()
    * print val
    * def val = jsUtils1().printName1("amod")
    * print val
    * def val = jsUtils1().printName2("mukesh")
    * print val

  Scenario: Calling javascript functions from js feature file
    * def jsUtilis = call read('ResuableJsMethods.feature')
    * print jsUtilis
  * def val = jsUtilis.printName()
    * print val
    * def val = jsUtilis.printName1("Mukesh")
    * print val
    * def val = jsUtilis.printName2("Naveen")
    * print val
