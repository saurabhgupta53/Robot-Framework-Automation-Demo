*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

TC_001_Login_Test
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    maximize browser window

#   set selenium speed    2

#   ${tm}   get selenium timeout
#   log to console    ${tm}

#   set selenium timeout    10

    set selenium implicit wait    10
    wait until page contains    LOGIN Panel
    input text    //input[@id='txtUsername']    Admin
    input text    //input[@id='txtPassword']    admin123
    capture element screenshot     //input[@id='btnLogin']    E1.png
    click button    //input[@id='btnLogin']

    sleep    2
    capture page screenshot    T1.png

    close browser

