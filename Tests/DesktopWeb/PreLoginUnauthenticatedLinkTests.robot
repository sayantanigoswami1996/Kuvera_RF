*** Settings ***
Library     SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Import.robot

Suite Setup  Launch URL 
Test Teardown  Navigate To Home Page
Suite Teardown  Close All Browsers

#To run all tests: robot --variable URL:https://staging2.kuvera.in/#/ --variable BROWSER:headlesschrome -d Results Tests/DesktopWeb/PreLoginUnautheticatedLinkTests.robot
#To run specific test: robot --variable URL:https://staging2.kuvera.in/#/ --variable BROWSER:headlesschrome -d Results  -i TC01 Tests/DesktopWeb/PreLoginUnauthenticatedLinkTests.robot

*** Test Cases ***
# Unauthenticated Links - Liquid Fund
Liquid Fund Page Navigation
    [Tags]  TC01
    Verify PreLogin Liquid Fund Page

# Unauthenticated Links - Forgot Password
Forgot Password Page Navigation
    [Tags]  TC02   
    Verify PreLogin Forgot Password Page

# Unauthenticated Links - Tax Calculator
Tax Calculator Page Navigation
    [Tags]  TC03 
    Verify PreLogin Tax Calculator Page