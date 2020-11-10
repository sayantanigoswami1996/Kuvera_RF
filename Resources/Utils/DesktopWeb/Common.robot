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
    Page Should Contain Element      ${KU_W_langSwitch}
    Element Text Should Be           ${KU_W_login}               Log in
    Element Text Should Be           ${KU_W_signup}              Sign up
    Element Text Should Be           ${KU_W_coreaua_val}         ₹ 15,000
    Element Text Should Be           ${KU_W_coreaua_text}        Crore AUA     
    Element Text Should Be           ${KU_W_cities_val}          3 Lakh
    Element Text Should Be           ${KU_W_cities_text}         Goals
    Element Text Should Be           ${KU_W_trans_val}           1.8 Crore
    Element Text Should Be           ${KU_W_trans_text}          Transactions
    Verify Mutual Funds Widgets 
    Verify Features Widgets 
    Verify Summary Tab Widgets
    # Verify Fund Houses


Verify Mutual Funds Widgets  
    Element Text Should Be          ${KU_W_mf_welcomeTitle}     Investments Simplified
    Element Text Should Be          ${KU_W_mf_welcomeText}      First free Direct Mutual Fund investing platform. Zero fees, higher returns.
    Element Text Should Be          ${KU_W_mf_category}         Equity
    Element Text Should Be          ${KU_W_mf_subcategory}      All 
    Wait For Element Visbility      ${KU_W_fund_list} 
    Page Should Contain Element     ${KU_W_fund_list} 
    Element Text Should Be          ${KU_W_loginButton}         Log in
    Element Text Should Be          ${KU_W_signUpButton}        Sign up
    Page Should Contain Image       ${KU_W_mf_listIcon}
    Scroll Element Into View        ${KU_W_explore_MF}
    Page Should Contain Element     ${KU_W_explore_MF}
    Scroll Element Into View        ${KU_W_android_image}
    Page Should Contain Image       ${KU_W_android_image}
    Page Should Contain Image       ${KU_W_apple_image}
    Page Should Contain Element     ${KU_W_faqbot_icon}
    
Verify Features Widgets
    
    Scroll Element Into View        ${KU_W_exploreELSS}
    Element Text Should Be          ${KU_W_exploreELSS}            Explore ELSS funds
    Element Text Should Be          ${KU_W_startHarvest}         Start harvesting
    Element Text Should Be          ${KU_W_switchToday}            Switch Today
    Click Element                   ${KU_W_next_button} 
    sleep    5s
    Element Text Should Be          ${KU_W_upgrade_familyAccount}     Upgrade to family account     
    Element Text Should Be          ${KU_W_consolidate_track}          Consolidate & track
    Element Text Should Be          ${KU_W_manage_today}                   Manage Today
    Click Element                   ${KU_W_next_button}
    sleep    5s
    Element Text Should Be          ${KU_W_set_a_goal}                Set a goal
    Element Text Should Be          ${KU_W_send_money}                Send money

Verify Summary Tab Widgets

     Element Text Should Be              ${KU_W_summary_msg}          Earn up to 35% more in 20 years*
     Page Should Contain Link            ${KU_W_summary_learn}    
     Scroll Element Into View            ${KU_W_care_title}     
     Element Text Should Be              ${KU_W_care_title}           How much do we care?
     Scroll Element Into View            ${KU_W_care_info_mssg}
     Element Text Should Be              ${KU_W_care_info_mssg}       Our CEO, Gaurav Rastogi, invites you to share your questions, comments or feedback. Email him
     Page Should Contain Element         ${KU_W_advice_Title}          
     Element Text Should Be              ${KU_W_advice_content}       Our team’s successful money management experience, applied strategies and real-time data-driven approach ensure our recommendations are rooted in reality.
     Element Text Should Be              ${KU_W_advice_team}          More about our team
     Scroll Element Into View            ${KU_W_why_startInvesing}
     Element Text Should Be              ${KU_W_why_startInvesing}       Start investing
     Page Should Contain Element         ${KU_W_happyUsers}  
     Scroll Element Into View            ${KU_W_users_love}
     Element Text Should Be              ${KU_W_users_love}           Our users love us
     Element Text Should Be              ${KU_W_users_mssg}           We revolutionized the way India invests. With your feedback we are making it even better.
     Element Text Should Be              ${KU_W_earn_title}           Earn up to 1.5% more returns*
     Element Text Should Be              ${KU_W_earn_mssg}            We pioneered commission free Direct Plan investing.
Earn from our expertise and don't pay commission ever.
     Element Text Should Be              ${KU_W_earn_learnLink}       Learn how!
     Element Text Should Be              ${KU_W_start_investButton}     Start Investing

 Verify Fund Houses





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
    ${element} =     Get Line      ${textFileContent}   0
    ${leftValue} =  Fetch From Left      ${element}      :
    ${rightValue} =  Fetch From Right    ${element}      :
    Log To Console  ${leftValue}
    Log To Console  ${rightValue}


Close Web Application
    Close    Application