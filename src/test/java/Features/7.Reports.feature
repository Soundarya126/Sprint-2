Feature: Title of your feature

  Background: Login and click on sidebar
     Given admin page login
    When click sidebar
    Given user selects Reports inside sidebar

  @Sales_Reports
  Scenario: Testing sales under Reports
    When user select orders under Reports
    Then fill details4
    Then sal "moving to shipping"

  @Shipping_Reports
  Scenario: Testing Shipping under Reports
    Given user selects Shipping under Reports
    Then fill details6
    Then click on filter4
    Then ship "moving to returns"
    

  @Returns_Reports
  Scenario: Testing Returns under Reports
    Given user selects Returns under Reports
    Then fill details7
    Then click on filter5
     Then Ret "moving to viewed"

  @Viewed_Reports
  Scenario: Testing viewed under Reports
    Given user selects Reports inside side bar1
    When user selects Viewed under Reports
    Then click on Reset
    Then pur "moving to purchased"
    
   

  @Purchased_Reports
  Scenario: Testing purchased under Reports
    Given user selects Purchased under Reports
    Then fill details10
    Then click on filter8
    Then pur "moving to orders"

  @orders_Reports
  Scenario: Testing orders under Reports
    Given user selects orders under Reports
    Then fill details14
    Then click on filter12
    Then ord "moving to credit"

  @Credit_Reports
  Scenario: Testing Credit under Reports
    Given user selects credit under Reports
    Then fill details16
    Then click on filter14
       Then cred "moving to marketing"

  @Marketing_Reports
  Scenario: Testing Marketing under Reports
    Given user selects Reports inside side bar3
    When user selects Marketing_Marketing
    Then fill details17
    Then "marketing is ended"
