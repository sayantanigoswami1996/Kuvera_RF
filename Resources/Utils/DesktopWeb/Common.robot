*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Library     String
Library     OperatingSystem
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot

*** Keywords ***

Wait For Element Visbility
    [Arguments]                      ${element}
    Wait Until Element Is Visible    ${element}    timeout=30

Launch URL
    Open Browser    ${loginURL}    ${BROWSER}

Welcome Page Should Be Open
    Title Should Be    ${KU_W_title}

Get Json Values
    [Arguments]     ${jsonPath}            ${jsonFilePath}
    ${jsonFile}     Load JSON From File    ${jsonFilePath}
    ${jsonValue}    Get Value From Json    ${jsonFile}        ${jsonPath}
    [Return]        ${jsonValue}

Verify Widgets From Json
    ${jsonWidgetsFile}     Load JSON From File    /Users/prathijamoolya/Kuvera/Automation/Kuvera_RF/Resources/TestData/Widgets.json
    ${jsonWidgetsValue}    Get Value From Json    ${jsonWidgetsFile}                                                                   $.Widgets
      # Log To Console         ${jsonWidgetsValue}
    ${json_data}           Set Variable           ${jsonWidgetsValue} 
    ${json_data1}          Parse Json             ${json_data}
    Log To Console         ${json_data1}          
   # Page Should Contain Element        ${widget}

Kuvera Web Logo Click
    Wait Until Element Is Visible    ${KU_W_close}
    Click Element                    ${KU_W_close}
    Wait Until Element Is Visible    ${KU_W_logo}
    Click Element                    ${KU_W_logo}

Reading CSV File
    [Arguments]                      ${CSVFilePath}
    @{widget}                        Read CSV File     ${CSVFilePath}
    FOR                              ${widget} IN      @{widget}
    Sleep                            3s
    Page Should Contain ${widget}
    Log To Console                   ${widget}
    END 

Verify Widgets
    Page Should Contain Element    ${KU_W_langSwitch}
    Element Text Should Be         ${KU_W_login}             Log in
    Element Text Should Be         ${KU_W_signup}            Sign up
    Element Text Should Be         ${KU_W_mf_category}       Equity
    Element Text Should Be         ${KU_W_mf_subcategory}    All
    Wait For Element Visbility     ${KU_W_fund_list} 
    Page Should Contain Element    ${KU_W_fund_list} 

Header Navigation
    @{elem} =        Get WebElements    xpath=//div[@class='b-header__content__middle']/a
    FOR              ${item}            IN                                                   @{elem}    
    Sleep            5s
    Click Element    ${item}
    END

Landing Page Tabs Navigation
    @{tabs} =        Get WebElements    xpath=//div[@class='b-dynamic-tab-header b-widget-tab__tab-header']
    FOR              ${item}            IN                                                                     @{tabs}    
    Sleep            5s
    Click Element    ${item}
    END

 Move To Explore Funds
                          Wait For Element Visbility    ${KU_exploreELSS} 
                          Scroll Element Into View      ${KU_exploreELSS} 

Split String By Adding Separator
    [Arguments]       ${strVar}              ${delimeter}
    ${strValue} =     String.Split String    ${strVar}       ${delimeter}

Get Line From Text File
    ${textFileContent} =    Get File                          Resources/TestData/Sample.txt
    ${fileLineCount}    Set Variable    Get Line Count  ${textFileContent}
    Log To Console     ${fileLineCount}
   # @{elementList} =	Get Line	${textFileContent}	
   # Log To Console ${elementList}


Close Web Application
    Close    Application