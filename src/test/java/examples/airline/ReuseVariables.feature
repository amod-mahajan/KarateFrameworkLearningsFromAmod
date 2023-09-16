Feature: Reuse variable

#  Background:
#    * def age = 10
#
#  Scenario: Reuse variable
#    * def canVote = false
#    * set age = 22
#    * if(age > 21) canVote = true
#    * print canVote
#    * set age = 18
#    * if(age > 21) canVote = true
#    * print canVote


#  Background:
#    * def myVar = {k1:  100, k2:  "Amod"}
#
#  Scenario: Reuse variable
#    * set myVar.k1 = "Hello, world!"
#    * karate.log(myVar.k1)


  Scenario: Reassign variable
    * def name = "Amod"
    * print "Hello " + name
    * name = "Animesh"
    * print "Hello " + name

