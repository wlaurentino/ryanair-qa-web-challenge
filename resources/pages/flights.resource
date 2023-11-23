*** Settings ***

Library    Browser

*** Keywords ***

Select first flight
    Click                css=[class='flight-card-summary__select-btn ng-tns-c2051464752-21 ry-button--gradient-blue']

Select Family Plus fare    
    Click                css=.fare-table__fare-column-border--fami

Click to Login later
    Click                css=.login-touchpoint__login-later

Fill Passengers Data
    [Arguments]         ${firstname1}    ${surname1}    ${firstname2}    ${surname2}    ${firstname3}    ${surname3}
    
    Click                xpath=//app-root/flights-root//flights-lazy-content/flights-passengers/ry-spinner/pax-app-container/pax-app/ry-spinner//pax-app-form-container//form/pax-passenger-container[1]/pax-passenger//pax-passenger-details-container//pax-passenger-details-form-container//ry-dropdown//button
    Click                css=.dropdown-item__link--highlighted .dropdown-item__label

    Fill Text            input[name='form.passengers.ADT-0.name']        ${firstname1}
    Fill Text            input[name='form.passengers.ADT-0.surname']     ${surname1}   

    Click                css=.ngrx-forms-untouched .dropdown__toggle
    Click                css=.dropdown__menu-items .ng-star-inserted:nth-of-type(2) .dropdown-item__label  

    Fill Text            input[name='form.passengers.ADT-1.name']        ${firstname2}
    Fill Text            input[name='form.passengers.ADT-1.surname']     ${surname2}

    Fill Text            [id='form\.passengers\.CHD-0\.name']             ${firstname3}
    Fill Text            [id='form\.passengers\.CHD-0\.surname']          ${surname3}    
    
    Sleep                2
    
Click Continue to go to Seats Page
    Click                xpath=/html//app-root/flights-root//flights-lazy-content/ng-component//continue-flow-container/continue-flow//span/button

Empty fields display message
    Get Text    css=[data-ref='pax-details__ADT-1'] .dropdown__error    equal    Please choose a title
    Get Text    css=[data-ref='pax-details__ADT-0'] .ngrx-forms-submitted:nth-child(2) ._error:nth-child(3)    equal    Enter first name 
    Get Text    css=[data-ref='pax-details__ADT-0'] .ngrx-forms-submitted:nth-child(3) ._error:nth-child(3)    equal    Enter last name
    
    Get Text    css=[data-ref='pax-details__ADT-1'] .ngrx-forms-submitted:nth-child(2) ._error:nth-child(3)    equal    Enter first name
    Get Text    css=[data-ref='pax-details__ADT-1'] .ngrx-forms-submitted:nth-child(3) ._error:nth-child(3)    equal    Enter last name

    Get Text    css=[data-ref='pax-details__CHD-0'] .ngrx-forms-submitted:nth-of-type(1) ._error:nth-child(3)    equal    Enter first name
    Get Text    css=[data-ref='pax-details__CHD-0'] .ngrx-forms-submitted:nth-of-type(2) ._error:nth-child(3)    equal    Enter last name

    Take Screenshot