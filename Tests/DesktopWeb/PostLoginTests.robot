*** Settings ***
Library    SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Import.robot

Suite Setup  Launch URL 
Test Teardown  Navigate To Home Page PostLogin
Suite Teardown  Close All Browsers

#To run all tests: robot --variable URL:https://staging3.kuvera.in/#/ --variable BROWSER:headlesschrome -d Results Tests/DesktopWeb/PostLoginTests.robot
#To run specific test: robot --variable URL:https://staging3.kuvera.in/#/ --variable BROWSER:headlesschrome -d Results  -i TC01 Tests/DesktopWeb/PostLoginTests.robot

*** Test Cases ***
# Account Creation and Fill In KYC From Dashboard
Create Account And Fill In KYC 
    [Tags]  TC01
    Verify PostLogin Account Creation
    Verify Fill In Of KYC Form Details

# Create Account And Health Insurance End To End Flow
Health Insurance Navigation   
    [Tags]  TC02
    Verify PostLogin Account Creation
    Verify PostLogin Insure Landing Page
    Verify PostLogin Add Family Details