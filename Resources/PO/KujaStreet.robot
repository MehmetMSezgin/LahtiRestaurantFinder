*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
go to Kuja Street
    go to    https://www.raflaamo.fi/fi/ravintola/lahti/kuja-street-food-lahti/menu/2298/kujan-menyy
    accept cookies of Kuja Street

get Kuja Street's menu
    ${snadit} =    get text    //div[@class='sc-ca2a0d8a-11']
    ${leivat} =    get text    (//div[@class='sc-ca2a0d8a-8 kkvPxA'])[2]
    ${semmosii} =    get text    (//div[@class='sc-ca2a0d8a-8 kkvPxA'])[4]
    ${mukit} =    get text    (//div[@class='sc-ca2a0d8a-8 kkvPxA'])[3]
    @{menu} =  create list    ${snadit}    ${leivat}    ${semmosii}    ${mukit}
    [Return]    @{menu}

accept cookies of Kuja Street
    wait until element is visible    //button[@class='light-button accept']
    click element    //button[@class='light-button accept']