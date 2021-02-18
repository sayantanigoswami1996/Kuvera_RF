*** Settings ***
Library     OperatingSystem
Library     JSONLibrary
Library     JsonValidator

Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Launch Kuvera Android App
Suite Teardown  Quit Kuvera Application

#To run all tests on real device  : robot --variable environmentToRunTest:Local --variable platform:Android --variable platform_version:${OSversion} --variable device:${deviceName} -d Results  Tests/Android/AndroidPreLoginTests.robot
#To run specific test on real device :  robot --variable environmentToRunTest:Local --variable platform:Android --variable platform_version:${OSversion} --variable device:${deviceName} -d Results -i TC01 Tests/Android/AndroidPreLoginTests.robot

# To run all test on browserstack : robot --variable environmentToRunTest:Browserstack --variable browserstack_userName:rajagopalgovinda1 --variable browserstack_accessKey:oo6ufvPJjGQDHqRN4Jcd --variable appURL:bs://e53d69950c44f9a0faf496d5e45f1d0f8920f106 -d Results Tests/Android/AndroidPreLoginTests.robot
# To run specific test on browserstack : robot --variable environmentToRunTest:Browserstack --variable browserstack_userName:rajagopalgovinda1 --variable browserstack_accessKey:oo6ufvPJjGQDHqRN4Jcd --variable appURL:bs://e53d69950c44f9a0faf496d5e45f1d0f8920f106 -d Results -i TC07 Tests/Android/AndroidPreLoginTests.robot

*** Test Cases ***

# Landing Page widgets verfication on Android
Landing Page Widgets Verification on Android
    [Tags]  TC01 
    Verify PreLogin Landing Page Widgets

# Menu Navigation verfication on Android - Insure
Menu Navigation Verification on Android
    [Tags]  TC02
    Verify Android PreLogin Insure Page
   
# Menu Navigation verfication on Android - Loans
Menu Navigation Verification on Android
    [Tags]  TC03
    Verify Android PreLogin Loans Page

# Menu Navigation verfication on Android - Remit
Menu Navigation Verification on Android
    [Tags]  TC04
    Verify Android PreLogin Remit Page

# Menu Navigation under Features - Set A Goal 
Set A Goal Navigation Verification on Android
    [Tags]  TC05
    Verify Android PreLogin Set A Goal Page

# Menu Navigation under Features - TradeSmart
TradeSmart Navigation Verification on Android
    [Tags]  TC06
    Verify Android PreLogin TradeSmart Page

# Menu Navigation under Features - Family Account
Family Account Navigation Verification on Android
    [Tags]  TC07
    Verify Android PreLogin Family Account Page

# Menu Navigation under Features - Manage Account
Manage Account Navigation Verification on Android
    [Tags]  TC08
    Verify Android PreLogin Manage Account Page
