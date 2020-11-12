*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot
Resource    ../../Resources/Utils/DesktopWeb/LandingPage.robot

Suite Setup       Launch URL       
Suite Teardown    Close All Browsers

#robot -d Results Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
Menu Navigation
    [Tags]         TC03
     Maximize Browser Window
    Welcome Page Should Be Open
    Kuvera Web Logo Click
    Verify Loan Menu Navigation

    
Landing Page Navigation
    [Tags]         TC02
    Maximize Browser Window
    Welcome Page Should Be Open
    Kuvera Web Logo Click
    Verify Widgets  

Valid Login
    [Tags]       TC01
    Maximize Browser Window
    Welcome Page Should Be Open
    Kuvera Logo Click
    Quit Kuvera Application

 


