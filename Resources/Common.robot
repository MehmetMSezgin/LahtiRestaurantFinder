*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER} =    chrome
${URL} =    https://www.google.com/
${COOKIES} =    xpath=(//div[@class='QS5gu sy4vM'])[2]

*** Keywords ***
Begin webtest
    open browser    ${URL}    ${BROWSER}
    maximize browser window
    accept cookies

End webtest
    sleep    5s
    close browser

accept cookies
    wait until page contains element    ${COOKIES}
    click element    ${COOKIES}