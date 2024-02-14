Feature: put API feature
  Background:
    * url 'https://gorest.co.in'
    * def requestpayload =
    """
    {
    "name":"Kamla Dr",
    "email":"d_kamla@gmail1231123.com"
    }
    """
  Scenario: put user details
    Given url 'https://gorest.co.in/public/v2/users'
    And path '6364880'
    And request requestpayload
    And header Authorization = 'Bearer ' + tokenID
    When method PUT
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def gender = jsonResponse.gender
    * match gender == 'male'

