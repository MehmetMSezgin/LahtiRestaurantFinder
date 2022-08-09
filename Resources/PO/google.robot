*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Google_input_bar} =    xpath=//input[@name='q']
${r1_location} =    xpath=(//span[@class='OSrXXb'])[1]
${r2_location} =    xpath=(//span[@class='OSrXXb'])[2]
${r3_location} =    xpath=(//span[@class='OSrXXb'])[3]




*** Keywords ***
search for restaurants in Lahti
    wait until page contains element    ${Google_input_bar}
    input text    ${Google_input_bar}    Best restaurants in Lahti
    press keys    ${Google_input_bar}    ENTER

get restaurant names
    ${r1_name} =    get text    ${r1_location}
    ${r2_name} =    get text    ${r2_location}
    ${r3_name} =    get text    ${r3_location}
    log    ${r1_name}
    log    ${r2_name}
    log    ${r3_name}
    @{Data} =    create list    ${r1_name}    ${r2_name}    ${r3_name}
    [Return]    @{Data}

go to Ravintola Harald
    [Arguments]    ${name}
    #click element    ${r2_location}
    go to    https://www.ravintolaharald.fi/
    #wait until element is visible    (//a[text()='ravintolaharald.fi'])[1]
    #click element    (//a[text()='ravintolaharald.fi'])[1]
    ${title} =   get title
    #should contain    ${name}    ${title}

go to Bistro Popot
    [Arguments]    ${name}
    #click element    ${r1_location}
    go to    https://bistropopot.fi/
    #wait until element is visible    //a[text()='bistropopot.fi']
    #click element    //a[text()='bistropopot.fi']
    ${title} =   get title
    wait until page contains    MENU
    #should contain    ${name}    ${title}







