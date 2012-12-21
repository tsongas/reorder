Feature: Reordering array
	In order to change the order of the elements in an array
	As a user
	I want to move an element at one index to another index

Scenario:
	Given I have an array with five elements a, b, c, d and e
	When I make a copy with the first element moved to the position of the third element
	Then the result returned should be a new array with elements b, c, a, d, e

Scenario:
	Given I have an array with five elements a, b, c, d and e
	When I make a copy with the fifth element moved to the position of the third element
	Then the result returned should be a new array with elements a, b, e, c, d

Scenario:
	Given I have an array with five elements a, b, c, d and e
	When I move in place the first element to the position of the third element
	Then the result returned should be the original array with elements b, c, a, d, e

Scenario:
	Given I have an array with five elements a, b, c, d and e
	When I move in place the fifth element to the position of the third element
	Then the result returned should be the original array with elements a, b, e, c, d
