Feature: Manage Material
	In order to have an inventory
	As an administrative user
	I want to create and manage material
	
Scenario: Create Valid Material

    Given I am on the list of materials
	When I follow "New Material"
	And I fill in "Name" with "Suela de borrego"
	And I fill in "Description" with "Suela de borrego recien hecha"
	And I fill in "Type" with "suela"
	And I press "Create Material"
	Then I should see "Material was successfully created."