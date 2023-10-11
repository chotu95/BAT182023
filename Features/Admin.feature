Feature:Admin

@smoke
Scenario: Login with valid Credential.
Given User Launch Chrome Browser
When User open url "https://admin-demo.nopcommerce.com/login"
When User enter Email as "admin@yourstore.com" and Password as "admin"
When User Click on Login Button
Then User Verify page title should be "Dashboard / nopCommerce administration"
Then Close Browser.

@sanity
Scenario Outline: Login with Data Driven.
Given User Launch Chrome Browser
When User open url "https://admin-demo.nopcommerce.com/login"
When User enter Email as "<email>" and Password as "<password>"
When User Click on Login Button
Then User Verify page title should be "Dashboard / nopCommerce administration"
Then Close Browser.
Examples:
|email                 | password|

|admin@yourstore.com   | admin   |

|admin123@yourstore.com | admin123   |