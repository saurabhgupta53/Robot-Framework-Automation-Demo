*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}    https://opensource-demo.orangehrmlive.com/   #OrangeHRM
${url2}    https:/google.com    #Google

*** Test Cases ***
TC_001_Login_Test
    open browser  ${url1}    chrome
    maximize browser window

    sleep    2
    execute javascript    window.scrollTo(0, 500)

    sleep    2
    close browser