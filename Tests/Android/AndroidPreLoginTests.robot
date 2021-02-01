*** Settings ***
Library     OperatingSystem
Library     JSONLibrary
Library     JsonValidator

Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Begin Mobile Test Kuvera
Suite Teardown  Quit Kuvera Application

#robot -d Results Tests/Android/PreLoginTests.robot
#robot -d Results -L Debug    -i order Tests


*** Test Cases ***

# Landing Page widgets verfication on Android
Landing Page Widgets Verification on Android
    [Tags]  TC01 
    Verify PreLogin Landing Page Widgets


