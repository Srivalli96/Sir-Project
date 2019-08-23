 Feature: My validations on TestMeApp Application
  Scenario Outline: login with different credentials
    Given enter valid username "<uname>"
    And enter valid password "<pswrd>"
    Then click on login button
    And verify login process

    Examples: 
      | uname   | pswrd       |
      | lalitha | Password123 |

  
  Scenario: Searching and purchasing of the product
    Given user enters the product name
    Then user clicks on add to cart
    And clicks on cart link
    Then clicks on checkout button
    And clicks on proceed to pay
    Then selects the bank and clicks on continue button
    And enters username and password of bank
    Then clicks on login button
    Then enter transaction password
    And click on paynow button
    Then verifies the payment process

  
  Scenario: The one where the user moves to the cart without adding any item in it
    Given user has registered into TestMeApp
    When user search a particular product like headphones
    And try to proceed to payment without adding any item in the cart
    Then TestMeApp does not display the cart icon
