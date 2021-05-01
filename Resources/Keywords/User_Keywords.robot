*** Settings ***
Library    SeleniumLibrary
Library    ../Resources/External_Keywords/User_Keywords.py
Library    ../Resources/External_Keywords/ReadData_excel.py

*** Variables ***

*** Keywords ***
Open Browser and Maximize
    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    maximize browser window

Close Browser
    close all browsers

Create Folder at a Location
    [Arguments]    ${folder_name}    ${subfolder_name}
    ${res}    create_folder    ${folder_name}    ${subfolder_name}
    log    Folder Created at ${res}

Count Rows in Excel Test Data
    [Arguments]    ${sheetname}
    ${rows}    count_rows_in_excel  ${sheetname}
    [Return]    ${rows}

Fetch Data From TestData Excel Sheet
    [Arguments]    ${sheetname}    ${rows}    ${cell}
    ${test_data}    fetch_data_from_excel    ${sheetname}    ${rows}    ${cell}
    [Return]    ${test_data}