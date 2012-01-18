Feature: Calculator
    Background:
        Given a calculator I just turned on
    Scenario: Addition
        When I add 3 and 5
        Then the result is 8