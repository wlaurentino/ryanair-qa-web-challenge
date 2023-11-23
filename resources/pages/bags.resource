*** Settings ***

Library    Browser

*** Keywords ***

Add Priority and Cabin Bags
    Click                css=[data-ref='product\.priority-boarding'] .ry-radio-button

Click Continue to go to Extras page Airport and Trip
    Sleep                2
    Click                xpath=//main//bags-continue-flow-container/bags-continue-flow/button