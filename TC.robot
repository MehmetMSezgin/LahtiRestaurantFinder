*** Settings ***
Library    SeleniumLibrary

Resource    Resources/Common.robot
Resource    Resources/PO/google.robot
Resource    Resources/PO/RavintolaHarald.robot

Test Setup    Begin webtest
Test Teardown    End webtest

*** Variables ***

*** Test Cases ***
Test case
    [Tags]    tst
    log    go to Google
    search for restaurants in Lahti
    @{RestaurantNames} =    get restaurant names
    go to the first restaurant    @{RestaurantNames} [1]
    navigate to first restaurant's menu
    go to menu of the first rerstaurant
    ${HaraldMenu} =    get the ravintola harald's menu






