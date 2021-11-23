Feature: Tesing Catalog DashBoardFunctionalities

  Scenario Outline: login and click on dashboard
    Given go to "http://retailm1.upskills.in/admin/"
    Given admin page login with <username> and <password>
    Given user at Dashboard

    Examples: 
      | username | password  |
      | admin    | admin@123 |

  @Dashboard_total_orders
  Scenario Outline: Testing total orders in Dashboard
    Given go to "http://retailm1.upskills.in/admin/"
    Given admin page login with <username> and <password>
    Given user at Dashboard
    When User clicks on total orders
    Then total orders page is opened

    Examples: 
      | username | password  |
      | admin    | admin@123 |

  @Dashboard_total_sales
  Scenario Outline: Testing total sales in Dashboard
    Given go to "http://retailm1.upskills.in/admin/"
    Given user at Dashboard
    Given admin page login with <username> and <password>
    When User clicks on total sales
    Then total sales page is opened

    Examples: 
      | username | password  |
      | admin    | admin@123 |

  @Dashboard_total_customers
  Scenario Outline: Testing total sales in Dashboard
    Given go to "http://retailm1.upskills.in/admin/"
    Given user at Dashboard
    Given admin page login with <username> and <password>
    When User clicks on total customers
    Then total customers page is opened

    Examples: 
      | username | password  |
      | admin    | admin@123 |

  @Dashboard_total_Peopleonline
  Scenario Outline: Testing total people online in Dashboard
    Given go to "http://retailm1.upskills.in/admin/"
    Given user at Dashboard
    Given admin page login with <username> and <password>
    When User clicks on total People online
    Then total people online page is opened

    Examples: 
      | username | password  |
      | admin    | admin@123 |

  @Dashboard_Worldmap
  Scenario Outline: Testing Worldmap in Dashboard
    Given go to "http://retailm1.upskills.in/admin/"
    Given user at Dashboard
    Given admin page login with <username> and <password>
    When Worldmap is visible
    Then Checking zoom in and out

    Examples: 
      | username | password  |
      | admin    | admin@123 |

  @Dashboard_Sales_analytics
  Scenario Outline: Testing Sales Analytics in Dashboard
    Given go to "http://retailm1.upskills.in/admin/"
    Given user at Dashboard
    Given admin page login with <username> and <password>
    When Sales Analytics is visible
    Then Checking calender icon

    Examples: 
      | username | password  |
      | admin    | admin@123 |

  @Dashboard_Recent_Activity
  Scenario Outline: Testing Recent Activity Analytics in Dashboard
    Given go to "http://retailm1.upskills.in/admin/"
    Given user at Dashboard
    Given admin page login with <username> and <password>
    When Recent Activity is visible
    Then checking user details

    Examples: 
      | username | password  |
      | admin    | admin@123 |

  @Dashboard_Latest_Orders
  Scenario Outline: Testing Latest orders in Dashboard
    Given go to "http://retailm1.upskills.in/admin/"
    Given user at Dashboard
    Given admin page login with <username> and <password>
    When Latest orders is visible
    Then checking user Latest orders

    Examples: 
      | username | password  |
      | admin    | admin@123 |
