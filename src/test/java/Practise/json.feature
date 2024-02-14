Feature: json feature testing
  Scenario: json reader parser
    * def jsonObject =
    """
    {
"employees":[
  {"firstName":"John", "lastName":"Doe", "age":24},
  {"firstName":"Anna", "lastName":"Smith", "age":32},
  {"firstName":"Peter", "lastName":"Jones","age":45}
]
}
    """

    * print jsonObject
    * print jsonObject.employees[1]
    * print jsonObject.employees[1].firstName + " " + jsonObject.employees[1].age


    Scenario: Complex json reader
      * def jsonObject1 =
      """
      {"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Save", "onclick": "SaveDoc()"}
    ]
  }
}}
      """
      * print jsonObject1
      * print jsonObject1.menu.id
      * print jsonObject1.menu.popup
      * print jsonObject1.menu.popup.menuitem
      * print jsonObject1.menu.popup.menuitem[0].value
      * print jsonObject1.menu.popup.menuitem[1].onclick


