#Reddit
*** Settings ***
Documentation       Test suite to validate reddit.com
Resource            ../Keywords/Browser.robot
Resource            ../Keywords/LoginPage.robot
Resource            ../Keywords/CreatePostPage.robot
Resource            ../Keywords/PostPage.robot
Suite Setup         Opening Browser
Suite Teardown      Closing Browser

*** Test Cases ***
Authorization On Reddit
    [Documentation]         This test case verifies that the user is able to successfully login to reddit.com
    Click Button Login On Main Page
    Input Username
    Input Password
    Click Login

Create New Post In Reddit
    [Documentation]         This test case verifies that the user can successfully create a new post on reddit.com
    Click Button Create Post
    Input Profile
    Input Title
    Input Post Text
    Click Button To Save Post
    Verify New Post Is Visible

Add New Comment In Your Post
    [Documentation]         This test case verifies that a user can successfully add a comment to a post on reddit.com
    Input Comment
    Click Button To Save Comment
    Verify New Comment Is Visible

Delete Your Post In Reddit
    [Documentation]         This test case verifies that a user can successfully delete a post on reddit.com
    Click Button Three Dot
    Click Button Delete
    Click Button Delete post
    Verify The Post Was Deleted
