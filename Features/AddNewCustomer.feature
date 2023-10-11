
Feature:Customer
@Regression

Scenario Outline: Add New Customer
Given User Launch Chrome Browser
When User open url "https://admin-demo.nopcommerce.com/login"
When User enter Email as "<email>" and Password as "<password>"
When User Click on Login Button
Then User can view Dashboard.
When user click on customer menu.
And user click on customer menu item.
And user click on new add button.
Then User can view add  new customer page.
When user enter customer info as "<newEmail>" and "<newPass>" and "<fname>" and "<lname>" and "<gender>" and "<comName>" and "<adminComment>".
And user click on save button.
Then User can view confirmation msg " The new customer has been added successfully".
And close browser.

Examples:
|email|password|newEmail|newPass|fname|lname|gender|comName|adminComment|
|admin@yourstore.com|admin|raj11@gmail.com|1234|Bali17|Raj|Male|ABC|Test1|
|admin@yourstore.com|admin|radhika33@gmail.com|4537|Radha|Patel|Female|xyz|Test2|