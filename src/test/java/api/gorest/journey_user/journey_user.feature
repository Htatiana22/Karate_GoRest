Feature: Create, view, update and delete a user

  Scenario: Create, view, update and delete a user in Api_Gorest

    * def createUser = call read('classpath:api/gorest/postUser/postUsers.feature')
    * def responseCreateUser = $createUser.response
    * def id = $createUser.response.id
    * print responseCreateUser
    * print id

    * def getUserID = call read('classpath:api/gorest/get_user_id/getUserId.feature')
    * def updateUser = call read('classpath:api/gorest/putUsers/putUsers.feature')
    * def deleteUser = call read('classpath:api/gorest/deleteUser/deleteUsers.feature')