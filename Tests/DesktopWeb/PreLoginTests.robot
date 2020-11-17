*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot
Resource    ../../Resources/Utils/DesktopWeb/LandingPage.robot
Resource    ../../Resources/Utils/DesktopWeb/Loans.robot
<<<<<<< HEAD
Resource    ../../Resources/Utils/DesktopWeb/Insure.robot
=======
Resource    ../../Resources/Utils/DesktopWeb/Remit.robot
>>>>>>> KU_RF_PE_PHASE1

Suite Setup  Launch URL 
Suite Teardown  Close All Browsers

#To run all tests: robot -d Results Tests/DesktopWeb/PreLoginTests.robot
#To run spefici test: robot -d Results  -i TC01  Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
Landing Page Widgets Verification Test
    [Tags]  TC01
    Kuvera Web Logo Click
    Verify Widgets
<<<<<<< HEAD
    
Menu Navigation Verification Test
    [Tags]  TC02
    Kuvera Web Logo Click
    Verify Loan Page
    Verify Insure Page
    
=======

Menu Navigation Verification Test
    [Tags]  TC02
    Kuvera Web Logo Click
    #Verify Loan Page
    Verify Remit Page
>>>>>>> KU_RF_PE_PHASE1
