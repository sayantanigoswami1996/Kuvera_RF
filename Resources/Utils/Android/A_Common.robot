*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     AppiumLibrary
Resource   ../../../AppLocators/Android/A_CommonAppLocators.robot
Resource   ../../../AppLocators/Android/A_MenuNavigationLocators.robot

*** Keywords ***

Launch Kuvera Android App
    Run Keyword If    '${environmentToRunTest}'=='${e_realDevice}'  Open Kuvera App On Real Device
    ...     ELSE IF   '${environmentToRunTest}'=='${e_browserstackDevice}'  Open Kuvera App On Browserstack
    Wait Until Page Contains Element  ${KU_A_slider1}
    Navigate to Landing Page

Open Kuvera App On Browserstack
    Open Application  ${remote_URL}  app=bs://c9ea03eb5649b488f8c692af206f916e40904608  name=PreloginTests   build=RobotFramework    platformName=Android    os_version=9.0    device=Google Pixel 3  

Open Kuvera App On Real Device
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform_version}  deviceName=${device}  automationName=${appium}  appActivity=${app_activity}  appPackage=${app_package}

Verify Element And Text On Android
    [Arguments]  ${element}  ${text}
    Run Keyword And Continue On Failure  Element Should Contain Text  ${element}  ${text}

Wait For Element Visibility On Android
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=90

Wait And Click Element On Android
    [Arguments]  ${element}
    Wait For Element Visibility On Android  ${element}
    Click Element  ${element}

Wait And Verify Element And Text On Android
    [Arguments]  ${element}  ${text}
    Wait For Element Visibility On Android  ${element}
    Verify Element And Text On Android  ${element}  ${text}    

Get Json Values
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}

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

Get Json Values
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}

Skip Sliders
    Click Element  ${KU_A_slider5}
    Click Element  ${KU_A_slider1}
    Wait For Element Visibility On Android  ${KU_A_skip}
    Click Element  ${KU_A_skip}

Kuvera Logo Click
    Wait And Click Element On Android  ${KU_A_logo}
    Sleep  2s
    Wait And Click Element On Android  ${KU_A_close}

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

Navigate To Various Links Under Hamburger Menu
    [Arguments]  ${links}  ${linkText}
    Wait And Click Element On Android  ${KU_A_hamburgerMenu}
    Sleep  1s
    Wait And Verify Element And Text On Android  ${links}  ${linkText}
    Wait And Click Element On Android  ${links}

Verify Signup Link And Kuvera Logo
    Wait And Verify Element And Text On Android  ${KU_A_signupLink}  ${e_signupLink}
    Wait For Element Visibility On Android  ${KU_A_logo}
    Verify Page Contains Element On Android  ${KU_A_logo}

Verify Login And Signup Button
    Wait And Verify Element And Text On Android  ${KU_A_loginLink}   ${e_loginLink}
    Wait And Click Element On Android  ${KU_A_loginLink}
    Wait And Verify Element And Text On Android  ${KU_A_loginTitle}  ${e_loginTitle}
    Wait And Click Element On Android  ${KU_A_logo}
    Sleep  2s
    Wait And Verify Element And Text On Android  ${KU_A_signupBtn}  ${e_signupLink}
    Wait And Click Element On Android  ${KU_A_signupBtn}
    Wait And Verify Element And Text On Android  ${KU_A_signupTitle}  ${e_signupTitle}
    Wait And Click Element On Android  ${KU_A_logo}

Verify Signup Page On Android App
    Wait And Verify Element And Text On Android  ${KU_A_signupTitle}  ${e_signupTitle}
    Sleep  2s

Verify Login Page On Android App
    Wait And Verify Element And Text On Android  ${KU_A_loginTitle}  ${e_loginTitle}
    Wait And Click Element On Android  ${KU_A_logo}

Verify Widgets And Title
    [Arguments]  ${label}  ${labelText}  ${title}  ${titleText}
    Wait And Verify Element And Text On Android  ${label}  ${labelText}
    Wait And Click Element On Android  ${label}
    Wait And Verify Element And Text On Android  ${title}  ${titleText}
   
Quit Kuvera Application
    Quit Application
