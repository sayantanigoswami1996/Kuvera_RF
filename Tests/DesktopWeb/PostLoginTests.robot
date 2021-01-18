*** Settings ***
Library    SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Import.robot

Suite Setup  Launch URL 
Test Teardown  Navigate To Home Page PostLogin
Suite Teardown  Close All Browsers

#To run all tests: robot --variable URL:https://staging3.kuvera.in/#/ --variable BROWSER:headlesschrome -d Results Tests/DesktopWeb/PostLoginTests.robot
#To run specific test: robot --variable URL:https://staging3.kuvera.in/#/ --variable BROWSER:headlesschrome -d Results  -i TC01 Tests/DesktopWeb/PostLoginTests.robot

*** Test Cases ***
# Account Creation Post Login
Create Account
    [Tags]  TC01
    Verify PostLogin Account Creation 

# Fill in KYC Form  Post Login
KYC Process
    [Tags]  TC02
    Verify Fill In Of KYC Form Details

# Health Insurance Landing Page Post Login
Health Insurance Landing Page 
    [Tags]  TC03
    Verify PostLogin Insure Landing Page

# Add Family Details  Post Login - Add Family Members , Select City 
Add Family Members And Select City  
    [Tags]  TC04
    Verify PostLogin Add Family Details