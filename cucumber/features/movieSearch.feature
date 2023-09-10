Feature: Search and add to favorites

  Search for a movie and add it to favorites

  Scenario: Search for movie Interstellar
    Given I am on home screen
    When I search for movie "Interstellar"
    Then search results should show "Interstellar"

  Scenario: View movie details
    When I click on the movie "Interstellar"
    Then movie details should be visible

  Scenario: Add movie to favorites
    When I click on add to favorites button
    Then movie should be added to favorites