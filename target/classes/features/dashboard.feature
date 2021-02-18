Feature: Dashboards
  Scenario: Validate all the dashboard names
    Given I navigate to Interview Prep
    Then I should see the login page
#    Then I enter test@yahoo.com in the Email input box
#    And I enter testuser123 in the Password input box
#    And I click Login button
    Then I should see Interview Prep homepage
  #  Then I validate all All topics dashboard
    Then I validate the following icons on the dashboard
    |All topics|
    |Coding    |
    |Soft skills|
    |Cucumber   |
    |Selenium   |
