@petStore
Feature: Tienda mascotas mascota

  Scenario Outline: Crear mascota <mascota>
    * def req = read('classpath:data/pet.json')
   Given  url petstore
    And path 'pet'
    And request req
    When method post
    Then status 200
    Examples:
    |read('classpath:data/dataPet.csv')|

  Scenario Outline: Buscar mascota <idpet>
    Given  url petstore
    And path '/pet/'+<idpet>
    When method get
    Then status 200
    And match response.name =='<mascota>'
    * print response
   And match response == read('classpath:data/pet.json')
    Examples:
      |read('classpath:data/dataPet.csv')|

  Scenario Outline: Actualizar mascota <idpet>
    * def req = read('classpath:data/pet.json')
    Given  url petstore
    And path 'pet'
    And request req
    When method put
    Then status 200
    And match response.id ==<idpet>
    And match response.status =='<estado>'
    Examples:
      |read('classpath:data/dataPetUpdate.csv')|

    Scenario Outline: Buscar mascota por estado <estado>
    Given  url petstore
    And path '/pet/findByStatus'
      * param status = '<estado>'
    When method get
    Then status 200
    And match response contains read('classpath:data/pet.json')
    Examples:
      |read('classpath:data/dataPetUpdate.csv')|
