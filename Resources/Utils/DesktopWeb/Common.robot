*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Library     String
Library     OperatingSystem
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot

*** Keywords ***

Launch URL
    Open Browser    ${loginURL}    ${BROWSER}
     Maximize Browser Window

Welcome Page Should Be Open
    Title Should Be    ${KU_W_title}

Wait For Element Visbility
    [Arguments]                      ${element}
    Wait Until Element Is Visible    ${element}    timeout=30

Verify Element And Text
    [Arguments]               ${element}    ${text}
    Element Text Should Be    ${element}    ${text}

Verify Page Contains Element
    [Arguments]                    ${element}    
    Page Should Contain Element    ${element}    

Verify Page Contains Image
    [Arguments]                  ${image}    
    Page Should Contain Image    ${image}    

Scroll Untill View
    [Arguments]                 ${element}     
    Scroll Element Into View    ${element} 

Verify Page Contains Link
    [Arguments]                 ${link}      ${text}
    Page Should Contain Link    ${link}      ${text}

Get Json Values
    [Arguments]     ${jsonPath}            ${jsonFilePath}
    ${jsonFile}     Load JSON From File    ${jsonFilePath}
    ${jsonValue}    Get Value From Json    ${jsonFile}        ${jsonPath}
    [Return]        ${jsonValue}

Verify Widgets From Json
    ${jsonWidgetsFile}     Load JSON From File    /Users/prathijamoolya/Kuvera/Automation/Kuvera_RF/Resources/TestData/Widgets.json
    ${jsonWidgetsValue}    Get Value From Json    ${jsonWidgetsFile}                                                                   $.Widgets
<<<<<<< HEAD
      # Log To Console         ${jsonWidgetsValue}
    ${json_data}           Set Variable           ${jsonWidgetsValue} 
    ${json_data1}          Parse Json             ${json_data}
    Log To Console         ${json_data1}          
   # Verify Page Contains Element        ${widget}
=======
    ${json_data}           Set Variable           ${jsonWidgetsValue} 
    Log To Console         ${json_data1}          
    # Verify Page Contains Element        ${widget}
>>>>>>> KU_RF_PE_PHASE1

Kuvera Web Logo Click
    Wait Until Element Is Visible    ${KU_W_close}
    Click Element                    ${KU_W_close}
    Wait Until Element Is Visible    ${KU_W_logo}
    Click Element                    ${KU_W_logo}

Header Navigation
    @{elem} =    Get WebElements    ${KU_W_headers}
    ${h1}        Get Json Values    $.MenuHeaders[0]    Resources/TestData/Headers.json
    ${h2}        Get Json Values    $.MenuHeaders[1]    Resources/TestData/Headers.json
    ${h3}        Get Json Values    $.MenuHeaders[2]    Resources/TestData/Headers.json
    ${h4}        Get Json Values    $.MenuHeaders[3]    Resources/TestData/Headers.json
    ${h5}        Get Json Values    $.MenuHeaders[4]    Resources/TestData/Headers.json

    FOR               ${item}                      IN                @{elem}    
    Sleep             5s                           
    Run keyword If    ['${item.text}'] == ${h1}    Click Element  ${item}
    ...  ELSE  Click Element  ${item}
    END

Verify Widgets
    Verify Mutual Funds Widgets 
    Verify Fund Houses
    Verify Features Widgets 
    Verify Summary Tab Widgets

Verify Mutual Funds Widgets
    Verify Page Contains Element    ${KU_W_langSwitch}
    Verify Element And Text         ${KU_W_login}              ${e_login}
    Verify Element And Text         ${KU_W_signup}             ${e_signup}
    Verify Element And Text         ${KU_W_mf_welcomeTitle}    ${e_mfWelcomeTitle}
    Verify Element And Text         ${KU_W_mf_welcomeText}     ${e_mf_welcomeText}
    Verify Element And Text         ${KU_W_mf_category}        ${e_mfCategory} 
    Verify Element And Text         ${KU_W_mf_subcategory}     ${e_mfSubCategory}
    Wait For Element Visbility      ${KU_W_fund_list} 
    Verify Page Contains Element    ${KU_W_fund_list} 
    Verify Element And Text         ${KU_W_loginButton}        ${e_login}
    Verify Element And Text         ${KU_W_signUpButton}       ${e_signup}
    Verify Element And Text           ${KU_W_coreaua_val}         ${e_coreAUAValue}
    Verify Element And Text           ${KU_W_coreaua_text}        ${e_coreAUAText}     
    Verify Element And Text           ${KU_W_cities_val}          ${e_citiesValue} 
    Verify Element And Text           ${KU_W_cities_text}         ${e_citiesText}
    Verify Element And Text           ${KU_W_trans_val}           ${e_transValue}
    Verify Element And Text           ${KU_W_trans_text}          ${e_transText}
    Verify Page Contains Image      ${KU_W_mf_listIcon}
    Scroll Element Into View        ${KU_W_explore_MF}
    Verify Page Contains Element    ${KU_W_explore_MF}
    Scroll Element Into View        ${KU_W_android_image}
    Verify Page Contains Image      ${KU_W_android_image}
    Verify Page Contains Image      ${KU_W_apple_image}
    Verify Page Contains Element    ${KU_W_faqbot_icon}

