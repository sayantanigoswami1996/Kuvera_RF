*** Settings ***
Library     SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Import.robot

Suite Setup  Launch URL 
Suite Teardown  Close All Browsers

#To run all tests: robot --variable URL:https://kuvera.in/ --variable BROWSER:headlesschrome -d Results Tests/DesktopWeb/PreLoginTests.robot
#To run specific test: robot --variable URL:https://kuvera.in/ --variable BROWSER:headlesschrome -d Results  -i TC01 Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
# Landing Page widgets verfication
Landing Page Widgets Verification Test 
    [Tags]  TC01
    Verify Widgets
    
# Header navigation - Insure, Loans, Remit
Header Navigation Test  
    [Tags]  TC02
    Header Navigation

# Features sub headers navigation & goals - questionnaire
Features Header Navigation Test
    [Tags]  TC03
    Feature Sub Header Navigation
    
# Verify all widgets in Login & Signup Page
Login and Signup Page Navigation Test
    [Tags]  TC04
    Verify Login Page Widgets
    Go Back
    Verify Signup Page Widgets
    Go Back

# Invest Landing Page Navigation
Invest Tiles And Widgets Navigation
    [Tags]  TC05
    Verify Invest Tiles
    
# Invest Mutual Fund 
Invest Mutual Fund Navigation
    [Tags]  TC06
    Verify Mutual Fund Landing Page
    
# Invest Digital Gold
Invest Digital Gold Navigation
    [Tags]  TC07
    Verify Digital Gold Landing Page
    
# Invest Stocks
Invest Stocks Navigation
    [Tags]  TC08
    Verify Stocks Landing Page
    
# Invest US Stocks
Invest US Stocks Navigation
    [Tags]  TC09
    Verify US Stocks Landing Page
    
# Invest Save Smart
Invest Save Smart Navigation
    [Tags]  TC10
    Verify Save Smart Landing Page

# Footer Section
Verify Footer Section
    [Tags]  TC11
    Verify Footer
