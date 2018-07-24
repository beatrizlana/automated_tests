Feature: Student Activity 

Background: 
    Given I am on the login page
    When I click on Simulados

Scenario: Login with valid credentials
	Given I am on the login page
	Then I should be on the users home page


Scenario: Send new activity   
	And click on iniciar
	And click on Começar simulado
    	And answer to a question
    	And click on Responder pergunta
    And click on Entregar simulado
    Then the activity will be successfully sent
