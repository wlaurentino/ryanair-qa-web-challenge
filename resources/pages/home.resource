*** Settings ***

Library    Browser

*** Keywords ***

Go to Homepage
    New Browser          browser=chromium    headless=False
    New Page             https://www.ryanair.com/ie/en
    Click                css=.cookie-popup-with-overlay__button