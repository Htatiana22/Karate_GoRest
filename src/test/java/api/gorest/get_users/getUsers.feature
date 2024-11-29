Feature: Get information from all Users

  Background:
    * url 'https://gorest.co.in'

  Scenario: Get information from all Users of the Api GoRest

    * def estado = 'public'
    * def version = 'v2'
    * def usuarios = 'users'

    Given path estado, version, usuarios
    When method Get
    Then status 200
