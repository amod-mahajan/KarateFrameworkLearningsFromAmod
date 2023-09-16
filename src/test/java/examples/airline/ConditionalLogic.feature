Feature: Conditional logic example

  Scenario: Tertiary operator 1
    * def status = 201
    * def finalValue = status == 200 ? "Success" : "Failed"
    * print finalValue

  Scenario: Tertiary operator 2
    * def status = 201
    * def flag = true
    * def finalValue = status == 200 || flag == true ? "Success" : "Failed"
    * print finalValue

  Scenario: Tertiary operator 3
    * def status = 200
    * def flag = false
    * def finalValue = status == 200 ? flag == true ? "SUccessFlag" : "FailedFlag" : "Failed"
    * print finalValue

  Scenario: Tertiary operator 4
    * def status = 201
    * def finalValue = if ( status == 200 ) "Success"
    * print finalValue
    * def finalValue = if( finalValue == null ) "Failed"
    * print finalValue


  Scenario: Tertiary operator 5
    * def status = 200
    * def finalValue = status == 200 ? karate.call("Callable1.feature") : "Failed"
    * print finalValue

  Scenario: Tertiary operator 6
    * def status = 200
    * def finalValue = if(status == 200) karate.call("Callable1.feature")
    * print finalValue

#    if(status == 200) {
#    return "Success"
#    }
#    else {
#    return "Failed"
#    }

