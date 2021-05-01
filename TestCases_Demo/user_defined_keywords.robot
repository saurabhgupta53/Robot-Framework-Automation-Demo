*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Keywords/User_Keywords.robot

*** Variables ***
${url1}    https://opensource-demo.orangehrmlive.com/   #OrangeHRM
${browser1}    chrome

*** Test Cases ***
TC_001_Login            #with arguments

    Open Browser and Maximize    ${url1}    ${browser1}
    input text    //input[@id='txtUsername']    Admin
    input text    //input[@id='txtPassword']    admin123
    click button    //input[@id='btnLogin']
    sleep    5


TC_002_Login            #with return value

    ${res}    Open Browser and Maximize    ${url1}    ${browser1}
    input text    //input[@id='txtUsername']    ${res}
    sleep    5
