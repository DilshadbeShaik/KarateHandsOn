Feature: Print Hello world
  Scenario: Hello World Scenario
    * print 'hello world'
    * print 'Hello Dilshadbe'

    Scenario: Declare and print variables
      * def balance = 200
      * def fee = 20
      * def tax = 10
      * print 'total amount-->' + balance + fee + tax
  Scenario: Declare total  and print variables
    * def balance = 200
    * def fee = 20
    * def tax = 10
    * print 'total amount-->' +( balance + fee + tax)