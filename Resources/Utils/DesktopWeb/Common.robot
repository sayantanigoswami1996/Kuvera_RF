*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Library     String
Library     OperatingSystem
Library     Collections
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot

*** Keywords ***
Launch URL
    Open Browser  ${URL}  ${BROWSER}  alias=Kuvera
    # Maximize Browser Window
    Set Window Size  ${1366}  ${768}
    Reload Page

Welcome Page Should Be Open
    Title Should Be  ${KU_W_title}

Wait For Element Visbility
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=30

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

Compare Lists 
    [Arguments]  ${actualList}   ${expectedList}
    #Get list item from actual list
    FOR  ${actualListItems}  IN  @{actualList}
    ${actualListItem}  Set Variable  ${actualListItems.text}
    END
    #Get list item from expected list
    FOR  ${expectedListItems}  IN  @{expectedList}
    ${expectedListItem}  Set Variable  ${expectedListItems}
    END
    #Compare two list items
    Should Be Equal  ${actualListItem}  ${expectedListItem}  

Switch To Window Verify Title And Close
    [Arguments]  ${title}
    Switch Window  locator=NEW
    Title Should Be  ${title}
    Close Window
    Switch Window  browser=Kuvera

Switch To Frame
    [Arguments]  ${element}
    Select Frame  ${element}

Get List Count
    [Arguments]  ${list}
    ${listCount}  Get Length  ${list}
    [Return]  ${listCount}

Close Banner 
    Sleep  10s
    Wait Until Element Is Visible  ${KU_W_bannerFrame}  timeout=30
    Switch To Frame  ${KU_W_bannerFrame}
    Wait For Element Visbility  ${KU_W_bannerCloseBtn}
    Sleep   1s
    Click Element  ${KU_W_bannerCloseBtn}
    Unselect Frame
>
Get Json Values
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}

Verify Widgets From Json
    ${jsonWidgetsFile}  Load JSON From File  /Users/prathijamoolya/Kuvera/Automation/Kuvera_RF/Resources/TestData/Widgets.json
    ${jsonWidgetsValue}  Get Value From Json  ${jsonWidgetsFile}  $.Widgets
    ${json_data}  Set Variable  ${jsonWidgetsValue} 
    Log To Console  ${json_data1}          
    # Verify Page Contains Element        ${widget}

Kuvera Web Close Regulatory Disclosure
    Wait Until Element Is Visible  ${KU_W_close}
    Click Element  ${KU_W_close}
    
Verify Login Page
    Wait For Element Visbility  ${KU_W_loginPageTitle}
    Verify Element And Text  ${KU_W_loginPageTitle}  ${e_loginPageTitle}
    Go Back

Verify Signup Page
    Wait For Element Visbility  ${KU_W_signupPageTitle}
    Verify Element And Text  ${KU_W_signupPageTitle}  ${e_signupPageTitle}

Kuvera Web Logo Click	
    Wait For Element Visbility  ${KU_W_logo}	
    Click Element  ${KU_W_logo}    

Verify Google Play & Apple Store Icons
    Scroll Element Into View  ${KU_W_android_image}
    Verify Page Contains Image  ${KU_W_android_image}
    Verify Page Contains Image  ${KU_W_apple_image}

Verify Language Switch Login And Signup Link
    Verify Page Contains Element  ${KU_W_langSwitch}
    Verify Element And Text  ${KU_W_login}  ${e_login}
    Verify Element And Text  ${KU_W_signup}  ${e_signup}

Verify Page Contains Button
    [Arguments]  ${button}
    Page Should Contain Button  ${button}    

Header Navigation
    ${invest}  Get Json Values  $.MenuHeaders.h0  Resources/TestData/Headers.json
    ${loans}  Get Json Values  $.MenuHeaders.h1  Resources/TestData/Headers.json
    ${insure}  Get Json Values  $.MenuHeaders.h2  Resources/TestData/Headers.json
    ${remit}  Get Json Values  $.MenuHeaders.h3  Resources/TestData/Headers.json
    ${features}  Get Json Values  $.MenuHeaders.h4  Resources/TestData/Headers.json
    
    ${elem} =  Get Element Count  ${KU_W_headers}
    FOR  ${j}  IN RANGE  1  ${elem}+1
        ${headers} =  Get Text  xpath=//div[@class='b-header__content__middle']/a[${j}]
        Log to console  ${headers}
        Run keyword If  ['${headers}'] == ${invest}  Log To Console  PENDING
        ...    ELSE IF  ['${headers}'] == ${loans}   Verify PreLogin Loans Page
        ...    ELSE IF  ['${headers}'] == ${insure}  Verify PreLogin Insure Page
        ...    ELSE IF  ['${headers}'] == ${remit}  Verify PreLogin Remit Page
        ...    ELSE  Feature Sub Header Navigation
    END

Feature Sub Header Navigation
    Log To Console  InFeatures
    ${setAGoal}  Get Json Values  $.MenuHeaders.h4.fsh0  Resources/TestData/Headers.json
    ${tradeSmart}  Get Json Values  $.MenuHeaders.h4.fsh1  Resources/TestData/Headers.json
    ${familyAccount}  Get Json Values  $.MenuHeaders.h4.fsh2  Resources/TestData/Headers.json
    ${manageAccount}  Get Json Values  $.MenuHeaders.h4.fsh3  Resources/TestData/Headers.json
    ${taxHarvesting}  Get Json Values  $.MenuHeaders.h4.fsh4  Resources/TestData/Headers.json
    ${savesTaxes}  Get Json Values  $.MenuHeaders.h4.fsh5  Resources/TestData/Headers.json
    ${consolidate}  Get Json Values  $.MenuHeaders.h4.fsh6  Resources/TestData/Headers.json

    Log To Console  ${setAGoal}  
    FOR  ${k}  IN RANGE  1  7
        Log To Console  InsideForLoop
        Wait For Element Visbility  ${KU_W_featureLink}
        Click Element  ${KU_W_featureLink} 
        Sleep  5s
        ${subHeaders} =  Get Text  xpath=//div[@class='b-header__sub-content__feature']/a[${k}]
        Log to console  ${subHeaders}
        Run keyword If  ['${subHeaders}'] == ${setAGoal}  Verify PreLogin Set A Goal Page
        ...    ELSE IF  ['${subHeaders}'] == ${tradeSmart}   Verify PreLogin TradeSmart Page
        ...    ELSE IF  ['${subHeaders}'] == ${familyAccount}  Verify PreLogin Family Account Page 
        ...    ELSE IF  ['${subHeaders}'] == ${manageAccount}  Verify PreLogin Manage Account Page
        ...    ELSE IF  ['${subHeaders}'] == ${taxHarvesting}  Verify PreLogin Tax Harvesting Page
        ...    ELSE IF  ['${subHeaders}'] == ${savesTaxes}  Verify PreLogin Save Taxes Page
        ...    ELSE IF  ['${subHeaders}'] == ${consolidate}  Verify PreLogin Consolidate Page
        ...    ELSE  Log To Console  Test
    END


    
Close Web Application
    Close All Browsers
