#Create Post Page
*** Settings ***
Library             SeleniumLibrary
Library             ../Library/RedditUtilLibrary.py
Variables           ../Variables/Variables.py
Variables           ../Locators/Locators.py

*** Keywords ***
Click Button Create Post
    Wait Until Element Is Visible       ${locMainPageButtonCreatePost}              timeout=5
    Click Button                        ${locMainPageButtonCreatePost}

Input Profile
    Wait Until Element Is Visible       ${locCreatePostPageInputFieldProfile}       timeout=5
    Input Text                          ${locCreatePostPageInputFieldProfile}       ${community}

Input Title
    ${title}=                           Message Generation                          ${title}
    Set Global Variable                 ${title}
    Input Text                          ${locCreatePostPageInputFieldTitle}         ${title}

Input Post Text
    Input Text                          ${locCreatePostPageInputFieldTextPost}      ${text}

Click Button To Save Post
    Wait Until Element Is Enabled       ${locCreatePostPageButtonSavePost}          timeout=5
    Click Button                        ${locCreatePostPageButtonSavePost}

Verify New Post Is Visible
    Wait Until Element Contains         ${locPostPageMySavedTitle}                  ${title}        timeout=5
    ${message}=                         Post Message                                ${title}
    Log                                 ${message}
