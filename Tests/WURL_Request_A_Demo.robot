*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Selecting_Feeling_Lucky.robot
Resource    ../Resources/Demo_Fields.robot
Test Setup    Open Chrome Browser
Test Teardown    Close Browser

*** Variables ***
${Text_to_Search}    wurl

*** Test Cases ***
Test case for Demo field verification
    [Documentation]   This Test case will verify fields in Request Demo Page
    [tags]    UI Test

    Input wurl in Search    ${Text_to_Search}
    Click on Feeling Lucky
    Verifying Home Page and Title
    Verifying Fields in Request Demo


*** Keywords ***
Open Chrome Browser
    Open Browser    http://www.google.com    chrome
    Maximize Browser Window

Input wurl in Search
    [Arguments]    ${Text_to_Search}
    Input Text    name:q    ${Text_to_Search}

Verifying Home Page and Title
    Page Should Contain Element    class:fl-bg-video
    Title Should Be    Home | Wurl




