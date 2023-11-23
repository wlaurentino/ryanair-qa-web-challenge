*** Settings ***

Library    Browser
Library    ../custom/seats.py

*** Keywords ***

Click OK Got It button
    Click                css=.ry-button--gradient-blue.seats-modal__cta

# Select seats

#     Sleep                2
#     Click                css=[class='seatmap__seatrow seatmap__seatrow--30 ng-star-inserted'] .ng-star-inserted:nth-of-type(5) .seatmap__seat--standard
#     Click                css=[class='seatmap__seatrow seatmap__seatrow--30 ng-star-inserted'] .ng-star-inserted:nth-of-type(6) .seatmap__seat--standard
#     Click                css=[class='seatmap__seatrow seatmap__seatrow--30 ng-star-inserted'] .ng-star-inserted:nth-of-type(7) .seatmap__seat--standard

Is Seat Available
    [Arguments]    ${seat_css}
    ${elements}=    Get Elements    ${seat_css}
    FOR    ${element}    IN    @{elements}
        ${class}=    Get Attribute    ${element}    class
        Exit For Loop If    'unavailable' not in ${class}
    END
    RETURN    ${elements}

Select Seats
    Select Seats Based On Availability
Click Alternative Seats
    Click    css=[class='seatmap__seatrow seatmap__seatrow--31 ng-star-inserted'] .ng-star-inserted:nth-of-type(5) .seatmap__seat--standard
    Click    css=[class='seatmap__seatrow seatmap__seatrow--31 ng-star-inserted'] .ng-star-inserted:nth-of-type(6) .seatmap__seat--standard
    Click    css=[class='seatmap__seatrow seatmap__seatrow--31 ng-star-inserted'] .ng-star-inserted:nth-of-type(7) .seatmap__seat--standard



Click Continue to go to Bags Page
    Sleep                2
    Click                xpath=/html//div//ng-component/seats-container-v2/main/div[2]/div//passenger-carousel//button

Click No thanks Fast Track
    Click                css=[data-ref] [color='anchor-blue']
Click to continue without selecting seat
    Browser.Get Text    css=.ng-star-inserted.ry-tooltip.ry-tooltip--info.ry-tooltip--top-left > .ry-tooltip__text    equal    Family Plus passengers are entitled to a free Standard seat, please select your seat. 
    Take Screenshot