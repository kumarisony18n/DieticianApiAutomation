#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Validating Recipe API Request
  As a user, I must able to access data in Recipe API


	#Background: User is Logged In
	#Given User is in Url http://127.0.0.1:5000/
	#When Submit username and password
	#Then Successfuly logged In
	
  @RecipeAPI
  Scenario: User access request without login
  Given User is in Url http://127.0.0.1:5000/api/
  When GET request is made in Url without login
  Then The request returned with Response code 401 Unauthorised Access
  
  Scenario: User Retrieve Recipes Data
  Given User is in Url http://127.0.0.1:5000/api/
  When GET request is made to Url/Recipes
  Then The requested Recipes data is returned with Response code 200
  
  Scenario: User Retrieve Recipe Data based on Food Category
  Given User is in Url http://127.0.0.1:5000/api/
  When GET request is made to Url/Recipes/{ RecipeFoodCategory } with input RecipeFoodCategory
  Then The requested data with input RecipeFoodCategory is returned with Response code 200
  
  Scenario: User Retrieve Recipe Data based on Recipe Type
  Given User is in Url http://127.0.0.1:5000/api/
  When GET request is made to Url/Recipes/{RecipeType} with input RecipeType
  Then The requested data with input RecipeType is returned with Response code 200
  
  Scenario: User Retrieve Recipe Data based on Recipe Ingredient
  Given User is in Url http://127.0.0.1:5000/api/
  When GET request is made to Url/Recipes/{ RecipeIngredient } with input RecipeIngredient
  Then The requested data with input RecipeIngredient is returned with Response code 200
  
  Scenario: User Retrieve Recipe Data based on Recipe Nutrient
  Given User is in Url http://127.0.0.1:5000/api/
  When GET request is made to Url/Recipes{ RecipeNutrient } with input RecipeNutrient
  Then The requested data with input RecipeNutrient is returned with Response code 200
  
    Scenario: User Retrieve Recipe Data based on Recipe Nutrient Negative
  Given User is in Url http://127.0.0.1:5000/api/
  When GET request is made in Url/Recipes{ RecipeNutrient } with invalid input
  Then The request returned with Response code 200 with msg Item Not Found
  
