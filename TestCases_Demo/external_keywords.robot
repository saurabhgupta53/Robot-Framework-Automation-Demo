*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Keywords/User_Keywords.robot

*** Variables ***
${url1}    https://opensource-demo.orangehrmlive.com/   #OrangeHRM
${browser1}    ff

*** Test Cases ***
TC_001_Login            #with arguments
    Create Folder at a Location    Test_Demo    Test1
    Open Browser and Maximize    ${url1}    ${browser1}
    input text    //input[@id='txtUsername']    Admin
    input text    //input[@id='txtPassword']    admin123
    click button    //input[@id='btnLogin']
    sleep    5
    close browser



