*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot

#Suite Setup       Launch URL 
Suite Teardown    Close All Browsers

#robot -d Results Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
Landing Page Navigation
  [Tags]      TC02
    Launch URL
    Maximize Browser Window
    Welcome Page Should Be Open
    Kuvera Logo Click
    Validate Login Button Click
    Go Back
    Validate SignUp Button Click
    Go Back
    Validate Login Link Click
    Go Back
    Validate SignUp Link Click 
    Go Back
    Quit Kuvera Application


Valid Login
    [Tags]       TC01
    Launch URL
    Maximize Browser Window
    Welcome Page Should Be Open
    Kuvera Logo Click
    Quit Kuvera Application

Menu Navigation Test
    [Tags]         TC03
    #Split String By Separator   Login:B-header  :
    # Get Line From Text File
    Launch URL
    Maximize Browser Window
    Welcome Page Should Be Open
    Kuvera Web Logo Click
    Verify Widgets   


