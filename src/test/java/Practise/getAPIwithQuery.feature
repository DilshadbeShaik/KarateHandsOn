Feature: GET API  with Query Parameters
  Scenario: get all active users
    * def query = {status:'active' , gender: 'male', id: 6319140}
    Given url 'https://gorest.co.in/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def userCount = jsonResponse.length
    * print userCount
    * match userCount == 1