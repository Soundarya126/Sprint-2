Feature: Customers Testing

  Background: 
    Given admin page login
    When click on sidebar

  @customers
  Scenario: Testing Customers under Customers
    Given user selects Customers in sidebar
    When user select Customers under Customers
    Then add new customer details
    Then delete single customer detail
    Then delete multiple customer details
    Then filter the customer list
    Then Customers "Customers completed moving to Customer Groups"

  @customer_groups
  Scenario: Testing Customer Groups under Customers
    Given user selects Customer Groups under Customers
    When create new customer group
    Then delete single group
    Then delete multiple groups
    Then Customer Group "Customer Groups completed moving to Custom fields"
    

  @custom_fields
  Scenario: Testing custom fields under Customers
    Given user selects custom fields under Customers
    When create new custom field
    Then Custom fields "Custom fields completed moving to Marketing Section"
    Then delete single field
    Then delete multiple fields
