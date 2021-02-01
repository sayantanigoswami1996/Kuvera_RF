*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     AppiumLibrary
Resource   ../../../AppLocators/Android/A_CommonAppLocators.robot

*** Keywords ***

Begin Mobile Test Kuvera
    Open Application  ${server}  platformName=${platform}    platformVersion=${platform_version}    deviceName=${device}    automationName=${appium}    appActivity=${app_activity}    appPackage=${app_package}
    Wait Until Page Contains Element  ${KU_A_slider1}

Verify Element And Text On Android
    [Arguments]  ${element}  ${text}
    Run Keyword And Continue On Failure  Element Text Should Be  ${element}  ${text}

Wait For Element Visibility On Android
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=90

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

Navigate to Landing Page 
    Skip Sliders
    Kuvera Logo Click

Verify Login And Signup Link
    Element Text Should Be  ${KU_A_loginLink}   ${e_loginLink}
    Element Text Should Be  ${KU_A_signupLink}  ${e_signupLink}
    Wait And Click Element On Android  ${KU_A_loginLink}
    Wait And Verify Element And Text On Android  ${KU_A_loginTitle}  ${e_loginTitle}
    Wait And Click Element On Android  ${KU_A_logo}
    # Wait And Click Element On Android  ${KU_A_signupLink}
    # Wait And Verify Element And Text On Android  ${KU_A_signupTitle}  ${e_signupTitle}
    # Wait And Click Element On Android  ${KU_A_logo}

Wait And Click Element On Android
    [Arguments]  ${element}
    Wait For Element Visibility On Android  ${element}
    Click Element  ${element}

Wait And Verify Element And Text On Android
    [Arguments]  ${element}  ${text}
    Wait For Element Visibility On Android  ${element}
    Verify Element And Text On Android  ${element}  ${text}    

Verify Page Contains Element On Android
    [Arguments]  ${element}
    Run Keyword And Continue On Failure  Page Should Contain Element  ${element}

Scroll Down On Android
    [Arguments]  ${element}
    Scroll Down  ${element}

Verify Presence Of Bot Button
    [Arguments]  ${element}
    Wait For Element Visibility On Android  ${element}
    Verify Page Contains Element On Android  ${element}
    
Quit Kuvera Application
    Quit Application
