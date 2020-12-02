*** Settings ***
Library     SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Imports.robot
Suite Setup  Launch URL 
Suite Teardown  Close All Browsers

#To run all tests: robot -d Results Tests/DesktopWeb/PreLoginTests.robot
#To run spefici test: robot -d Results  -i TC01  Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
Landing Page Widgets Verification And Header Navigation Test
    [Tags]  TC01
    Kuvera Web Close Regulatory Disclosure
    Close Hello Bar 
    Verify Widgets
    Header Navigation

Features Header Navigation Test
    [Tags]  TC02
    Kuvera Web Close Regulatory Disclosure
     Close Hello Bar
    # Verify PreLogin Invest Landing Page
    Verify PreLogin Set A Goal Page
    #  Verify PreLogin Set A Goal Page