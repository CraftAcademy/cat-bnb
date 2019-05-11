Feature: Host can make an offer on a listing
  As a host,
  In order to make some money,
  I want to be able to make an offer on a listing

  Background:
    Given the following listings exist
    | pet_name  | pet_location    | pet_description   | start_date      | end_date      | pet_picture |
    | Zane      | Gothenburg      | I'm nice          | 2019-06-28      | 2019-06-29    | picture1    |
    | Carla     | Stockholm       | I love cats!      | 2019-05-28      | 2019-06-01    | picture2    |

    Given the following user exist
      | email        | password   |
      | boa@snake.se | pswrd12345 |

    Given I am logged in as "boa@snake.se"
    When I visit the landing page

  Scenario: Host can successfully create an offer
    When I click "Make an offer" within "Zane" section
    Then I should be on the "Zane" listing page
    And I should see "Create your offer"
    When I fill in "Name" with "Steffe"
    And I fill in "Email" with "steffe@gmail.com"
    And I fill in "Location" with "Gothenburg"
    And I fill in "Price" with "100kr"
    When I click "Create offer" button
    Then I should be on landing page

  Scenario: Host can not create an offer when not all the fields are filled in.
    When I click "Make an offer" within "Zane" section
    Then I should be on the "Zane" listing page
    And I should see "Create your offer"
    And I fill in "Name" with "Steffe"
    And I fill in "Location" with "Gothenburg"
    And I fill in "Price" with "100kr"
    When I click "Create offer" button
    Then I should see "Please fill in all fields correctly"