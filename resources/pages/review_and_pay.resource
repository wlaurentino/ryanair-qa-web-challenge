*** Settings ***

Library    Browser

*** Keywords ***

Popup should be visible
    Get Text    css=.header-modal__title--desktop .ng-star-inserted    equal    Make it simple with myRyanair
    Take Screenshot