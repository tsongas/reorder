Feature: Reordering array
	In order to change the order of the elements in an array
	As a user
	I want to move an element at one index to another index

Scenario:
	Given I have an array with five elements a, b, c, d and e
	When I move the first element to the position of the third element
	Then the result returned should be an array with elements b, c, a, d, e
	
Scenario:
	Given I have an array with five elements a, b, c, d and e
	When I move the fifth element to the position of the third element
	Then the result returned should be an array with elements a, b, e, c, d
