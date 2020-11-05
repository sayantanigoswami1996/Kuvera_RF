*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     AppiumLibrary
Resource   ../../AppLocators/CommonAppLocators.robot

*** Keywords ***

Wait For Element Visbility 
    [Arguments]  ${element}
    Wait Until Element Is Visible    ${element}  timeout=30

Begin Mobile Test Kuvera
    Open Application  ${server}    platformName=${platform}    platformVersion=${platform_version}    deviceName=${device}    automationName=${appium}    appActivity=${app_activity}    appPackage=${app_package}
    Wait For Element Visbility    ${KU_slider1}
#app=${rd_apkPath}    appActivity=${rd_app_activity}    appPackage=${rd_app_package}

Get Json Values
    [Arguments]     ${jsonPath}            
    ${jsonFile}     Load JSON From File    Resources/TestData/Headers.json
    ${jsonValue}    Get Value From Json    ${jsonFile}                       ${jsonPath}
    [Return]        ${jsonValue}

Skip Sliders
    Wait Until Element Is Visible    ${KU_slider1}
    Click Element                    ${KU_slider1}
    Wait Until Element Is Visible    ${KU_skip}
    Click Element                    ${KU_skip}

Kuvera Logo Click
    Wait Until Element Is Visible    ${KU_logo}
    Click Element                    ${KU_logo}
    Wait Until Element Is Visible    ${KU_close}
    Click Element                    ${KU_close}


Quit Kuvera Application
    Quit Application

Close Kuvera Application
    Close Application