Verify Features Widgets

    Scroll Element Into View    ${KU_W_exploreELSS}
    Verify Element And Text     ${KU_W_exploreELSS}              ${e_exploreELSSfundsBtn}
    Verify Element And Text     ${KU_W_startHarvest}             ${e_startHarvestingBtn} 
    Verify Element And Text     ${KU_W_switchToday}              ${e_switchTodayBtn}
    Click Element               ${KU_W_next_button} 
    sleep                       1s
    Verify Element And Text     ${KU_W_upgrade_familyAccount}    ${e_upgradeFamilyAccountBtn}
    Verify Element And Text     ${KU_W_consolidate_track}        ${e_consolidateTrackBtn}
    Verify Element And Text     ${KU_W_manage_today}             ${e_manageTodayBtn}
    Click Element               ${KU_W_next_button}
    sleep                       1s
    Verify Element And Text     ${KU_W_set_a_goal}               ${e_setAGoalBtn} 
    Verify Element And Text     ${KU_W_send_money}               ${e_sendMoneyBtn}

Verify Summary Tab Widgets
    Verify Element And Text         ${KU_W_summary_msg}           ${e_summaryHeader}
    Page Should Contain Link        ${KU_W_summary_learn}         
    Scroll Element Into View        ${KU_W_care_title}            
    Verify Element And Text         ${KU_W_care_title}            ${e_careTitle}
    Scroll Element Into View        ${KU_W_care_info_msg}
    Verify Element And Text         ${KU_W_care_info_msg}         ${e_careInfoMsg} 
    Verify Page Contains Link       ${KU_W_careInfoEmailLink}     ${e_emailLink}
    Verify Page Contains Element    ${KU_W_advice_Title}          
    Verify Element And Text         ${KU_W_advice_content}        ${e_adviceContent} 
    Verify Page Contains Link       ${KU_W_advice_team}           ${e_careTitle}
    Scroll Element Into View        ${KU_W_why_startInvesing}
    # Below 'Start investing' should be changed to ${e_startInvestingBtn} once bug is fixed
    Verify Element And Text         ${KU_W_why_startInvesing}     Start investing 
    Verify Page Contains Element    ${KU_W_happyUsers}            
    Scroll Element Into View        ${KU_W_users_love}
    Verify Element And Text         ${KU_W_users_love}            ${e_usersLove}
    Verify Element And Text         ${KU_W_users_msg}             ${e_usersMsg}
    Verify Element And Text         ${KU_W_earn_title}            ${e_earnTitle} 
    Scroll Element Into View        ${KU_W_earn_msg}
    Verify Element And Text         ${KU_W_earn_msg}              ${e_earnMsg} 
    Verify Element And Text         ${KU_W_earn_learnLink}        ${e_earnLearnLink} 
    Scroll Element Into View        ${KU_W_start_investButton}
    Verify Element And Text         ${KU_W_start_investButton}    ${e_startInvestingBtn}

Verify Fund Houses
    Scroll Element Into View    ${KU_W_fundHouse_title}
    #Validation of Fund Houses List on the first column

    @{fundHouses_list1} =       Get WebElements              ${KU_W_fundHouses_firstColumn}
    FOR                         ${actualFndHouses_1}         IN                                @{fundHouses_list1}
    ${actualFundList1Item}      Set Variable                 ${actualFndHouses_1.text}
    END

    FOR                         ${expectedFndHousesList1}    IN                                @{e_fndHouse_firstColumn}
    ${expectedFundList1Item}    Set Variable                 ${expectedFndHousesList1}
    END
    Should be equal             ${actualFundList1Item}       ${expectedFundList1Item}          
    
    #Lists Should Be Equal    ${fundHouses_list1}    ${List_Of_States_USA-Temp}
    #Validation of Fund Houses List on the second column

    @{fundHouses_list2} =       Get WebElements              ${KU_W_fundHouses_secondColumn}
    FOR                         ${actualFndHouses_2}         IN                                 @{fundHouses_list2}
    ${actualFundList2Item}      Set Variable                 ${actualFndHouses_2.text}
    END
    FOR                         ${expectedFndHousesList2}    IN                                 @{e_fndHouse_secondColumn} 
    ${expectedFundList2Item}    Set Variable                 ${expectedFndHousesList2}
    END
    Should be equal             ${actualFundList2Item}       ${expectedFundList2Item} 

Close Web Application
    Close    Application