*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}    https://opensource-demo.orangehrmlive.com/   #OrangeHRM
${url2}    https://www.edureka.co/

*** Test Cases ***
TC_001_Login_Test
    open browser  ${url1}    chrome
    maximize browser window

    sleep    2
    set selenium speed    2
    press keys    //input[@id='txtUsername']    Admin
    press keys    //input[@id='txtPassword']    admin123
    press keys    //input[@id='btnLogin']    \\13            #ASCII value for Enter Key

