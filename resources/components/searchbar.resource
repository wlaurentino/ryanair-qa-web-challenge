*** Settings ***

Library    Browser

*** Keywords ***

Select one way travel
    Click                css=.is-on-blue .trip-type__radio-button.ry-radio-button:nth-of-type(2)

Fill departure and destination airports
    [Arguments]          ${departure}        ${destination}
    Browser.Clear Text           css=#input-button__departure
    Fill Text            css=#input-button__departure              ${departure}
    Click                css=fsw-airport-item:nth-of-type(1) > span > span
    Fill Text            css=#input-button__destination            ${destination}  
    Click                css=fsw-airport-item:nth-of-type(2) > span > span

Select travel date
    Click                css=.datepicker__calendars .datepicker__arrow-wrap:nth-child(4)
    Click                css=.datepicker__calendar.ng-star-inserted .ng-star-inserted:nth-of-type(3) .ng-star-inserted:nth-of-type(13) [tabindex]    
   
Select 2 adults and 1 child passengers
    Click                css=ry-counter:nth-of-type(1) > .counter > div:nth-of-type(3)
    Click                css=ry-counter:nth-of-type(3) > .counter > div:nth-of-type(3)

Search for flights
    Click                css=[class='flight-search-widget__start-search-cta ng-tns-c983940023-3 ry-button--gradient-yellow'] [class]            

    Sleep                5        

    Take Screenshot