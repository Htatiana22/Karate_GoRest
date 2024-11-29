Feature: update user information

  Background:
    * url 'https://gorest.co.in'
    * request {"name": "#(name)","gender": "#(gender)","status": "#(status)"}
    * header Authorization = "Bearer 9a2086eca755171641b31c82882b8e3754827e8848a296523345877ad9d742a9"

  Scenario Outline: Update user information in Api GoRest

    * def estado = 'public'
    * def version = 'v2'
    * def usuarios = 'users'
    * def idUsuario = 7550848

    Given path estado, version, usuarios, idUsuario
    When method Patch
    Then status 200

    Examples:
      | name  | gender | status |
      | Reyes | Female | active |
      #| email              | name      | gender | status   |
      #| tony33@outlook.com | TonyReyes | Male | inactive |