*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Keywords/User_Keywords.robot

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
${browser}    chrome

*** Test Cases ***

TC_001_Login By Excel Data
    [Setup]   Open Browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser

    ${row_no}    Count Rows in Excel Test Data    LoginData

    FOR    ${i}    IN RANGE    1    ${row_no}+1
        ${username}    Fetch Data From TestData Excel Sheet    LoginData    ${i}    1
        ${password}    Fetch Data From TestData Excel Sheet    LoginData    ${i}    2
        input text    //input[@id='txtUsername']    ${username}
        input text    //input[@id='txtPassword']    ${password}
        click button    //input[@id='btnLogin']
        sleep    2
    END