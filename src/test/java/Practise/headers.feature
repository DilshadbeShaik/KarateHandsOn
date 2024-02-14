Feature: GET API  headers feature
  Scenario: pass the user request with headers
    Given header Accept-Encoding = 'gzip, deflate, br'
    And header Connection = 'keep-alive'
    And header User-Agent = 'PostmanRuntime/7.36.3'
    And header Authorization = 'Bearer bac1bcd124012aa71aeb1f067c18a0d32be3c27098678bd41c909e0298d20af8'
    When url 'https://gorest.co.in/public/v2/users'
    And path '6319140'
    When method GET
    Then status 200
    * print response



  Scenario: pass the user request with headers Part2
    * def  request_headers = { Accept-Encoding : 'gzip, deflate, br', Connection : 'keep-alive' , User-Agent : 'PostmanRuntime/7.36.3', Authorization : 'Bearer bac1bcd124012aa71aeb1f067c18a0d32be3c27098678bd41c909e0298d20af8'}
    When url 'https://gorest.co.in/public/v2/users'
    And path '6319140'
    When method GET
    Then status 200
    * print response


  Scenario: pass the user request with headers Part3
    * configure  headers = { Accept-Encoding : 'gzip, deflate, br', Connection : 'keep-alive' , User-Agent : 'PostmanRuntime/7.36.3', Authorization : 'Bearer bac1bcd124012aa71aeb1f067c18a0d32be3c27098678bd41c909e0298d20af8'}
    When url 'https://gorest.co.in/public/v2/users'
    And path '6319140'
    When method GET
    Then status 200
    * print response
