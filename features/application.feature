Feature: A high class e-commerce application


Scenario: Admin dashboard
  Given I am on the homepage
  When I go to the admin page
  Then I should see "Administrare"

Scenario: Internationalisation
  Given I am on the home page
  Then I should see "Bine ati venit"   

Scenario: Welcome page
  Given I am on the home page
  Then I should not see "Welcome aboard"


