*** Settings ***
Library     SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Import.robot

Suite Setup  Launch URL 
Suite Teardown  Close All Browsers

#To run all tests: robot --variable URL:https://staging2.kuvera.in/ --variable BROWSER:headlesschrome --variable ENV:stage -d Results  Tests/DesktopWeb/PreLoginUnauthenticatedLinkTests.robot
#To run specific test: robot --variable URL:https://staging2.kuvera.in/ --variable BROWSER:headlesschrome --variable ENV:stage -d Results -i TC01 Tests/DesktopWeb/PreLoginUnauthenticatedLinkTests.robot

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

# Unauthenticated Links - E Sign KYC- Failed
E Sign KYC - Failed Navigation
    [Tags]  TC04
    Verify PostLogin E Sign KYC Failed Page

# Unauthenticated Links - E Sign KYC- Invalid request
E Sign KYC - Invalid request Navigation
    [Tags]  TC05
    Verify PostLogin E Sign KYC Invalid Request Page

# Unauthenticated Links - E Sign KYC- Completed
E Sign KYC - Completed Navigation
    [Tags]  TC06
    Verify PostLogin E Sign KYC Completed Page

# Unauthenticated Links - Amazon Save Shop
Amazon Save Shop Navigation
    [Tags]  TC07
    Verify PreLogin Amazon Save Shop Page

# Unauthenticated Links - Gold Rush 
Gold Rush Navigation
    [Tags]  TC08
    Verify PreLogin Gold Rush Page

# Unauthenticated Links - Dhanteras Gold Offer
Dhanteras Gold Offer Navigation
    [Tags]  TC09
    Verify PreLogin Dhanteras Gold Offer Page

# Unauthenticated Links - Pricing Offer
Pricing Navigation
    [Tags]  TC10
    Verify PreLogin Pricing Page  