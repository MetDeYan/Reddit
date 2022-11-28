#Post Page
*** Settings ***
Library             SeleniumLibrary
Library             ../Library/RedditUtilLibrary.py
Variables           ../Variables/Variables.py
Variables           ../Locators/Locators.py

*** Keywords ***
Click Button Add Comment
    Wait Until Element Is Visible           ${locPostPageButtonAddComment}          timeout=5
    Click Element                           ${locPostPageButtonAddComment}

Input Comment
    Wait Until Element Is Visible           ${locPostPageInputFieldComment}         timeout=5
    ${comment}=                             Message Generation                      ${comment}
    Set Test Variable                       ${comment}
    Input Text                              ${locPostPageInputFieldComment}         ${comment}

Click Button To Save Comment
    Wait Until Element Is Enabled           ${locPostPageButtonSaveComment}         timeout=5
    Click Element                           ${locPostPageButtonSaveComment}

Verify New Comment Is Visible
    Wait Until Element Contains             ${locPostPageMySavedComment}            ${comment}          timeout=5
    ${message}=                             Comment Message                         ${comment}
    Log                                     ${message}

Click Button Three Dot
    Wait Until Element Is Visible           ${locPostPageButtonThreeDot}            timeout=5
    Click Element                           ${locPostPageButtonThreeDot}

Click Button Delete
    Click Element                           ${locPostPageButtonDelete}

Click Button Delete post
    Click Element                           ${locPostPageButtonDeletePost}

Verify The Post Was Deleted
    Reload Page
    Element Should Be Visible               ${locPostPageDeletedTitle}              timeout=5
    ${message}=                             Delete Post Message                     ${title}
    Log                                     ${message}
