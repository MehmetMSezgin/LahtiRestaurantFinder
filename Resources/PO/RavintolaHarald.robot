*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
navigate to first restaurant's menu
    wait until element is enabled    xpath=//a[text()='Lahti']
    click element    xpath=//a[text()='Lahti']

go to menu of the first rerstaurant
    run keyword and continue on failure    click ok
    sleep    1s
    mouse over    //a[@title='Menut']
    wait until element is visible    //a[text()='A la Carte']
    click element    //a[text()='A la Carte']

click ok
    click element    //button[text()='OK']

get the ravintola harald's menu
    ${menu} =    get text    (//div[@class='container'])[2]
    [Return]    ${menu}

