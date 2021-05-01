*** Settings ***
Library  Collections
Library  Collections

*** Variables ***
${i}  0

*** Test Cases ***

TC_001_TestCase_level_Variable
    ${var1}  set variable  Hello World
    log to console  ${var1}

# Using For Loop

    FOR  ${i}  IN RANGE   1   10
    log to console  ${i}
    END


TC_002_Define_List_variable and fetch values
    @{list1}  create list  Hello  World  12  89.66  Test123

    ${list_length}=  get length  ${list1}
    log to console  ${list_length}
    log to console  ${list1}[3]


# Iterating list using For Loop

    FOR  ${i}  IN  @{list1}
    log to console  ${i}
    END
