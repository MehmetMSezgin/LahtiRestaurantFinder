*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
get bistro popot's menu
    ${starters} =    get text    id=div_block-78-9
    ${mains} =    get text    id=div_block-87-9
    ${desserts} =    get text    id=div_block-105-9
    @{menu} =  create list    ${starters}    ${mains}    ${desserts}
    [Return]    @{menu}