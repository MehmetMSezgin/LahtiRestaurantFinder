*** Settings ***
Library    SeleniumLibrary
Library    MenuCollector.py

Resource    Resources/Common.robot
Resource    Resources/PO/google.robot
Resource    Resources/PO/RavintolaHarald.robot
Resource    Resources/PO/BistroPopot.robot


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








