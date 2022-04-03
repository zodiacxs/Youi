Feature: Youi Test

  @NumericPassword
  Scenario: User register account with password that only contains numbers
    Given user opens the demo web shop home page
    And user clicks the register button
    And user lands on the register page
    And user enters first name
    And user enters last name
    And user enters email address
    When user enters password with only numbers
    And user pressed tab
    Then a 'Password too weak' warning should be displayed

  @StrongPassword
  Scenario: User register account with a strong password
    Given user opens the demo web shop home page
    And user clicks the register button
    And user lands on the register page
    And user enters first name
    And user enters last name
    And user enters email address
    When user enters a strong password
    And user pressed tab
    Then no warning should be displayed

  @OutOfStock
  Scenario Outline: Add to cart button is hidden for Out of Stock items
    Given user opens the demo web shop home page
    And user selects APPAREL & SHOES
    And user lands on the APPAREL & SHOES page
    When the item "<Item>" is "<Stock Availability>"
    Then the add to cart button should be "<Button state>"

    Examples:
      | Item               | Stock Availability | Button state |
      | Custom T-Shirt     | Out Of Stock       | hidden       |
      | Blue Jeans         | In Stock           | displayed    |
      | Casual Golf Belt   | In Stock           | displayed    |