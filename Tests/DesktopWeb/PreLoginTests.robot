*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot

Suite Setup  Launch URL 
Suite Teardown   Close All Browsers

# To run all tests: robot -d Results Tests/DesktopWeb/PreLoginTests.robot
#To run specific test: robot -d Results  -i TC01  Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
Landing Page Widgets Verification Test
    Kuvera Web Logo Click
    Verify Widgets
    