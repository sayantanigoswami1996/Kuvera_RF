*** Settings ***
Library     OperatingSystem
Library     JSONLibrary
Library     JsonValidator
Resource    ../../Resources/Utils/Android/Common.robot

# Suite Setup  Open Application
# Suite Teardown  Close Application

#robot -d Results Tests/Android/PreLoginTests.robot
#robot -d Results -L Debug    -i order Tests


*** Test Cases ***

Menu Navigation
    [Tags]  TC01
    Begin Mobile Test Kuvera
    Skip Sliders
    Kuvera Logo Click
    Verify Navigation to SaveSmart Page
    Quit Kuvera Application


