Feature: Get information about a user by their ID

  Background:
    * url 'https://gorest.co.in'
    * header Authorization = "Bearer 9a2086eca755171641b31c82882b8e3754827e8848a296523345877ad9d742a9"

  Scenario: Get information about a user by their ID of the Api GoRest

    * def respuestaSolicitud = read('classpath:api/gorest/get_user_id/response/informacionUsuario.json')
    * def estado = 'public'
    * def version = 'v2'
    * def usuarios = 'users'
    * def idUsuario = 7553471

    Given path estado, version, usuarios, idUsuario
    When method Get
    Then status 200
    And match response == respuestaSolicitud