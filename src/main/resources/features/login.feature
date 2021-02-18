Feature: Login
#  Background:
#    Given I navigate to Interview Prep
#    Then I should see the login page
#    Gherkin steps / Steps / Feature file steps
  @test1
  Scenario: Log in as test user
    Then I enter "test@yahoo.com" in the Email input box
    And I enter "testuser123" in the Password input box
    And I click "Login" button
    Then I validate I am on "Interview Prep home" page
    Then I am creating a new step
  @test2
  Scenario: Log in as admin user
    Then I enter "admin@yahoo.com" in the Email input box
    And I enter "adminuser123" in the Password input box
    And I click "Login" button
    Then I validate I am on "Interview Prep home" page
    Then I am creating a new stepgfdgdg
  @test3 @test1 @regression @shakeout @miniregression
  Scenario: Login with invalid credentials - invalid email
    Then I enter "test@gmail.com" in the Email input box
    And I enter "test123" in the Password input box
    And I click "Login" button
    Then I should see a "Incorrect username/password" error message
    Then I validate I am on "login" page
  @test4
  Scenario: Login with invalid credentials - invalid password
    Then I enter "test@yahoo.com" in the Email input box
    And I enter "testinvalid" in the Password input box
    And I click "Login" button
    Then I should see a "Incorrect username/password" error message
    Then I validate I am on "login" page
  @test5
  Scenario: Login with invalid credentials - empty fields
    And I click "Login" button
    Then I should see a "Incorrect username/password" error message
    Then I validate I am on "login" page
    Then I validate I am on "login" page
  @testcalc
  Scenario: calc
    Given I "" numbers "" ""
    Given I "" numbers "" ""
  Scenario Outline: Open browser
    Given I open "<browserType>" browser
    Examples:
      | browserType |
      | Chrome      |
      | Firefox     |
      | IE          |
  Scenario Outline: login as <user>
    Given I navigate to Interview Prep
    Then I should see the login page
    Then I enter "<email>" in the email input
    Then I enter "<password>" in the password input
    And I click "Login" button
    Then I validate I am on "Interview Prep home" page
    Examples:
      | user       | email                | password          |
      | test       | test@yahoo.com       | testuser123       |
      | admin      | admin@yahoo.com      | adminuser123      |
      | manager    | manager@yahoo.com    | manageruser123    |
      | Instructor | instructor@yahoo.com | instructoruser123 |
      | mentor     | mentor@yahoo.com     | mentoruser123     |
    #Mac     option+cmnd+L
    # Windows alt+ctrl+L