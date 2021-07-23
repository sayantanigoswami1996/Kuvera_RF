*** Settings ***

Library     SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Import.robot

Suite Setup  Launch URL
Suite Teardown  Close All Browsers

# To run tests on Prod : robot --variable BROWSER:headlesschrome --variable ENV:Prod -d Results -i Prod Tests/DesktopWeb/Tests.robot
# To run specific test on Prod : robot --variable BROWSER:headlesschrome --variable ENV:Prod -d Results -i TC01 Tests/DesktopWeb/Tests.robot


*** Test Cases ***
# --------------------Prelogin--------------------------------------------------
# Landing Page widgets verfication
Landing Page Widgets Verification
    [Tags]  TC01  Prod  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin Widgets

# Header navigation - Insure and Remit
Header Navigation
    [Tags]  TC02  Prod  Sanity
    [Teardown]  Navigate To Home Page
    PreLogin Header Navigation

# Features sub headers navigation & goals - questionnaire
Features Header Navigation
    [Tags]  TC03  Prod  Sanity
    [Teardown]  Navigate To Home Page
    PreLogin Feature Sub Header Navigation

# Verify all widgets in Login & Signup Page
Login and Signup Page Navigation Test
    [Tags]  TC04  Prod  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin Login Page Widgets
    Go Back
    Verify PreLogin Signup Page Widgets
    Go Back

# Invest Landing Page Navigation
Invest Tiles And Widgets Navigation
    [Tags]  TC05  Prod  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin Invest Tiles

# Invest Mutual Fund
Invest Mutual Fund Navigation
    [Tags]  TC06  Prod  MutualFund  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin Mutual Fund Landing Page

# Invest Digital Gold
Invest Digital Gold Navigation
    [Tags]  TC07  Prod  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin Digital Gold Landing Page

# Invest Stocks
Invest Stocks Navigation
    [Tags]  TC08  Prod  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin Stocks Landing Page

# Invest US Stocks
Invest US Stocks Navigation
    [Tags]  TC09  Prod  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin US Stocks Landing Page

# Invest Save Smart
Invest Save Smart Navigation
    [Tags]  TC10  Prod  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin Save Smart Landing Page

# Invest Crypto
Invest Crypto Navigation
    [Tags]  TC11  Prod  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin Crypto Landing Page

# Footer Section
Verify Footer Section
    [Tags]  TC12  Prod  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin Footer

# Fund House Details
All Fund House Details Navigation
    [Tags]  TC13  Prod  Sanity
    [Teardown]  Navigate To Home Page
    Verify PreLogin All Fund House Details

#------------------Postlogin-------------------------------------------------------------
# Dashboard Widgets Navigation
Dashboard Widgets Navigation
    [Tags]  TC14  Prod  NONKYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod With Verifed NonKYC Account 
    Verify PostLogin Dashboard Widgets Navigation

# Top And Left Bar Navigation
Top And Left Bar Navigation
    [Tags]  TC15  Prod  NONKYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod With Verifed NonKYC Account 
    Verify PostLogin Top Headers Verification
    Verify PostLogin Left Bar Navigation

# MF Non Transactional Navigation Postlogin 
MF Non Transactional Navigation Postlogin
    [Tags]  TC16  Prod  KYC  MutualFund  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod Sanity With Verifed KYC Account
    Verify PostLogin MF Menu Navigation

# MF Transactional Navigation Until Cart Without KYC
MF Transactional Navigation Until Cart Without KYC
    [Tags]  TC17  Prod  NONKYC  MutualFund  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod With Verifed NonKYC Account
    Verify Transactional Navigation On MF Without KYC

# MF Transactional Navigation Until Cart With KYC
MF Transactional Navigation Until Cart With KYC
    [Tags]  TC18  Prod  KYC  MutualFund  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod Sanity With Verifed KYC Account
    Verify PostLogin Prod MF Invest Menu Navigation With KYC

# Stocks Non Transactional Navigation Postlogin 
Stocks Non Transactional Navigation Postlogin
    [Tags]  TC19  Prod  KYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod Sanity With Verifed KYC Account
    Verify PostLogin Stocks Menu Navigation

# US Stocks Non Transactional Navigation Postlogin 
US Stocks Non Transactional Navigation Postlogin
    [Tags]  TC20  Prod  KYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod Sanity With Verifed KYC Account
    Verify PostLogin US Stocks Menu Navigation

# Crypto Navigation Postlogin 
Crypto Navigation Postlogin
    [Tags]  TC21  Prod  KYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod Sanity With Verifed KYC Account
    Verify PostLogin Crypto Menu Navigation

# SaveSmart Navigation Postlogin 
SaveSmart Navigation Postlogin
    [Tags]  TC22  Prod  KYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod Sanity With Verifed KYC Account
    Verify PostLogin Prod SaveSmart Menu Navigation

#-------------------Portfolio---------------------------------------------
# Remit Menu Navigation Postlogin
Remit Menu Navigation Postlogin
    [Tags]  TC23  Prod  KYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod Sanity With Verifed KYC Account
    Verify PostLogin Remit Menu Navigation 

# Rewards Menu Navigation Postlogin
Rewards Menu Navigation Postlogin
    [Tags]  TC24  Prod  NONKYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod With Verifed NonKYC Account
    Verify PostLogin Rewards Menu Navigation 

# Mcxtra Menu Navigation Postlogin
Mcxtra Menu Navigation Postlogin
    [Tags]  TC25  Prod  KYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify PostLogin Prod Mcxtra Menu Navigation

# Reports Menu Navigation Postlogin
Reports Menu Navigation Postlogin
    [Tags]  TC26  Prod  KYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod Sanity With Verifed KYC Account
    Verify PostLogin Reports Menu Navigation With KYC

# Stocks Portfolio Navigation Postlogin
Stocks Portfolio Navigation Postlogin
    [Tags]  TC27  Prod  KYC  Sanity
    [Teardown]  Navigate To Home Page
    Verify Login On Prod Sanity With Verifed KYC Account
    Verify PostLogin Prod Stocks Portfolio Menu Navigation