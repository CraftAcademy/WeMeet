Feature: Visitor can view all events

    As a Visitor
    In order to fill my life with interesting experiences
    I would like to be presented with some cool events listed on a page

    Scenario: Visitor can see events on index page
    
        Given the following events exist
            |       title          |            content                             |
            | Coffee n Code        | Anyone interested is welcome to join           |
            | CA Graduation party  | Build awesome rails applications and get drunk |

        When I visit the landing page
        Then I should see 'Coffee n Code'
        And I should see 'Anyone interested is welcome to join'
        And I should see 'CA Graduation party'
        And I should see 'Build awesome rails applications and get drunk'