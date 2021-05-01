*** Settings ***
Library    SeleniumLibrary

Suite Setup    Before Test Suite
Suite Teardown    After Test Suite

*** Keywords ***

Before Test Suite
    log    This Test Suite is for Login Check Functionality

After Test Suite
    log    End of TestSuite
