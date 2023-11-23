*** Settings ***

Library    Browser

*** Keywords ***

Click Continue to go to Extras page Transport
    Click                xpath=/html/body/app-root/ng-component//airport-and-flight-container/button


Click Continue to Go to Review and Pay Page
    Click                xpath=/html/body/app-root/ng-component//div/ng-component/button[1]

    Sleep                5

    Take Screenshot