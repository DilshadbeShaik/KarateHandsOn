Feature: GET API feature
  Scenario: get user details
    Given url 'https://gorest.co.in/public/v2/users'
    And path '6372566'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def gender = jsonResponse.gender
    * match gender == 'male'

  Scenario: get user details1
    Given url baseUrl+'/public/v2/users'
    And path '100'
    When method GET
    Then status 404


