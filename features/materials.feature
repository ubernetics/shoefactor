Feature: Manage Material
	In order to have an inventory
	As an administrative user
	I want to create and manage material
	
Scenario: Create Valid Material

    Given I am on the list of materials
	When I follow "New Material"
	Then show me the page

	And I fill in "material[name]" with "Suela de borrego"
	And I fill in "material[description]" with "Suela de borrego recien hecha"

	And I press "Create Material"
	Then I should see "Material was successfully created."