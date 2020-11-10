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

Verfiy Element And Text
    [Arguments]  ${element}  ${text}
    Element Text Should Be  ${element}  ${text}

Verify Widgets
    Page Should Contain Element    ${KU_W_langSwitch}
    Verfiy Element And Text        ${KU_W_login}             Log in
    Element Text Should Be         ${KU_W_signup}            Sign up
    Element Text Should Be         ${KU_W_mf_category}       Equity
    Element Text Should Be         ${KU_W_mf_subcategory}    All
    Wait For Element Visbility     ${KU_W_fund_list} 
    Page Should Contain Element    ${KU_W_fund_list} 

Verify Mutual Funds Widgets
    Element Text Should Be         ${KU_W_mf_welcomeTitle}    Investments Simplified
    Element Text Should Be         ${KU_W_mf_welcomeText}     First free Direct Mutual Fund investing platform. Zero fees, higher returns.
    Element Text Should Be         ${KU_W_mf_category}        Equity
    Element Text Should Be         ${KU_W_mf_subcategory}     All 
    Wait For Element Visbility     ${KU_W_fund_list} 
    Page Should Contain Element    ${KU_W_fund_list} 
    Element Text Should Be         ${KU_W_loginButton}        Log in
    Element Text Should Be         ${KU_W_signUpButton}       Sign up
    Page Should Contain Image      ${KU_W_mf_listIcon}
    Scroll Element Into View       ${KU_W_explore_MF}
    Page Should Contain Element    ${KU_W_explore_MF}
    Scroll Element Into View       ${KU_W_android_image}
    Page Should Contain Image      ${KU_W_android_image}
    Page Should Contain Image      ${KU_W_apple_image}
    Page Should Contain Element    ${KU_W_faqbot_icon}



Header Navigation
    @{elem} =    Get WebElements    xpath=//div[@class='b-header__content__middle']/a
    ${h1}        Get Json Values    $.MenuHeaders[0]                                     Resources/TestData/Headers copy.json
    ${h2}        Get Json Values    $.MenuHeaders[1]                                     Resources/TestData/Headers copy.json
    ${h3}        Get Json Values    $.MenuHeaders[2]                                     Resources/TestData/Headers copy.json
    ${h4}        Get Json Values    $.MenuHeaders[3]                                     Resources/TestData/Headers copy.json
    ${h5}        Get Json Values    $.MenuHeaders[4]                                     Resources/TestData/Headers copy.json

    FOR               ${item}                      IN                @{elem}    
    Sleep             5s                           
    Run keyword If    ['${item.text}'] == ${h1}    Log To Console    ${h1}
    ELSE 
    Click Element     ${item} 
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
    [Arguments]      ${strVar}              ${delimeter}
    ${strValue} =    String.Split String    ${strVar}       ${delimeter}

Get Line From Text File
    ${textFileContent} =    Get File            Resources/TestData/Sample.txt
    ${element} =            Get Line            ${textFileContent}               0
    ${leftValue} =          Fetch From Left     ${element}                       :
    ${rightValue} =         Fetch From Right    ${element}                       :
    Log To Console          ${leftValue}
    Log To Console          ${rightValue} 


Close Web Application
    Close    Application