*** Settings ***
Library          SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot

*** Test Cases ***
Valid Login
    Launch URL
    Welcome Page Should Be Open
    Kuvera Logo Click
    [Teardown]                     Close Browser

