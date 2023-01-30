Feature: Order placement and checkout information filed verification
    As a shopper I want to use saucedemo website for shopping
    So that my order can be processed without any issue when valid details are provided

@e2e
Scenario: Place an order for backpack
    Given I am on checkout information page
    When I checkout with all the correct details
    Then I should be able to complete the order successfully with "THANK YOU FOR YOUR ORDER" message

@error
Scenario: Verify mandatory fields on checkout info page
    Given I am on checkout information page
    When I checkout with a missing field "<empty_text_field>"
    Then I should see "<error_message>"

Examples:
  | empty_text_field  | error_message                   |
  | firstname         | Error: First Name is required   |
  | lastname          | Error: Last Name is required    |
  | postalcode        | Error: Postal Code is required  |
