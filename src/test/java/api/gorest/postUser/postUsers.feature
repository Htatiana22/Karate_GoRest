Feature: Create a new User

  Background:
    * url 'https://gorest.co.in'
    * request read('classpath:api/gorest/request/createUser.json')
    * header Authorization = "Bearer 9a2086eca755171641b31c82882b8e3754827e8848a296523345877ad9d742a9"

  Scenario Outline: Create a new user in Api GoRest

    * def estado = 'public'
    * def version = 'v2'
    * def usuarios = 'users'

    Given path estado, version, usuarios
    When method Post
    Then status 201

    Examples:
      | email                 | name       | gender | status |
      | jumi90221177@gmail.com | JuanMiguel | male   | active |