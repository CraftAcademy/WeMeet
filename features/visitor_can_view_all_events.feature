Feature: Visitor can view all events

    As a Visitor
    In order to fill my life with interesting experiences
    I would like to be presented with some cool events listed on a page

    Scenario: Visitor can see events on index page
        When I visit the landing page
        Then I should see 'Coffee and Code'
        And I should see 'Content'
