Feature: Interview Section
  Background:

    Given I navigate to Interview Prep
    Then I should see the login page
    Then I enter "test@yahoo.com" in the Email input box
    And I enter "testuser123" in the Password input box
    And I click "Login" button
#    When I open Interview Section page
  Scenario: Validate adding a new Do statement will display in Do section
    When I enter "Talk clear" in "Do" input field
    And I click "Enter Do" button
    Then I validate "Talk clear" is displayed in "Do" section
  Scenario: Validate adding a new Dont statement will display in Dont section
    When I enter "Dont chew a gum" in "Dont" input field
    And I click "Enter Dont" button
    Then I validate "Dont chew a gum" is displayed in "Dont" section
#--- task
  Scenario: Validate adding a new Do statement will display in Do section and editing it
    Given I navigate to Interview Prep
    Then I enter "test@yahoo.com" in the Email input box
    And I enter "testuser123" in the Password input box
    And I click "Login" button
    When I enter "$Talk, Talk ! Talk@" in "Do" input field
    And I click "Enter Do" button
    Then I validate "$Talk, Talk ! Talk@" is displayed in "Do" section
    And I click "edit" button
    And I enter "zzzzz" in "Edit" input field
    Then I validate "zzzzz" is displayed in "Do" section

  Scenario: Validate adding a new Do statement will display in Do section and deleting it
    Given I navigate to Interview Prep
    Then I enter "test@yahoo.com" in the Email input box
    And I enter "testuser123" in the Password input box
    And I click "Login" button
    When I enter "109" in "Do" input field
    And I click "Enter Do" button
    And I click "delete" button
    Then I validate "109" is deleted from "Do" section

  Scenario: Validate deleting from manager side
    Given I navigate to Interview Prep
    Then I enter "test@yahoo.com" in the Email input box
    And I enter "testuser123" in the Password input box
    And I click "Login" button
    When I enter "_0-+</?$#%!" in "Do" input field
    And I click "Enter Do" button
    When I sign out
    Then I enter "manager@yahoo.com" in the Email input box
    And I enter "manageruser123" in the Password input box
    And I click "Login" button
    Then I should not see "delete" option for "_0-+</?$#%!" statement

    Scenario Outline: Open a browser
      Given I open "<browserType>" browser
      Examples:
      |browsersType|
      |Crhome |
      |Firefox|
      |IE     |