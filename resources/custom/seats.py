from robot.libraries.BuiltIn import BuiltIn

def select_seats_based_on_availability():
    browser_lib = BuiltIn().get_library_instance('Browser')

    seats_to_check = [
        "css=.seatmap__seatrow--30 .ng-star-inserted:nth-of-type(5) .seatmap__seat--standard",
        "css=.seatmap__seatrow--30 .ng-star-inserted:nth-of-type(6) .seatmap__seat--standard",
        "css=.seatmap__seatrow--30 .ng-star-inserted:nth-of-type(7) .seatmap__seat--standard"
    ]
    alternate_seats = [
        "css=.seatmap__seatrow--31 .ng-star-inserted:nth-of-type(5) .seatmap__seat--standard",
        "css=.seatmap__seatrow--31 .ng-star-inserted:nth-of-type(6) .seatmap__seat--standard",
        "css=.seatmap__seatrow--31 .ng-star-inserted:nth-of-type(7) .seatmap__seat--standard"
    ]

    seat_unavailable = False
    for seat_selector in seats_to_check:
        try:
            browser_lib.get_element(seat_selector)
        except Exception as e:
            seat_unavailable = True
            break

    if seat_unavailable:
        for alt_seat_selector in alternate_seats:
            browser_lib.click(alt_seat_selector)
    else:
        for seat_selector in seats_to_check:
            browser_lib.click(seat_selector)
