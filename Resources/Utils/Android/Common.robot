*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     AppiumLibrary
Resource   ../../../AppLocators/Android/CommonAppLocators.robot

*** Keywords ***


Begin Mobile Test Kuvera
    Open Application  ${server}  platformName=${platform}    platformVersion=${platform_version}    deviceName=${device}    automationName=${appium}    appActivity=${app_activity}    appPackage=${app_package}
    Wait Until Page Contains Element  ${KU_A_slider1}

Get Json Values
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}

Skip Sliders
    Click Element  ${KU_A_slider5}
    Click Element  ${KU_A_slider1}
    Wait Until Element Is Visible  ${KU_A_skip}
    Click Element  ${KU_A_skip}

Kuvera Logo Click
    Wait Until Element Is Visible  ${KU_A_logo}
    Click Element  ${KU_A_logo}
    Wait Until Element Is Visible  ${KU_A_close}
    Click Element  ${KU_A_close}

Verify Navigation to SaveSmart Page
    Click Element  ${KU_A_hamburgerMenu}
    Wait Until Page Contains Element  ${KU_A_investMenu}  timeout=60s
    Click Element  ${KU_A_investMenu}
    Wait Until Page Contains Element  ${KU_A_savesmartTiles}  timeout=60s
    Click Element  ${KU_A_savesmartTiles}
    Wait Until Page Contains Element  ${KU_A_savesmartHeader}  timeout=60s
    Element Should Contain Text  ${KU_A_savesmartHeader}  ${e_A_savesmartHeader}
    Click Element  ${KU_A_logo}

Quit Kuvera Application
    Quit Application

Close Kuvera Application
    Close Application
