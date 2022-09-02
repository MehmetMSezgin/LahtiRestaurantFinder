*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
get bistro popot's menu
    ${starters} =    get text    //section[@data-id='3feb5c5']
    ${mains} =    get text    //section[@data-id='8871b04']
    ${desserts} =    get text    //div[@data-id='cc2724c']
    @{menu} =  create list    ${starters}    ${mains}    ${desserts}
    [Return]    @{menu}