Feature: Create Categories
   As a blog administrator
   In order to share my thoughts with the world
   I want to be able to add categories to my blog

   Background:
     Given the blog is set up
     And I am logged into the admin panel

   Scenario: Successfully create categories
     Given I am on the new categories page
     When I fill in "category_name" with "CC"
     And I fill in "category_keywords" with "DD"
     And I fill in "category_permalink" with "EE"
     And I fill in "category_description" with "FF"
     And I press "Save"
     Then I should see "CC"
     Then I should see "DD"
     Then I should see "EE"
     Then I should see "FF"

     Then I follow "CC"


     When I fill in "category_name" with "CC1"
     And I fill in "category_keywords" with "DD1"
     And I fill in "category_permalink" with "EE1"
     And I fill in "category_description" with "FF1"
     And I press "Save"
     Then I should see "CC1"
     Then I should see "DD1"
     Then I should see "EE1"
     Then I should see "FF1" 