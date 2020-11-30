*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Validate SaveSmart Landing Page
    Wait For Element Visibility  ${KU_W_ss_screenTitle}
    Verify Language Switch Login And Signup Link
    Verify Element And Text   ${KU_W_ss_screenTitle}  ${e_invest_ss_screenText}
    Input Text  ${KU_W_ss_inputAmount}   ${e_invest_ss_amount}
    Verify Element And Text  ${KU_W_ss_saveBtn}   ${e_invest_ss_saveBtnText}
    Click Element  ${KU_W_ss_saveBtn}
    Verify Login Page
    # Smart Way To Save
    Scroll Untill View   ${KU_W_ss_headerTitle}
    Verify Element And Text  ${KU_W_ss_headerTitle}  ${e_invest_ss_headerTitleText}
    Verify Element And Text  ${KU_W_ss_headerMsg}   ${e_invest_ss_headerMsgText}
    # Calculator 
    Scroll Untill View   ${KU_W_ss_calcTitle}
    Verify Element And Text  ${KU_W_ss_calcTitle}   ${e_invest_ss_calcTitleText}
    Verify Element And Text  ${KU_W_ss_calcMsg}  ${e_invest_ss_calcMsgText}
    Verify Element And Text  ${KU_W_ss_trailingHeader}  ${e_invest_ss_trailingHeaderText}
    Verify Element And Text  ${KU_W_ss_trailingReturnTitle}  ${e_invest_ss_trailingReturnText}
    Verify Element And Text  ${KU_W_ss_trailingPeriod1}   ${e_invest_ss_returnPeriod1}
    Verify Element And Text  ${KU_W_ss_trailingPeriod2}   ${e_invest_ss_returnPeriod2}
    Verify Element And Text  ${KU_W_ss_trailingPeriod3}   ${e_invest_ss_returnPeriod3}
    Go Back

