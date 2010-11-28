Feature: A high class e-commerce application

Scenario: Internationalisation
  Given I am on the home page
  Then I should see "Bine ati venit"   

Scenario: Welcome page
  Given I am on the home page
  Then I should not see "Welcome aboard"


