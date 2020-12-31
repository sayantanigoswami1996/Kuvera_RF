*** Settings ***
Library     SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Import.robot

Suite Setup  Launch URL 
Suite Teardown  Close All Browsers

#To run all tests: robot --variable URL:https://kuvera.in/ --variable BROWSER:headlesschrome -d Results Tests/DesktopWeb/PreLoginTests.robot
#To run specific test: robot --variable URL:https://kuvera.in/ --variable BROWSER:headlesschrome -d Results  -i TC01 Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
# Landing Page widgets verfication
Landing Page Widgets Verification 
    [Tags]  TC01
    Verify Widgets
    
# Header navigation - Insure, Loans, Remit
Header Navigation Test  
    [Tags]  TC02
    Header Navigation

# Features sub headers navigation & goals - questionnaire
Features Header Navigation
    [Tags]  TC03
    Feature Sub Header Navigation
    
# Verify all widgets in Login & Signup Page
Login and Signup Page Navigation
    [Tags]  TC04
    Verify Pre Login Login Page Widgets
    Go Back
    Verify Pre Login Signup Page Widgets
    Go Back

# Invest Landing Page Navigation
Invest Tiles And Widgets Navigation
    [Tags]  TC05
    Verify Pre Login Invest Tiles
    
# Invest Mutual Fund 
Invest Mutual Fund Navigation
    [Tags]  TC06
    Verify Pre Login Mutual Fund Landing Page
    
# Invest Digital Gold
Invest Digital Gold Navigation
    [Tags]  TC07
    Verify Pre Login Digital Gold Landing Page
    
# Invest Stocks
Invest Stocks Navigation
    [Tags]  TC08
    Verify Pre Login Stocks Landing Page
    
# Invest US Stocks
Invest US Stocks Navigation
    [Tags]  TC09
    Verify Pre Login US Stocks Landing Page
    
# Invest Save Smart
Invest Save Smart Navigation
    [Tags]  TC10
    Verify Pre Login Save Smart Landing Page

# Footer Section
Verify Footer Section
    [Tags]  TC11
    Verify PreLogin Footer 

# Fund House Details
All Fund House Details Navigation
    [Tags]  TC12
    Verify PreLogin All Fund House Details