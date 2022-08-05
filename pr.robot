*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
test
    [Tags]    tst
    open browser    https://bistropopot.fi/#section-27-9    chrome
    ${var} =    get text    //*[@id="section-30-9"]/div
    log    ${var}
    sleep    3s
    go to    https://www.ravintolaharald.fi/lahti/a-la-carte/
    sleep    3s
    ${var2} =    get text    (//div[@class='container'])[2]
    log    ${var2}
    go back
    sleep    3s
    close browser