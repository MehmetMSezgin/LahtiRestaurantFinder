*** Settings ***
Library    SeleniumLibrary

Resource    Resources/Common.robot

*** Test Cases ***
Switch between Browser windows using 'Browser Title' and verify the text
    [Tags]    tst
    Open Browser  https://the-internet.herokuapp.com/windows  Chrome
    Wait Until Element Is Visible  tag:h3  timeout=5
    Click Element  css:[href="/windows/new"]
    sleep    5s
    Switch Window  title:The Internet
    Element Text Should Be  tag:h3  Opening a new window  timeout=5
    Switch Window  title:New Window
    Element Text Should Be  tag:h3  New Window  timeout=5
    switch window    title:The Internet
    sleep    3s
    close browser
