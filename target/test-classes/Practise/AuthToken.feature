Feature: GET API Auth Token
  Scenario: AUth Token details
    * print tokenID
    Given header Authorization = 'Bearer ' + tokenID
    Given url baseUrl+'/public/v2/users'
    And path '6319140'
    When method GET
    Then status 200
