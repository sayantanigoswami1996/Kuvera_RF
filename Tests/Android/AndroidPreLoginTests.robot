*** Settings ***
Library     OperatingSystem
Library     JSONLibrary
Library     JsonValidator

Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Launch Kuvera Android App
Suite Teardown  Quit Kuvera Application

#To run all tests : robot --variable platform:Android --variable platform_version:${version} --variable device:${devicename} -d Results  Tests/Android/AndroidPreLoginTests.robot
#To run specific test:  robot --variable platform:Android --variable platform_version:${version} --variable device:${devicename} -d Results -i TC01 Tests/Android/AndroidPreLoginTests.robot


*** Test Cases ***

# Landing Page widgets verfication on Android
Landing Page Widgets Verification on Android
    [Tags]  TC01 
    Verify PreLogin Landing Page Widgets

# Menu Navigation verfication on Android - Insure
Menu Naviagation Verification on Android
    [Tags]  TC02
    Verify PreLogin Insure Page
