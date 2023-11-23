*** Settings ***
Resource       ../resources/pages/home.resource
Resource       ../resources/components/searchbar.resource
Resource       ../resources/pages/flights.resource
Resource       ../resources/pages/seats.resource
Resource       ../resources/pages//bags.resource
Resource       ../resources/pages/extras.resource
Resource       ../resources/pages/review_and_pay.resource

Library    Browser

*** Keywords ***
Open the browser
  Open Browser    browser=chromium

 Close the browser
  Close Browser
    
Given: a user searches for a flight from "DUB" to "STN" on 12/01/2024 for 2 adults and 1 child
    ${departure}        Set Variable        DUB
    ${destination}      Set Variable        STN

    Go to Homepage
    Select one way travel
    Fill departure and destination airports    ${departure}        ${destination}
    Select travel date
    Select 2 adults and 1 child passengers
    Search for flights
When: the user proceeds to pay

    ${firstname1}       Set Variable        TestMr
    ${surname1}         Set Variable        Web
    ${firstname2}       Set Variable        TestMrs
    ${surname2}         Set Variable        Net
    ${firstname3}       Set Variable        TestBaby
    ${surname3}         Set Variable        Aut
###Flights page###
    Select first flight
    Select Family Plus fare
    Click to Login later
    Fill Passengers Data    ${firstname1}    ${surname1}    ${firstname2}    ${surname2}    ${firstname3}    ${surname3}
    Click Continue to go to Seats Page
And: select seats
###Seats page###
    Click OK Got It button
    Select seats
    Click Continue to go to Bags Page
    Click No thanks Fast Track



And: select bags
####Bags Page####
    Add Priority and Cabin Bags
    Click Continue to go to Extras page Airport and Trip


### Extras Page ###
    Click Continue to go to Extras page Transport
    Click Continue to Go to Review and Pay Page


Then: login popup shows up
### Review and Pay Page ###
    Popup should be visible

And: doesnt select seat
    Click OK Got It button
    Click Continue to go to Bags Page

Then: page shows message to select a seat
    Click to continue without selecting seat

When: the user proceeds to pay without fill passengers form 
    Select first flight
    Select Family Plus fare
    Click to Login later
    Click Continue to go to Seats Page

Then: the fields display messages to fill the form
    Empty fields display message