@runallscenario
Feature: webpage Functionalities

  @urltest
  Scenario Outline: Url Test
    Given <Valid> and <Invalid> url

    Examples: 
      | Valid                                | Invalid                                |
      | "http://retailm1.upskills.in/admin/" | "http://retailm1.upskills.in/adm8998u" |

  @admin_login
  Scenario Outline: Login
    Given go to "http://retailm1.upskills.in/admin/"
    Given admin page login with <username> and <password>

    Examples: 
      | username | password  |
      | admin    | admin@123 |

  @credentials
  Scenario Outline: Verify login functionality with existing account
    Given go to "http://retailm1.upskills.in/admin/"
    Given user at login page
    Given admin page login with <username> and <password>
    Then click admin login

    Examples: 
      | username | password   |
      | admin    | admin@123  |
      | testingg | admin@1234 |
      | admin    | admin12345 |

  @forgotpassword
  Scenario: User clicks on forgot password
    Given go to "http://retailm1.upskills.in/admin/"
    Given user at login page
    When User clicks forget password
    And User enters email-id
    Then clicks on Reset

  @visibilityandfunctionality
  Scenario Outline: Checking the visibility and functionality of notification,Home and Logout is visible in top right corner
    Given go to "http://retailm1.upskills.in/admin/"
    Given admin page login with <username> and <password>
    When finding the icons
    Then visibility
    And click on notification and home button
    When under home dropdown select retail
    Then Retail customer webpage is opened
    And switch to parent window
    Then click on logout

    Examples: 
      | username | password  |
      | admin    | admin@123 |

  @sidebar
  Scenario Outline: Visibility and functionality of sidebar
    Given go to "http://retailm1.upskills.in/admin/"
    Given admin page login with <username> and <password>
    When user clicks on sidebar
    Then visibile "sidebar is visible"

    Examples: 
      | username | password  |
      | admin    | admin@123 |
