*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Library     String
Library     OperatingSystem
Library     Collections
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/InvestLandingPageLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/SaveSmartLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/DigitalGoldLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/GiltFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/EquityIndexLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/SectorFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/ValueFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/ELSSTaxSaverLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/BankPSUBondsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/TopGainersLocators.robot
*** Keywords ***

Launch URL
        Open Browser  ${URL}  ${BROWSER}  alias=Kuvera
        # Maximize Browser Window
        Set Window Size  ${1366}  ${768}
        Reload Page
        Kuvera Web Close Regulatory Disclosure
        Run Keyword If    "${ENV}" == "prod"  Close Hello Bar
        ...    ELSE   Log To Console  Staging

Welcome Page Should Be Open
        Title Should Be  ${KU_W_title}

Wait For Element Visibility
        [Arguments]  ${element}
        Wait Until Element Is Visible  ${element}  timeout=60

Verify Element And Text
        [Arguments]  ${element}  ${text}
        Element Text Should Be  ${element}  ${text}

Verify Page Contains Element
        [Arguments]  ${element}
        Page Should Contain Element  ${element}

Verify Page Contains Image
        [Arguments]  ${image}
        Page Should Contain Image  ${image}

Scroll Untill View
        [Arguments]  ${element}
        Scroll Element Into View  ${element}

Verify Page Contains Link
        [Arguments]  ${link}  ${text}
        Page Should Contain Link  ${link}  ${text}

Verify Page Contains Button
        [Arguments]  ${button}
        Page Should Contain Button  ${button}

Compare Lists
        [Arguments]  ${actualList}   ${expectedList}
        # Get list item from actual list
        FOR  ${actualListItems}  IN  @{actualList}
        ${actualListItem}  Set Variable  ${actualListItems.text}
        END
        # Get list item from expected list
        FOR  ${expectedListItems}  IN  @{expectedList}
        ${expectedListItem}  Set Variable  ${expectedListItems}
        END
        # Compare two list items
        Should Be Equal  ${actualListItem}  ${expectedListItem}

Switch To Window Verify Title And Close
        [Arguments]  ${title}
        Switch Window  locator=NEW
        Title Should Be  ${title}
        Close Window
        Sleep  2s
        Switch Window  browser=Kuvera

Switch To Frame
        [Arguments]  ${element}
        Select Frame  ${element}

Get List Count
        [Arguments]  ${list}
        ${listCount}  Get Length  ${list}
        [Return]  ${listCount}

Kuvera Web Close Regulatory Disclosure 
        Wait Until Element Is Visible  ${KU_W_regulatoryDisclosure}
        Verify Element And Text  ${KU_W_regulatoryDisclosure}  ${e_regulatoryDisclosure}
        Wait For Element Visibility  ${KU_W_close}
        Click Element  ${KU_W_close}

Close Hello Bar
        Sleep  10s
        Wait Until Element Is Visible  ${KU_W_bannerFrame}  timeout=40
        Switch To Frame  ${KU_W_bannerFrame}
        Wait For Element Visibility  ${KU_W_bannerCloseBtn}
        Click Element  ${KU_W_bannerCloseBtn}
        Unselect Frame


Get Json Values
        [Arguments]  ${jsonPath}  ${jsonFilePath}
        ${jsonFile}  Load JSON From File  ${jsonFilePath}
        ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
        [Return]  ${jsonValue}

Press Enter Key
        [Arguments]  ${element}  
        Press Keys  ${element}  ENTER

Clear Text Field
        [Arguments]  ${field}
        Sleep  500ms
        #Press Keys  ${field}  COMMAND+A  DELETE
        ${fieldText} =  Get Value  ${field}
        ${fieldTextLen} =  Get Length  ${fieldText} 
        #Log To Console  ${fieldText}
        #Log To Console  ${fieldTextLen}
        Run Keyword If    """${fieldText}""" != ''
        ...     Repeat Keyword  ${fieldTextLen+1}  Press Keys  ${field}  \ue003

Kuvera Web Logo Click
        Wait For Element Visibility  ${KU_W_logo}
        Click Element  ${KU_W_logo}

Verify Google Play & Apple Store Icons
        Scroll Element Into View  ${KU_W_android_image}
        Verify Page Contains Image  ${KU_W_android_image}
        Verify Page Contains Image  ${KU_W_apple_image}

Verify Language Switch Login And Signup Link
        Wait For Element Visibility  ${KU_W_langSwitch}
        Verify Page Contains Element  ${KU_W_langSwitch}
        Verify Element And Text  ${KU_W_login}  ${e_login}
        Verify Element And Text  ${KU_W_signup}  ${e_signup}

Scroll Page To Location
        [Arguments]    ${x_location}    ${y_location}
        Execute JavaScript    window.scrollTo(${x_location},${y_location})

Close Web Application
        Close All Browser