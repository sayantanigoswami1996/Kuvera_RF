*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot

Suite Setup  Launch URL 
Suite Teardown   Close All Browsers

#robot -d Results Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
Landing Page Widgets Verification Test
    Kuvera Web Logo Click
    Verify Widgets
    