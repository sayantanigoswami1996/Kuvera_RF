*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Library     String
Library     OperatingSystem
Library     Collections
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot

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
    Wait Until Element Is Visible  ${KU_W_bannerFrame}  timeout=30
    Switch To Frame  ${KU_W_bannerFrame}
    Wait For Element Visbility  ${KU_W_bannerCloseBtn}
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

Kuvera Web Logo Click
    Wait Until Element Is Visible  ${KU_W_close}
    Click Element  ${KU_W_close}
    Wait Until Element Is Visible  ${KU_W_logo}
    Click Element  ${KU_W_logo}
    Sleep  10s

Verify Login Page
    Wait For Element Visbility  ${KU_W_loginPageTitle}
    Verify Element And Text  ${KU_W_loginPageTitle}  ${e_loginPage}
    Go Back

Verify Google Play & Apple Store Icons
    Scroll Element Into View  ${KU_W_android_image}
    Verify Page Contains Image  ${KU_W_android_image}
    Verify Page Contains Image  ${KU_W_apple_image}

Verify Language Switch Login And Signup Link
    Verify Page Contains Element  ${KU_W_langSwitch}
    Verify Element And Text  ${KU_W_login}  ${e_login}
    Verify Element And Text  ${KU_W_signup}  ${e_signup}

Header Navigation
    ${invest}  Get Json Values  $.MenuHeaders[0]  Resources/TestData/Headers.json
    ${loans}  Get Json Values  $.MenuHeaders[1]  Resources/TestData/Headers.json
    ${insure}  Get Json Values  $.MenuHeaders[2]  Resources/TestData/Headers.json
    ${remit}  Get Json Values  $.MenuHeaders[3]  Resources/TestData/Headers.json
    ${features}  Get Json Values  $.MenuHeaders[4]  Resources/TestData/Headers.json
  
    ${elem} =  Get Element Count  ${KU_W_headers}

    FOR  ${j}  IN RANGE  1  ${elem}+1
        ${cds_text} =  Get Text  xpath=//div[@class='b-header__content__middle']/a[${j}]
        #Log to console  ${cds_text}
        Run keyword If  ['${cds_text}'] == ${invest}  Log To Console  PENDING
        ...    ELSE IF  ['${cds_text}'] == ${loans}  Verify PreLogin Loan Page
        ...    ELSE IF  ['${cds_text}'] == ${insure}  Verify PreLogin Insure Page
        ...    ELSE IF  ['${cds_text}'] == ${remit}  Verify PreLogin Remit Page
        ...    ELSE  Log To Console  test
      END

Close Web Application
    Close All Browsers
