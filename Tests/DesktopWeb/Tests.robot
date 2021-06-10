*** Settings ***

Library     SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Import.robot

Suite Setup  Launch URL
Suite Teardown  Close All Browsers

# To run tests on Prod : robot --variable BROWSER:headlesschrome --variable ENV:Prod -d Results -i Prod Tests/DesktopWeb/Tests.robot
# To run tests on Stage 2 : robot --variable BROWSER:headlesschrome --variable ENV:Stage2 -d Results -i Stage2 Tests/DesktopWeb/Tests.robot
# To run tests on Stage 3 :robot --variable BROWSER:headlesschrome --variable ENV:Stage3 -d Results -i Stage3 Tests/DesktopWeb/Tests.robot
# To run specific test on Prod : robot --variable BROWSER:headlesschrome --variable ENV:Prod -d Results -i TC01 Tests/DesktopWeb/Tests.robot
# To run specific test on Stage2 : robot --variable BROWSER:headlesschrome --variable ENV:Stage2 -d Results -i TC13 Tests/DesktopWeb/Tests.robot
# To run specific test on Stage3 : robot --variable BROWSER:headlesschrome --variable ENV:Stage3 -d Results -i TC20 Tests/DesktopWeb/Tests.robot

*** Test Cases ***

# Landing Page widgets verfication
Landing Page Widgets Verification
    [Tags]  TC01  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin Widgets

# Header navigation - Insure, Loans, Remit
Header Navigation
    [Tags]  TC02  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    PreLogin Header Navigation

# Features sub headers navigation & goals - questionnaire
Features Header Navigation
    [Tags]  TC03  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    PreLogin Feature Sub Header Navigation

# Verify all widgets in Login & Signup Page
Login and Signup Page Navigation Test
    [Tags]  TC04  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin Login Page Widgets
    Go Back
    Verify PreLogin Signup Page Widgets
    Go Back

# Invest Landing Page Navigation
Invest Tiles And Widgets Navigation
    [Tags]  TC05  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin Invest Tiles

# Invest Mutual Fund
Invest Mutual Fund Navigation
    [Tags]  TC06  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin Mutual Fund Landing Page

# Invest Digital Gold
Invest Digital Gold Navigation
    [Tags]  TC07  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin Digital Gold Landing Page

# Invest Stocks
Invest Stocks Navigation
    [Tags]  TC08  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin Stocks Landing Page

# Invest US Stocks
Invest US Stocks Navigation
    [Tags]  TC09  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin US Stocks Landing Page

# Invest Save Smart
Invest Save Smart Navigation
    [Tags]  TC10  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin Save Smart Landing Page

# Invest Crypto
Invest Crypto Navigation
    [Tags]  TC11  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin Crypto Landing Page

# Footer Section
Verify Footer Section
    [Tags]  TC12  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin Footer

# Fund House Details
All Fund House Details Navigation
    [Tags]  TC13  Prod  Stage3  Stage2
    [Teardown]  Navigate To Home Page
    Verify PreLogin All Fund House Details

# ----------------- Unauthenticated Links -----------------
# Unauthenticated Links - Liquid Fund
Liquid Fund Page Navigation
    [Tags]  TC14  Stage2
    Verify PreLogin Liquid Fund Page

# Unauthenticated Links - Forgot Password
Forgot Password Page Navigation
    [Tags]  TC15  Stage2
     Verify PreLogin Forgot Password Page

# Unauthenticated Links - E Sign KYC- Failed
E Sign KYC - Failed Navigation
    [Tags]  TC16  Stage2
    Verify PostLogin E Sign KYC Failed Page

# Unauthenticated Links - E Sign KYC- Completed
E Sign KYC - Completed Navigation
    [Tags]  TC17  Stage2
    Verify PostLogin E Sign KYC Completed Page

# Unauthenticated Links - Amazon Save Shop
Amazon Save Shop Navigation
    [Tags]  TC18  Stage2
    Verify PreLogin Amazon Save Shop Page

# Unauthenticated Links - Gold Rush
Gold Rush Navigation
    [Tags]  TC19  Stage2
    Verify PreLogin Gold Rush Page

# Unauthenticated Links - Dhanteras Gold Offer
Dhanteras Gold Offer Navigation
    [Tags]  TC20  Stage2
    Verify PreLogin Dhanteras Gold Offer Page

# ----------------- Post Login -----------------
# Account Creation and Fill In KYC From Dashboard
Create Account And Fill In KYC
    [Tags]  TC21  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify Fill In Of KYC Form Details

# Create Account And Health Insurance End To End Flow
Health Insurance Navigation
    [Tags]  TC22  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin Insure Landing Page
    Verify PostLogin Add Family Details
    Login And Verify Policy Details

# Complete PAN Verified KYC Navigation
PAN Verified KYC Navigation
    [Tags]  TC23  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PAN Verifed KYC Details

# Complete  UnVerified KYC Navigation
UnVerified KYC Navigation
    [Tags]  TC24  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify Unverifed KYC Navigation

# Dashboard Widgets Navigation
Dashboard Widgets Navigation
    [Tags]  TC25  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin Dashboard Widgets Navigation

# Top And Left Bar Navigation
Top And Left Bar Navigation
    [Tags]  TC26  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin Top Headers Verification
    Verify PostLogin Left Bar Navigation

# Invite Friends Menu Navigation
Invite Friends Menu Navigation
    [Tags]  TC27  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin Invite Friends Menu Navigation

# Manage Folio Menu Navigation Without KYC
Manage Folio Menu Navigation Without KYC
    [Tags]  TC28  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin Manage Folio Menu Navigation Without KYC

# Manage Folio Menu Navigation With KYC
Manage Folio Menu Navigation With KYC
    [Tags]  TC29  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin Manage Folio Navigation With KYC

