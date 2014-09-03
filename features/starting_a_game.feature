Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "new game"
    Then I should see "What's your name?"

 Scenario: Error Handling
 	Given I am on the homepage
 	Given I follow "new game"
 	When the name field is blank
 	And the submit button has been clicked
 	Then I should see an error message