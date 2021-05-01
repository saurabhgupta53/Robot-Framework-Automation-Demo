*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}    https://opensource-demo.orangehrmlive.com/   #OrangeHRM
${url2}    https:/google.com    #Google
*** Test Cases ***

TC_001_Login_Test
    open browser  ${url1}    chrome
    maximize browser window

    go to   ${url2}
    ${u1}   get location
    log to console    ${u1}

    go back
    ${u2}   get location
    log to console    ${u2}

    close browser