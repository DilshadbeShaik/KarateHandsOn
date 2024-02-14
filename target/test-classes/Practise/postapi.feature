Feature: POST API
  Background:
    * url 'https://gorest.co.in'
    * def requestpayload =
    """
    {
    "name":"Kamla D",
    "email":"d_kamla1234@gmail12311.com",
    "gender":"female",
    "status":"active"
    }
    """

    Scenario: Create a user with the given data
      Given  path '/public/v2/users'
      And request requestpayload
      And header Authorization = 'Bearer ' + tokenID
      When method post
      Then status 201
      And match $.id == '#present'
      And match $.name == '#present'
      And match $.name == 'Kamla D'
      And match $.email == 'd_kamla1234@gmail12311.com'
      And match $.gender == 'female'
      And match $.status == 'active'

