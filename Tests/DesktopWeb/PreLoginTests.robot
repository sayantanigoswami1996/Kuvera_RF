*** Settings ***
Library          SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot
# Resource    ../../Resources/Utils/DesktopWeb/LandingPage.robot

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


