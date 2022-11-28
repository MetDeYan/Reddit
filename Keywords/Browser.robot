#Browser
*** Settings ***
Library         SeleniumLibrary
Variables       ../Variables/Variables.py
Variables       ../Locators/Locators.py

*** Keywords ***
Opening Browser
    Open Browser                        ${site_url}         ${headlessBrowser}
    Maximize Browser Window
    Wait Until Element Is Visible       ${locMainPageButtonLogIn}

Closing Browser
    Close Browser
