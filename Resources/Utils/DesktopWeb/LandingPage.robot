*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Widgets
    Verify Mutual Funds Widgets 
    Verify Fund Houses
    Verify Features Widgets 
    Verify Summary Tab Widgets

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
        Run keyword If  ['${headers}'] == ${invest}  Log To Console  InProgess
        ...    ELSE IF  ['${headers}'] == ${loans}   Verify PreLogin Loans Page
        ...    ELSE IF  ['${headers}'] == ${insure}  Verify PreLogin Insure Page
        ...    ELSE IF  ['${headers}'] == ${remit}  Verify PreLogin Remit Page
        ...    ELSE   Log To Console  Covered in other test
    END

Feature Sub Header Navigation
    ${setAGoal}  Get Json Values  $.MenuHeaders.h4.fsh0  Resources/TestData/Headers.json
    ${tradeSmart}  Get Json Values  $.MenuHeaders.h4.fsh1  Resources/TestData/Headers.json
    ${familyAccount}  Get Json Values  $.MenuHeaders.h4.fsh2  Resources/TestData/Headers.json
    ${manageAccount}  Get Json Values  $.MenuHeaders.h4.fsh3  Resources/TestData/Headers.json
    ${taxHarvesting}  Get Json Values  $.MenuHeaders.h4.fsh4  Resources/TestData/Headers.json
    ${savesTaxes}  Get Json Values  $.MenuHeaders.h4.fsh5  Resources/TestData/Headers.json
    ${consolidate}  Get Json Values  $.MenuHeaders.h4.fsh6  Resources/TestData/Headers.json
    FOR  ${k}  IN RANGE  1  8
        Wait For Element Visibility  ${KU_W_featureLink}
        Click Element  ${KU_W_featureLink} 
        Sleep  1s
        ${subHeaders} =  Get Text  xpath=//div[@class='b-header__sub-content__feature']/a[${k}]
        Run keyword If  ['${subHeaders}'] == ${setAGoal}  Verify PreLogin Set A Goal Page
        ...    ELSE IF  ['${subHeaders}'] == ${tradeSmart}   Verify PreLogin TradeSmart Page
        ...    ELSE IF  ['${subHeaders}'] == ${familyAccount}  Verify PreLogin Family Account Page 
        ...    ELSE IF  ['${subHeaders}'] == ${manageAccount}  Verify PreLogin Manage Account Page
        ...    ELSE IF  ['${subHeaders}'] == ${taxHarvesting}  Verify PreLogin Tax Harvesting Page
        ...    ELSE IF  ['${subHeaders}'] == ${savesTaxes}  Verify PreLogin Save Taxes Page
        ...    ELSE IF  ['${subHeaders}'] == ${consolidate}  Verify PreLogin Consolidate Page
        ...    ELSE  Log To Console  Completed
    END

Verify Mutual Funds Widgets
    Wait For Element Visibility  ${KU_W_mf_welcomeTitle}
    Verify Language Switch Login And Signup Link
    Verify Element And Text  ${KU_W_mf_welcomeTitle}  ${e_mfWelcomeTitle}
    Verify Element And Text  ${KU_W_mf_welcomeText}  ${e_mf_welcomeText}
    Verify Element And Text  ${KU_W_mf_category}  ${e_mfCategory} 
    Verify Element And Text  ${KU_W_mf_subcategory}  ${e_mfSubCategory}
    Wait For Element Visibility  ${KU_W_fund_list} 
    Verify Page Contains Element  ${KU_W_fund_list} 
    Verify Element And Text  ${KU_W_loginButton}  ${e_login}
    Verify Element And Text  ${KU_W_signUpButton}  ${e_signup}
    Verify Element And Text  ${KU_W_coreaua_val}  ${e_coreAUAValue}
    Verify Element And Text  ${KU_W_coreaua_text}  ${e_coreAUAText}       
    Verify Element And Text  ${KU_W_cities_val}  ${e_citiesValue} 
    Verify Element And Text  ${KU_W_cities_text}  ${e_citiesText}
    Verify Element And Text  ${KU_W_trans_val}  ${e_transValue}
    Verify Element And Text  ${KU_W_trans_text}  ${e_transText}
    Verify Page Contains Image  ${KU_W_mf_listIcon}
    Scroll Element Into View  ${KU_W_explore_MF}
    Verify Page Contains Element  ${KU_W_explore_MF}
    Verify Google Play & Apple Store Icons
    Verify Page Contains Element  ${KU_W_faqbot_icon}

