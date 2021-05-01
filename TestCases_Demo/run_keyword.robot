*** Settings ***
Library  Collections

*** Variables ***


*** Test Cases ***

TC001_RUN_KEYWORD

    ${log}  set variable  log to console
    run keyword  ${log}  Hello World

    ${var1}  set variable  NO
    run keyword if  '${var1}'=='YES'     log to console  FOUND
    run keyword if  '${var1}'=='NO'     log to console  NOT FOUND