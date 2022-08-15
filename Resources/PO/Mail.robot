*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Login_locator} =    //*[@id='login-email']
${Login_mail} =    EtteplanReceiver@europe.com
${Password_locator} =    //*[@id='login-password']
${Password_mail} =    Password#1234
${Login_button} =    //button[@class='btn btn-block login-submit']
${Receiver} =    EtteplanReceiver@europe.com
${Subject} =    Test


*** Keywords ***
navigate to mail.com login page
    go to    https://www.mail.com/consentpage
#   accept cookies of mail
    go to    https://www.mail.com/company/privacypolicy/
    sleep    3s

login by using the credentials
    click element    //a[@data-tracking-contentposition="header.icon.login"]
    wait until page contains    Search
    click element    //a[@id='login-button']
    wait until element is visible    ${Login_locator}
    input text    ${login_locator}    ${login_mail}
    input text    ${password_locator}    ${password_mail}
    click element    ${Login_button}

send the mail
    #wait until page contains    Ettaplan Receiver
    compose mail

compose mail
    click element    (//span[text()='E-mail'])[1]
    sleep    1s
    select frame    id=thirdPartyFrame_mail
    click element    //a[@data-webdriver="emailLink"]
    sleep    3s
    unselect frame

    select frame    xpath=//*[@id="thirdPartyFrame_mail"]
    input text    xpath=/html/body/div[3]/div[3]/div[3]/div[1]/div[1]/div/form/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div/div/ul/li/input    ${Receiver}
    unselect frame

    select frame    xpath=//*[@id="thirdPartyFrame_mail"]
    select frame    xpath=//*[@id="cke_1_contents"]/iframe
    wait until element is visible    id=body


txt to string
    [Arguments]    ${txt}
    input text    id=body    ${txt}
    sleep    10s
    unselect frame
    select frame    xpath=//*[@id="thirdPartyFrame_mail"]
    click element    id=compose-form-submit-send




accept cookies of mail
    sleep    2s
    select frame    //iframe[@class='permission-core-iframe']
    select frame    //iframe[@style='position: fixed; inset: auto auto 0px 0px; display: block; width: 100%; height: 100%; border: 0px; z-index: 2147483647;']
    wait until element is visible    //button[@id='onetrust-accept-btn-handler']
    click element    //button[@id='onetrust-accept-btn-handler']
    unselect frame
