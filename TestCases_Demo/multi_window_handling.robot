*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}    https://opensource-demo.orangehrmlive.com/   #OrangeHRM
${url2}    https://google.com/

*** Test Cases ***
TC_001_Switching_Browsers
    open browser    ${url1}    chrome
    open browser    ${url2}    chrome

    switch browser    1
    input text    //input[@id='txtUsername']    Admin
    sleep    2
    switch browser    2
    input text    //body/div[1]/div[3]/form[1]/div[1]/div[1]/div[1]/div[1]/div[2]/input[1]    Hello World
    sleep    2
    close all browsers


TC_002_Switching_Window_Tabs      #By window handler in case of dynamic window title
    open browser    https://robotframework.org/    chrome
    maximize browser window
    sleep    2
    click element    //a[contains(text(),'Robot Framework Foundation')]

    @{win_list}    get window handles

#    log to console    ${win_list}
    sleep    2

    switch window    ${win_list}[0]
    click element    //a[@id='__BVID__57___BV_tab_button__']
    sleep    5

    switch window    ${win_list}[1]
    click image    //body/div[1]/div[2]/section[6]/div[2]/div[1]/div[1]/a[1]/img[1]
    sleep    2

    close browser


TC_003_Switching_Window_Tabs_Static_Title
    open browser    https://robotframework.org/    chrome
    maximize browser window

    sleep    2
    click element    //a[contains(text(),'Robot Framework Foundation')]
    sleep    5
    switch window    Robot Framework
    sleep    2
    close browser

