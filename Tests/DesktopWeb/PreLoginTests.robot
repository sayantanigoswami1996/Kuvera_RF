<<<<<<< HEAD
*** Settings ***
Library     SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Import.robot

Suite Setup  Launch URL 
Suite Teardown  Close All Browsers

#To run all tests - prod::     robot --variable URL:https://kuvera.in --variable BROWSER:chrome --variable ENV:prod -d Results -i TC05 Tests/DesktopWeb/PreLoginTests.robot
#To run all tests - stage::    robot --variable URL:https://staging2.kuvera.in/rc-1.172.3/#/ --variable BROWSER:chrome --variable ENV:stage -d Results -i TC05 Tests/DesktopWeb/PreLoginTests.robot
#To run specific test::        robot --variable URL:https://kuvera.in/ --variable BROWSER:headlesschrome -d Results  -i TC01 Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
# Langin Page widgets verification
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
Features Header Navigation Test
    [Tags]  TC04
    Verify Login Page Widgets
    Go Back
    Verify Signup Page Widgets

# Invest Landing Page Navigation
Invest Landing Page Widgets Verification
    [Tags]  TC05
    Verify Footer
    #Verify Mutual Fund Landing Page
=======
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
>>>>>>> 6261c466f576ff71599597e8324a1be5be9b2c62
