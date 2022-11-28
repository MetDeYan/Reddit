#Login Page
*** Settings ***
Library             SeleniumLibrary
Variables           ../Variables/Variables.py
Variables           ../Locators/Locators.py

*** Keywords ***
Click Button Login On Main Page
    Click Link                          ${locMainPageButtonLogIn}
    Select Frame                        ${locLoginPageIframe}
    Wait Until Element Is Visible       ${locLoginPageInputUsername}        timeout=5

Input Username
    Input Text                          ${locLoginPageInputUsername}        ${loginUsername}

Input Password
    Input Text                          ${locLoginPageInputPassword}        ${loginPassword}

Click Login
    Click Element                       ${locLoginPageButtonLogIn}

