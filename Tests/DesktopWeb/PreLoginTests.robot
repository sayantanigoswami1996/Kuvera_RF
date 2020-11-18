*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot
Resource    ../../Resources/Utils/DesktopWeb/LandingPage.robot
Resource    ../../Resources/Utils/DesktopWeb/Loans.robot
Resource    ../../Resources/Utils/DesktopWeb/Insure.robot
Resource    ../../Resources/Utils/DesktopWeb/Remit.robot
Resource    ../../Resources/Utils/DesktopWeb/Features-TradeSmart.robot


Suite Setup  Launch URL 
Suite Teardown  Close All Browsers

#To run all tests: robot -d Results Tests/DesktopWeb/PreLoginTests.robot
#To run spefici test: robot -d Results  -i TC01  Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
Landing Page Widgets Verification Test
    [Tags]  TC01
    Kuvera Web Logo Click
    Verify Widgets
    
Menu Navigation Verification Test
    [Tags]  TC02
    Kuvera Web Logo Click
    Verify PreLogin Loan Page
    Verify PreLogin Remit Page
    Verify PreLogin Insure Page
    Verify PreLogin TradeSmart Page
