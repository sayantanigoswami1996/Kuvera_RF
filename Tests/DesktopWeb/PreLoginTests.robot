*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot

#Suite Setup       Launch URL 
Suite Teardown    Close All Browsers

#robot -d Results Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
Menu Navigation Test
    #Split String By Separator   Login:B-header  :
    Get Line From Text File
    #Welcome Page Should Be Open
    #Kuvera Web Logo Click
    #Verify Widgets                 