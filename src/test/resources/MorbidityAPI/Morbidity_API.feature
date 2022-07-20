Feature: As a tester, I want to test User API so that I can validate GET method

 Background: Select Authorization Type as Basic Auth and enter valid credentials
 
  Scenario: Test the Get request for all Morbidity Data of Morbidity API 
    Given User want to execute GET operation for Morbidity API
    When User submit the GET request
    Then Morbidity data are displayed with 200 OK message
    

    
    
   