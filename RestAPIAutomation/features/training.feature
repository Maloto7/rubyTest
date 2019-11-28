Feature: API testing Pets store
  Scenario: post a pet by id
    Given create a new item with the status of "agustin004" and the name of "doggie004" with the id "987654"
    When post it should return a response with a 200

  Scenario: get a pet by the name
    Given When try to fid a item with the status of "agustin004"
    When it should return a response with a 200 response code
    Then it's body must contain the value "name" within the "doggie002"

  Scenario: delete a pet by id
    Given When I want to delete a pet tha has the id "987654"
    When it should return a response with a 200

  Scenario: get a pet by the name
    Given When try to fid a item with the status of "agustin004"
    When it should return a response with a 404 response code
    Then it's body must contain the value "name" within the "doggie004"



