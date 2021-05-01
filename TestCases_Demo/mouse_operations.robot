*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}    https://opensource-demo.orangehrmlive.com/   #OrangeHRM
${url2}    https://www.edureka.co/

*** Test Cases ***
TC_001_Login_Test
    open browser  ${url2}    chrome
    maximize browser window


#    open context menu    //header/nav[1]/ul[1]/li[2]/a[1]       #mouse right click
#    sleep    5

#    double click element    //header/nav[1]/ul[1]/li[4]/a[1]
#    sleep    5

#    mouse down    //header/nav[1]/ul[1]/li[5]/a[1]
#    sleep    5
#
#    mouse up    //header/nav[1]/ul[1]/li[5]/a[1]
#    sleep    5

    mouse over    //body/nav[1]/div[1]/a[1]/span[1]
    sleep    5
