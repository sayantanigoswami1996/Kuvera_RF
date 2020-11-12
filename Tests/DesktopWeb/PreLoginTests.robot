*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot
Resource    ../../Resources/Utils/DesktopWeb/LandingPage.robot

Suite Setup  Launch URL 
Suite Teardown   Close All Browsers

#robot -d Results Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
Landing Page Widgets Verification Test
    [Tags]  TC01
    Kuvera Web Logo Click
    Verify Widgets
Menu Navigation Verification Test
     [Tags]  TC02
     Kuvera Web Logo Click
     Verify Loan Menu Navigation
    