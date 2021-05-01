*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Keywords/User_Keywords.robot
Test Setup    Open Browser and Maximize    ${url1}    ${browser1}
Test Teardown    Close Browser

*** Variables ***

${url1}    https://opensource-demo.orangehrmlive.com/   #OrangeHRM
${browser1}    chrome

*** Test Cases ***
TC_001_Enter_Credentials

    input text    //input[@id='txtUsername']    Admin
    input text    //input[@id='txtPassword']    admin123

    sleep    5


TC_002_Login

    click button    //input[@id='btnLogin']