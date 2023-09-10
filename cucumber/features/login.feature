Feature: Login to movieDB Application

  Open TMDB Movie App and login

  Scenario: Login to the tmdb application
    Given I am on home screen
    When I click on Account Button
    And I click on Login Button
    And I click on close cookies button
    And I click on Login field button
    When I enter username
    When I enter password
    And I click on submit button
    Then I should be logged in successfully