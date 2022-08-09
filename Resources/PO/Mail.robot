*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
navigate to mail.com
    go to    https://www.mail.com/consentpage
    click element    id=onetrust-accept-btn-handler