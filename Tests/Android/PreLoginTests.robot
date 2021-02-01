*** Settings ***
Library     OperatingSystem
Library     JSONLibrary
Library     JsonValidator
Resource    ../../Resources/Utils/Android/Common.robot

Suite Setup       Begin Mobile Test Kuvera
Suite Teardown    Close Kuvera Application

#robot -d Results Tests/Android/PreLoginTests.robot
#robot -d Results -L Debug    -i order Tests


*** Test Cases ***
Landing Page Widgets Verification
    [Tags]            TC01
    Begin Mobile Test Kuvera
    Skip Sliders