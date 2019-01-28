Feature: Visitor can sign up
  As a Visitor
  In order to attend available events
  I would like to be able to first register

  Background:
    Given the following user exists
      | first_name | last_name | email        | password | password_confirmation |
      | John       | Doe       | john@doe.com | password | password              |
    And I visit the site
    And I click 'Sign up'

  Scenario: When I fill in the sign up form properly, I can sign up [Happy Path]
    When I fill in 'First name' with 'Maggie'
    And I fill in 'Last name' with 'Baggie'
    And I fill in 'Email' with 'maggie@hotmail.com'
    And I fill in 'Password' with 'password'
    And I fill in 'Password confirmation' with 'password'
    And I click 'Submit'
    Then I should see 'Hello, Maggie!'

  Scenario: When I don't fill in the sign up form completely, I get error messages [Sad Path]
    When I click 'Submit'
    Then I should see "Email can't be blank"
    And I should see "Password can't be blank"
    And I should see "First name can't be blank"
    And I should see "Last name can't be blank"

  Scenario: When Password and Password confirmation doesn't match I get error message [Sad Path]
    When I fill in 'Password' with 'password'
    And I fill in 'Password confirmation' with 'pasword'
    And I click 'Submit'
    Then I should see "Password confirmation doesn't match Password"

  Scenario: When Email is taken I get error message [Sad Path]
    When I fill in 'Email' with 'john@doe.com'
    And I fill in 'First name' with 'Maggie'
    And I fill in 'Last name' with 'Baggie'
    And I fill in 'Password' with 'password'
    And I fill in 'Password confirmation' with 'password'
    And I click 'Submit'
    Then I should see "Email has already been taken"