*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot

#Suite Setup       Launch URL 
Suite Teardown    Close All Browsers

#robot -d Results Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
Landing Page Navigation
    [Tags]         TC02
    Launch URL
    Maximize Browser Window
    Welcome Page Should Be Open
    Kuvera Web Logo Click
    Verify Widgets  

Valid Login
    [Tags]       TC01
    Launch URL
    Maximize Browser Window
    Welcome Page Should Be Open
    Kuvera Logo Click
    Quit Kuvera Application

 


