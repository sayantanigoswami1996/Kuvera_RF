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
    Verify PreLogin Widgets
    [Teardown]  Navigate to Home Page

# Header navigation - Insure, Loans, Remit
Header Navigation 
    [Tags]  TC02
    PreLogin Header Navigation
    [Teardown]  Navigate to Home Page

# Features sub headers navigation & goals - questionnaire
Features Header Navigation
    [Tags]  TC03 
    PreLogin Feature Sub Header Navigation
    [Teardown]  Navigate to Home Page

# Verify all widgets in Login & Signup Page
Login and Signup Page Navigation Test
    [Tags]  TC04
    Verify PreLogin Login Page Widgets
    Go Back
    Verify PreLogin Signup Page Widgets
    Go Back
    [Teardown]  Navigate to Home Page

# Invest Landing Page Navigation
Invest Tiles And Widgets Navigation
    [Tags]  TC05 
    Verify PreLogin Invest Tiles
    [Teardown]  Navigate to Home Page

# Invest Mutual Fund 
Invest Mutual Fund Navigation
    [Tags]  TC06  
    Verify PreLogin Mutual Fund Landing Page
    [Teardown]  Navigate to Home Page

# Invest Digital Gold
Invest Digital Gold Navigation
    [Tags]  TC07  
    Verify PreLogin Digital Gold Landing Page
    [Teardown]  Navigate to Home Page

# Invest Stocks
Invest Stocks Navigation
    [Tags]  TC08  
    Verify PreLogin Stocks Landing Page
    [Teardown]  Navigate to Home Page

# Invest US Stocks
Invest US Stocks Navigation
    [Tags]  TC09 
    Verify PreLogin US Stocks Landing Page
    [Teardown]  Navigate to Home Page

# Invest Save Smart
Invest Save Smart Navigation
    [Tags]  TC10
    Verify PreLogin Save Smart Landing Page
    [Teardown]  Navigate to Home Page

# Footer Section
Verify Footer Section
    [Tags]  TC11
    Verify PreLogin Footer
    [Teardown]  Navigate to Home Page