Verify Features Widgets
    # Tax Saver
    Scroll Element Into View  ${KU_W_exploreELSS}
    Verify Element And Text  ${KU_W_exploreELSS}  ${e_exploreELSSfundsBtn}
    Wait For Element Visibility   ${KU_W_exploreELSS}
    Click Element  ${KU_W_exploreELSS}
    Wait For Element Visibility   ${KU_W_searchBarForFunds}
    Verify Page Contains Element  ${KU_W_searchBarForFunds}
    Go Back
    Verify Element And Text  ${KU_W_ELSS_learnMoreLink}  ${e_learnMoreLinkText}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_ELSS_learnMoreLink}
    Click Element  ${KU_W_ELSS_learnMoreLink}
    Switch To Window Verify Title And Close   ${e_feature_st_pageTitleText}
    Sleep  1s
    # Tax Harvesting
    Verify Element And Text  ${KU_W_startHarvest}  ${e_startHarvestingBtn} 
    Wait For Element Visibility   ${KU_W_startHarvest}
    Click Element   ${KU_W_startHarvest} 
    Wait For Element Visibility  ${KU_W_feature_th_screenTitle}   
    Verify Element And Text  ${KU_W_feature_th_screenTitle}  ${e_feature_th_TitleText} 
    Go Back
    Verify Element And Text  ${KU_W_harvest_learnMoreLink}  ${e_learnMoreLinkText}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_harvest_learnMoreLink}
    Click Element  ${KU_W_harvest_learnMoreLink}
    Switch To Window Verify Title And Close  ${e_feature_th_learnMoreTitle}
    Sleep  1s
    # Switch Today
    Verify Element And Text  ${KU_W_switchToday}  ${e_switchTodayBtn}
    Wait For Element Visibility  ${KU_W_switchToday}
    Click Element  ${KU_W_switchToday}
    Wait For Element Visibility  ${KU_W_feature_ts_title} 
    Verify Element And Text  ${KU_W_feature_ts_title}  ${e_feature_ts_titleText}
    Go Back
    Verify Element And Text  ${KU_W_switchToday_learnMoreLink}  ${e_learnMoreLinkText}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_switchToday_learnMoreLink}
    Click Element  ${KU_W_switchToday_learnMoreLink}
    Switch To Window Verify Title And Close  ${e_switchTodayLinkTitle} 
    Sleep  1s
    Wait For Element Visibility  ${KU_W_next_button} 
    Click Element  ${KU_W_next_button} 
    # Family Account
    Sleep  1s
    Verify Element And Text  ${KU_W_upgrade_familyAccount}    ${e_upgradeFamilyAccountBtn}
    Wait For Element Visibility  ${KU_W_upgrade_familyAccount}
    Click Element  ${KU_W_upgrade_familyAccount}
    Wait For Element Visibility  ${KU_W_feature_fa_screenTitle}
    Verify Element And Text  ${KU_W_feature_fa_screenTitle}  ${e_feature_fa_screenTitle}
    Go Back
    Verify Element And Text  ${KU_W_familyAccount_learnMoreLink}  ${e_learnMoreLinkText}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_familyAccount_learnMoreLink}
    Click Element  ${KU_W_familyAccount_learnMoreLink}
    Switch To Window Verify Title And Close  ${e_familyAccountLinkTitle} 
    Sleep  1s
    Wait For Element Visibility  ${KU_W_next_button}
    Click Element  ${KU_W_next_button}
    Sleep  1s
    # Automated Tracking
    Verify Element And Text  ${KU_W_consolidate_track}  ${e_consolidateTrackBtn}
    Wait For Element Visibility  ${KU_W_consolidate_track}
    Click Element  ${KU_W_consolidate_track}
    Verify Login Page
    Sleep  1s
    Wait For Element Visibility  ${KU_W_next_button}
    Click Element  ${KU_W_next_button}
    Sleep  1s
    # Manage Today
    Verify Element And Text  ${KU_W_manage_today}  ${e_manageTodayBtn}
    Wait For Element Visibility  ${KU_W_manage_today}
    Sleep  1s
    Click Element  ${KU_W_manage_today}
    Wait For Element Visibility  ${KU_W_feature_manageAccountTitle}  
    Verify Element And Text  ${KU_W_feature_manageAccountTitle}   ${e_feature_manageAccountTitleText}
    Go Back
    Sleep  1s
    Click Element  ${KU_W_next_button} 
    Wait For Element Visibility  ${KU_W_manageToday_learnMoreLink}
    Verify Element And Text  ${KU_W_manageToday_learnMoreLink}  ${e_learnMoreLinkText}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_manageToday_learnMoreLink}
    Click Element  ${KU_W_manageToday_learnMoreLink}
    Switch To Window Verify Title And Close    ${e_manageTodayLinkTitle}  
    Sleep  1s
    Click Element  ${KU_W_next_button}
    Sleep  1s
    #  Set A Goal
    Wait For Element Visibility  ${KU_W_set_a_goal}
    Verify Element And Text  ${KU_W_set_a_goal}  ${e_setAGoalBtn} 
    Wait For Element Visibility  ${KU_W_set_a_goal}
    Sleep  1s
    Click Element  ${KU_W_set_a_goal}
    Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Go Back
    Sleep  1s
    Click Element  ${KU_W_next_button} 
    Wait For Element Visibility  ${KU_W_setAGoal_learnMoreLink}
    Verify Element And Text  ${KU_W_setAGoal_learnMoreLink}  ${e_learnMoreLinkText}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_setAGoal_learnMoreLink}
    Click Element  ${KU_W_setAGoal_learnMoreLink}
    Switch To Window Verify Title And Close   ${e_setAGoalLinkTitle}  
    Sleep  1s
    Click Element  ${KU_W_next_button}
    Sleep  1s
    # Send Money
    Verify Element And Text  ${KU_W_send_money}  ${e_sendMoneyBtn}
    Wait For Element Visibility  ${KU_W_send_money}
    Sleep  1s
    Click Element  ${KU_W_send_money}
    Wait For Element Visibility  ${KU_W_remit_screenTitle}
    Verify Element And Text  ${KU_W_remit_screenTitle}  ${e_remit_screenTitle}
    Go Back
    Sleep  1s
    Click Element  ${KU_W_next_button} 
    Click Element  ${KU_W_next_button} 
    Wait For Element Visibility  ${KU_W_sendMoney_learnMoreLink}
    Verify Element And Text  ${KU_W_sendMoney_learnMoreLink}  ${e_learnMoreLinkText}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_sendMoney_learnMoreLink}
    Click Element  ${KU_W_sendMoney_learnMoreLink}
    Switch To Window Verify Title And Close  ${e_sendMoneyLinkTitle}
    Sleep  1s

