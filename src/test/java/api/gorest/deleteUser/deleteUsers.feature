Feature: Delete an User

  Background:
    * url 'https://gorest.co.in'
    * header Authorization = "Bearer 9a2086eca755171641b31c82882b8e3754827e8848a296523345877ad9d742a9"


  Scenario: Delete an user of Api_gorest

    * def estado = 'public'
    * def version = 'v2'
    * def usuarios = 'users'
    * def idUsuario = 7550849

    Given path estado, version, usuarios, idUsuario
    When method Delete
    Then status 204
