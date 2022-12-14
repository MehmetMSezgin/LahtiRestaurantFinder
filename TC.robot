*** Settings ***
Library    SeleniumLibrary
Library    MenuCollector.py

Resource    Resources/Common.robot
Resource    Resources/PO/google.robot
Resource    Resources/PO/RavintolaHarald.robot
Resource    Resources/PO/BistroPopot.robot
Resource    Resources/PO/Mail.robot
Resource    Resources/PO/KujaStreet.robot



Test Setup    Begin webtest
Test Teardown    End webtest

*** Variables ***

*** Test Cases ***
Get Harald Restaurant's menu
    [Tags]    1
    log    go to Google
    search for restaurants in Lahti
    @{RestaurantNames} =    get restaurant names
    go to Ravintola Harald    @{RestaurantNames} [2]
    navigate to Harald restaurant's menu
    go to menu of Harald rerstaurant
    ${HaraldMenu} =    get the ravintola harald's menu
    MenuCollector.menu1    ${HaraldMenu}

Get Bistro Popot Restaurant's menu
    [Tags]    2
    log    go to Google
    search for restaurants in Lahti
    @{RestaurantNames} =    get restaurant names
    go to Bistro Popot    Bistro Popot - Bistro Popot – Ravintola Lahden keskustassa
    @{BistroPopot} =    get bistro popot's menu
    MenuCollector.menu2    @{BistroPopot} [1]    @{BistroPopot} [2]    @{BistroPopot} [3]

Get Kuja Street's menu
    [Tags]    3
    log    go to Google
    search for restaurants in Lahti
    @{RestaurantNames} =    get restaurant names
    go to Kuja Street
    @{KujaStreet} =    get Kuja Street's menu
    Menucollector.menu3    @{KujaStreet} [1]    @{KujaStreet} [2]    @{KujaStreet} [3]    @{KujaStreet} [4]

Send mail
    [Tags]    4
    navigate to mail.com login page
    login by using the credentials
    send the mail
    ${txt} =    MenuCollector.txtToString
    txt to string    ${txt}









