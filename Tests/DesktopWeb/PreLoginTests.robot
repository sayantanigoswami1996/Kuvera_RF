*** Settings ***

Library     SeleniumLibrary
Resource    ../../Resources/Utils/DesktopWeb/Common.robot
Resource    ../../Resources/Utils/DesktopWeb/LandingPage.robot
Resource    ../../Resources/Utils/DesktopWeb/Loans.robot
Resource    ../../Resources/Utils/DesktopWeb/Insure.robot
Resource    ../../Resources/Utils/DesktopWeb/Remit.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Features_SetAGoal.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/OwnAHome.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/BuyACar.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/SaveTax.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/RetireEasy.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/25thAnniversary.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/ForeignVacation.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/EducateMyChild.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/CreateMyGoal.robot

Suite Setup  Launch URL 
Suite Teardown  Close All Browsers

#To run all tests: robot --variable URL:https://kuvera.in/ --variable BROWSER:headlesschrome -d Results Tests/DesktopWeb/PreLoginTests.robot
#To run specific test: robot --variable URL:https://kuvera.in/ --variable BROWSER:headlesschrome -d Results  -i TC01 Tests/DesktopWeb/PreLoginTests.robot

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
    Verify PreLogin Set A Goal Page
    #Verify Educate My Child Questionnaire
 

