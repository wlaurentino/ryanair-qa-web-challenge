*** Settings ***
Documentation    Automation test to search for a flight
Resource        ../Resources/bdd.resource

Test Setup       Open the browser
Test Teardown    Close the browser

Library    Browser

*** Test Cases ***
Test Case 01 - User searches for a flight
    [Tags]    TC01
    Given: a user searches for a flight from "DUB" to "STN" on 12/01/2024 for 2 adults and 1 child
    When: the user proceeds to pay
    And: select seats
    And: select bags
    Then: login popup shows up

Test Case 02 - User doesnt select seat
    [Tags]    TC02
    Given: a user searches for a flight from "DUB" to "STN" on 12/01/2024 for 2 adults and 1 child
    When: the user proceeds to pay
    And: doesnt select seat
    Then: page shows message to select a seat
    
Test Case 03 - User doesnt fill passenger form
    [Tags]    TC03
    Given: a user searches for a flight from "DUB" to "STN" on 12/01/2024 for 2 adults and 1 child
    When: the user proceeds to pay without fill passengers form
    Then: the fields display messages to fill the form
  
