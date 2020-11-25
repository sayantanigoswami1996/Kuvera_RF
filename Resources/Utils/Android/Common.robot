*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     AppiumLibrary
Resource   ../../../AppLocators/Android/CommonAppLocators.robot

*** Keywords ***

Begin Mobile Test Kuvera
                      Open Application                  ${server}                       platformName=${platform}    platformVersion=${platform_version}    deviceName=${device}    automationName=${appium}    appActivity=${app_activity}    appPackage=${app_package}
                      Wait For Element Visbility        ${KU_slider1}
#app=${rd_apkPath}    appActivity=${rd_app_activity}    appPackage=${rd_app_package}

Get Json Values
    [Arguments]     ${jsonPath}            ${jsonFilePath}
    ${jsonFile}     Load JSON From File    ${jsonFilePath}
    ${jsonValue}    Get Value From Json    ${jsonFile}        ${jsonPath}
    [Return]        ${jsonValue}

Skip Sliders
    Click Element                    ${KU_slider5}
    Click Element                    ${KU_slider1}
    Wait Until Element Is Visible    ${KU_skip}
    Click Element                    ${KU_skip}

Kuvera Logo Click
    Wait Until Element Is Visible    ${KU_logo}
    Click Element                    ${KU_logo}
    Wait Until Element Is Visible    ${KU_close}
    Click Element                    ${KU_close}

# Move To Explore Funds
#     Get Source
#     Swipe By Percent    50                    80    50    60
#     Get Source
#     sleep       10
#     Get Source
#     Click Button          Explore ELSS funds


Quit Kuvera Application
    Quit Application

Close Kuvera Application
    Close Application