# Reports Menu Navigation Without KYC
Reports Menu Navigation Without KYC
    [Tags]  TC30  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin Reports Menu Navigation Without KYC 

# Reports Menu Navigation With KYC
Reports Menu Navigation With KYC
    [Tags]  TC31  Stage3
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin Reports Menu Navigation With KYC 

#---------------------------Invest--------------------------------------------
# Invest Tiles Navigation Postlogin 
Invest Tiles Navigation Postlogin
    [Tags]  TC32  Stage3  NONKYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PreLogin Invest Tiles

# MF Non Transactional Navigation Postlogin 
MF Non Transactional Navigation Postlogin
    [Tags]  TC33  Prod  Stage2
    [Teardown]  Navigate To Home Page
    Verify Login On Prod With Verifed KYC Account
    Verify PostLogin MF Menu Navigation

# Stocks Non Transactional Navigation Postlogin 
Stocks Non Transactional Navigation Postlogin
    [Tags]  TC34  Prod  Stage2
    [Teardown]  Navigate To Home Page
    Verify Login On Prod With Verifed KYC Account
    Verify PostLogin Stocks Menu Navigation

# US Stocks Non Transactional Navigation Postlogin 
US Stocks Non Transactional Navigation Postlogin
    [Tags]  TC35  Prod  Stage2
    [Teardown]  Navigate To Home Page
    Verify Login On Prod With Verifed KYC Account
    Verify PostLogin US Stocks Menu Navigation

# SaveSmart Navigation Postlogin 
SaveSmart Navigation Postlogin
    [Tags]  TC36  Stage3  KYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PAN Verifed KYC Details
    Verify PostLogin SaveSmart Menu Navigation

# Crypto Navigation Postlogin 
Crypto Navigation Postlogin
    [Tags]  TC37  Prod  Stage2
    [Teardown]  Navigate To Home Page
    Verify Login On Prod With Verifed KYC Account
    Verify PostLogin Crypto Menu Navigation

# Digital Gold SIP and Track Navigation Postlogin 
Digital Gold SIP and Track Navigation Postlogin
    [Tags]  TC38  Stage3  KYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PAN Verifed KYC Details
    Verify PostLogin Digi Gold Track And SIP Menu Navigation 

# Digital Gold Buy and Sell Navigation Postlogin 
Digital Gold Buy and Sell Navigation Postlogin
    [Tags]  TC39  Stage3  KYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PAN Verifed KYC Details
    Verify PostLogin Digi Gold Buy And Sell Menu Navigation 

#----------------------Portfolios-------------------------------------
# MF Portfolio Navigation Postlogin Without KYC
MF Portfolio Navigation Postlogin Without KYC
    [Tags]  TC40  Stage3  NONKYC  MutualFund
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin MF Portfolio Menu Navigation Without KYC

# MF Portfolio Navigation Postlogin With KYC
MF Portfolio Navigation Postlogin With KYC
    [Tags]  TC41  Stage3  KYC  MutualFund
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PAN Verifed KYC Details
    Verify PostLogin MF Portfolio Menu Navigation With KYC  

# US Stocks Portfolio Navigation Postlogin Without KYC
US Stocks Portfolio Navigation Postlogin Without KYC  Portfolio
    [Tags]  TC42  Stage3  NONKYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin US Stocks Portflio Menu Navigation Without KYC

# US Stocks Portfolio Navigation Postlogin With KYC
US Stocks Portfolio Navigation Postlogin With KYC
    [Tags]  TC43  Stage3  KYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PAN Verifed KYC Details
    Verify PostLogin US Stocks Portflio Menu Navigation With KYC  

# Stocks Portfolio Navigation Postlogin Without KYC
Stocks Portfolio Navigation Postlogin Without KYC
    [Tags]  TC44  Stage3  NONKYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin Stocks Portflio Menu Navigation Without KYC

# Stocks Portfolio Navigation Postlogin With KYC
Stocks Portfolio Navigation Postlogin With KYC
    [Tags]  TC45  Equity  KYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PAN Verifed KYC Details
    Verify PostLogin Stocks Portflio Menu Navigation With KYC

# Savesmart Portfolio Navigation Postlogin With KYC
Savesmart Portfolio Navigation Postlogin With KYC
    [Tags]  TC46  Stage3  KYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PAN Verifed KYC Details
    Verify PostLogin Savesmart Portflio Menu Navigation With KYC

# Gold Portfolio Navigation Postlogin Without KYC
Gold Portfolio Navigation Postlogin Without KYC
    [Tags]  TC47  Stage3  NONKYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PostLogin Gold Portfolio Menu Navigation Without KYC

# Gold Portfolio Navigation Postlogin With KYC
Gold Portfolio Navigation Postlogin With KYC
    [Tags]  TC48  Stage3  KYC
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PAN Verifed KYC Details
    Verify PostLogin Gold Portfolio Menu Navigation With KYC

# EPF Portfolio Navigation Postlogin With KYC
EPF Portfolio Navigation Postlogin With KYC
    [Tags]  TC49  Prod  Stage2  
    # [Teardown]  Navigate To Home Page
    Verify Login On Prod With Verifed KYC Account  
    Verify PostLogin EPF Portfolio Menu Navigation With KYC

# FD Portfolio Navigation Postlogin With KYC
FD Portfolio Navigation Postlogin With KYC
    [Tags]  TC50  Stage3  KYC  FD
    [Teardown]  Navigate To Home Page
    Verify PostLogin Account Creation
    Verify PAN Verifed KYC Details
    Verify PostLogin FD Portfolio Menu Navigation With KYC
#---------------------End Of Portfolio-----------------------------  