Verify Summary Tab Widgets
    Verify Element And Text  ${KU_W_summary_msg}  ${e_summaryHeader}
    Page Should Contain Link  ${KU_W_summary_learn}         
    Scroll Element Into View  ${KU_W_care_title}            
    Verify Element And Text  ${KU_W_care_title}  ${e_careTitle}
    Scroll Element Into View  ${KU_W_care_info_msg}
    Verify Element And Text  ${KU_W_care_info_msg}  ${e_careInfoMsg} 
    Verify Page Contains Link  ${KU_W_careInfoEmailLink}  ${e_emailLink}
    Verify Page Contains Element  ${KU_W_advice_Title}          
    Verify Element And Text  ${KU_W_advice_content}  ${e_adviceContent} 
    Verify Page Contains Link  ${KU_W_advice_team}  ${e_careTitle}
    Scroll Element Into View  ${KU_W_why_startInvesing}
    # Below 'Start investing' should be changed to ${e_startInvestingBtn} once bug is fixed
    Verify Element And Text  ${KU_W_why_startInvesing}     Start investing 
    Verify Page Contains Element  ${KU_W_happyUsers}            
    Scroll Element Into View  ${KU_W_users_love}
    Verify Element And Text  ${KU_W_users_love}  ${e_usersLove}
    Verify Element And Text  ${KU_W_users_msg}  ${e_usersMsg}
    Verify Element And Text  ${KU_W_earn_title}  ${e_earnTitle} 
    Scroll Element Into View  ${KU_W_earn_msg}
    Verify Element And Text  ${KU_W_earn_msg}  ${e_earnMsg} 
    Verify Element And Text  ${KU_W_earn_learnLink}  ${e_earnLearnLink} 
    Scroll Element Into View  ${KU_W_start_investButton}
    Verify Element And Text  ${KU_W_start_investButton}  ${e_startInvestingBtn}

Verify Fund Houses
   Scroll Element Into View  ${KU_W_fundHouse_title}
   @{fundHouses_list1} =  Get WebElements  ${KU_W_fundHouses_firstColumn}
   # Validation of Fund Houses List on the first column
   Compare Lists  ${fundHouses_list1}  ${e_fndHouse_firstColumn}
   # Validation of Fund Houses List on the second column
   @{fundHouses_list2} =  Get WebElements  ${KU_W_fundHouses_secondColumn}
   Compare Lists  ${fundHouses_list2}  ${e_fndHouse_secondColumn}