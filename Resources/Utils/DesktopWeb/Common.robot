*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Library     String
Library     OperatingSystem
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot

*** Keywords ***


Verify Element And Text
    [Arguments]               ${element}    ${text}
    Element Text Should Be    ${element}    ${text}
Verify Page Contains Element
    [Arguments]                    ${element}
    Page Should Contain Element    ${element}
Verify Page Contains Image
    [Arguments]                  ${image}
    Page Should Contain Image    ${image}
Verify Page Contains Link
     [Arguments]                  ${link}
    Page Should Contain Link      ${link} 
Scroll Untill View
    [Arguments]                 ${element}
    Scroll Element Into View    ${element}

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
   # Verify Page Contains Element        ${widget}

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
    Verify Page Contains Element      ${KU_W_langSwitch}
    Verify Element And Text           ${KU_W_login}               Log in
    Verify Element And Text          ${KU_W_signup}              Sign up
    Verify Element And Text          ${KU_W_coreaua_val}         ₹ 15,000
    Verify Element And Text          ${KU_W_coreaua_text}        Crore AUA     
    Verify Element And Text          ${KU_W_cities_val}          3 Lakh
    Verify Element And Text          ${KU_W_cities_text}         Goals
    Verify Element And Text          ${KU_W_trans_val}           1.8 Crore
    Verify Element And Text          ${KU_W_trans_text}          Transactions
    Verify Mutual Funds Widgets 
    Verify Fund Houses
    Verify Features Widgets 
    Verify Summary Tab Widgets
    


Verify Mutual Funds Widgets  
    Verify Element And Text         ${KU_W_mf_welcomeTitle}     Investments Simplified
    Verify Element And Text         ${KU_W_mf_welcomeText}      First free Direct Mutual Fund investing platform. Zero fees, higher returns.
    Verify Element And Text         ${KU_W_mf_category}         Equity
    Verify Element And Text         ${KU_W_mf_subcategory}      All 
    Wait For Element Visbility      ${KU_W_fund_list} 
    Verify Page Contains Element     ${KU_W_fund_list} 
    Verify Element And Text         ${KU_W_loginButton}         Log in
    Verify Element And Text         ${KU_W_signUpButton}        Sign up
    Verify Page Contains Image       ${KU_W_mf_listIcon}
    Scroll Untill View        ${KU_W_explore_MF}
    Verify Page Contains Element     ${KU_W_explore_MF}
    Scroll Untill View        ${KU_W_android_image}
    Verify Page Contains Image       ${KU_W_android_image}
    Verify Page Contains Image     ${KU_W_apple_image}
    Verify Page Contains Element     ${KU_W_faqbot_icon}
    
Verify Features Widgets
    
    Scroll Untill View        ${KU_W_exploreELSS}
    Verify Element And Text         ${KU_W_exploreELSS}            Explore ELSS funds
    Verify Element And Text         ${KU_W_startHarvest}         Start harvesting
    Verify Element And Text         ${KU_W_switchToday}            Switch Today
    Click Element                   ${KU_W_next_button} 
    sleep     1s
    Verify Element And Text         ${KU_W_upgrade_familyAccount}     Upgrade to family account 
    Verify Element And Text         ${KU_W_consolidate_track}    Consolidate & track
    Verify Element And Text         ${KU_W_manage_today}              Manage Today
    Click Element                   ${KU_W_next_button}
    sleep     1s
    Verify Element And Text         ${KU_W_set_a_goal}            Set a goal
    Verify Element And Text         ${KU_W_send_money}            Send money

Verify Summary Tab Widgets

     Verify Element And Text             ${KU_W_summary_msg}          Earn up to 35% more in 20 years*
     Verify Page Contains Link            ${KU_W_summary_learn}    
     Scroll Untill View            ${KU_W_care_title}     
     Verify Element And Text             ${KU_W_care_title}           How much do we care?
     Scroll Untill View            ${KU_W_care_info_mssg}
     Verify Element And Text             ${KU_W_care_info_mssg}       Our CEO, Gaurav Rastogi, invites you to share your questions, comments or feedback. Email him
     Verify Page Contains Element         ${KU_W_advice_Title}          
     Verify Element And Text             ${KU_W_advice_content}       Our team’s successful money management experience, applied strategies and real-time data-driven approach ensure our recommendations are rooted in reality.
     Verify Element And Text             ${KU_W_advice_team}          More about our team
     Scroll Untill View            ${KU_W_why_startInvesing}
     Verify Element And Text             ${KU_W_why_startInvesing}       Start investing
     Verify Page Contains Element         ${KU_W_happyUsers}  
     Scroll Untill View            ${KU_W_users_love}
     Verify Element And Text             ${KU_W_users_love}           Our users love us
     Verify Element And Text             ${KU_W_users_mssg}           We revolutionized the way India invests. With your feedback we are making it even better.
     Verify Element And Text             ${KU_W_earn_title}           Earn up to 1.5% more returns*
     Scroll Untill View            ${KU_W_earn_mssg}
     Verify Element And Text             ${KU_W_earn_mssg}            We pioneered commission free Direct Plan investing.\nEarn from our expertise and don't pay commission ever.
     Verify Element And Text             ${KU_W_earn_learnLink}         Learn how!
     Scroll Untill View            ${KU_W_start_investButton}
     Verify Element And Text             ${KU_W_start_investButton}     Start Investing

Verify Fund Houses
        Scroll Untill View            ${KU_W_fundHouse_title}

        #Validation of Fund Houses List on the first column

        @{fundHouses_list1} =     Get WebElements      ${KU_W_fundHouses_firstColumn}
        FOR   ${actualFndHouses_1}    IN     @{fundHouses_list1}
        ${actualFundList1Item}  Set Variable   ${actualFndHouses_1.text}
        END
        FOR    ${expectedFndHousesList1}   IN      @{e_fndHouse_firstColumn}
        ${expectedFundList1Item}  Set Variable      ${expectedFndHousesList1}
        END
        Should Be Equal    ${actualFundList1Item}   ${expectedFundList1Item}  

        #Validation of Fund Houses List on the second column

        @{fundHouses_list2} =     Get WebElements     ${KU_W_fundHouses_secondColumn}
        FOR   ${actualFndHouses_2}    IN     @{fundHouses_list2}
        ${actualFundList2Item}  Set Variable   ${actualFndHouses_2.text}
        END
        FOR    ${expectedFndHousesList2}   IN     @{e_fndHouse_secondColumn} 
        ${expectedFundList2Item}  Set Variable  ${expectedFndHousesList2}
        END
        Should Be Equal   ${actualFundList2Item}   ${expectedFundList2Item} 


     







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
                          Scroll Untill View      ${KU_exploreELSS} 

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