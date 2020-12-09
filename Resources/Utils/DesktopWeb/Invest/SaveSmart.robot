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
    Verify Element And Text  ${KU_W_ss_trailingReturnTitle1}  ${e_invest_ss_trailingReturn1Text}
    Verify Element And Text  ${KU_W_ss_trailingPeriod1}   ${e_invest_ss_returnPeriod1}
    Verify Element And Text  ${KU_W_ss_trailingPeriod2}   ${e_invest_ss_returnPeriod2}
    Verify Element And Text  ${KU_W_ss_trailingPeriod3}   ${e_invest_ss_returnPeriod3}
    Verify Element And Text  ${KU_W_ss_trailingReturnTitle2}  ${e_invest_ss_trailingReturn2Text}
    Verify Element And Text  ${KU_W_ss_trailingPeriodVal1}  ${e_invest_ss_returnPeriodVal1}
    Verify Element And Text  ${KU_W_ss_trailingPeriodVal2}  ${e_invest_ss_returnPeriodVal2}
    Verify Element And Text  ${KU_W_ss_trailingPeriodVal3}  ${e_invest_ss_returnPeriodVal3}

    # Amount Returns
    Scroll Untill View   ${KU_W_ss_enterAmountTitle}
    Verify Element And Text  ${KU_W_ss_enterAmountTitle}   ${e_invest_ss_enterAmtText}
    Verify Element And Text  ${KU_W_ss_rupeeSymbol}   ${e_invest_ss_rupeeSymbol} 
    Clear Element Text   ${KU_W_ss_amountField}
    Input Text  ${KU_W_ss_amountField}  ${e_invest_ss_investAmount} 
    Verify Element And Text  ${KU_W_ss_title}   ${e_invest_ss_saveSmartTitleText}
    Verify Element And Text  ${KU_W_ss_returnPeriod1}   ${e_invest_ss_returnDuration1}
    Verify Element And Text  ${KU_W_ss_returnPeriod2}   ${e_invest_ss_returnDuration2}
    Verify Element And Text  ${KU_W_ss_returnPeriod3}   ${e_invest_ss_returnDuration3}
    Verify Element And Text  ${KU_W_ss_returnAmt1}  ${e_invest_ss_returnAmt1}
    Verify Element And Text  ${KU_W_ss_returnAmt2}   ${e_invest_ss_returnAmt2}
    Verify Element And Text  ${KU_W_ss_returnAmt3}   ${e_invest_ss_returnAmt3}
    Verify Element And Text  ${KU_W_ss_disclaimer}  ${e_invest_ss_disclaimerText}
    
    # You Need it , You got it
    Scroll Untill View  ${KU_W_ss_withdrawTitle}
    Verify Element And Text  ${KU_W_ss_withdrawTitle}   ${e_invest_ss_withdrawTitleText}
    Verify Element And Text  ${KU_W_ss_withdrawMsg}  ${e_invest_ss_withdraMsgText}

    # Sleep Peacefully
    Scroll Untill View   ${KU_W_ss_sleepTitle}
    Verify Element And Text  ${KU_W_ss_sleepTitle}  ${e_invest_ss_sleepTitleText}
    Verify Element And Text  ${KU_W_ss_sleepMsg}  ${e_invest_ss_sleepMsgText}
    Verify Page Contains Element  ${KU_W_ss_funds}
    Wait For Element Visibility  ${KU_W_ss_fundLogoLink1}
    Click Element  ${KU_W_ss_fundLogoLink1}
    Wait For Element Visibility   ${KU_W_ss_fundName}
    Go Back
    Wait For Element Visibility  ${KU_W_ss_fundLogoLink2}
    Click Element  ${KU_W_ss_fundLogoLink2}
    Wait For Element Visibility  ${KU_W_ss_fundName}
    Go Back
    Wait For Element Visibility  ${KU_W_ss_fundLogoLink3}
    Click Element  ${KU_W_ss_fundLogoLink3}
    Wait For Element Visibility  ${KU_W_ss_fundName}
    Go Back
    Wait For Element Visibility  ${KU_W_ss_fundLogoLink4}
    Click Element  ${KU_W_ss_fundLogoLink4}
    Wait For Element Visibility  ${KU_W_ss_fundName}
    Go Back
   
    # Start Save
    Scroll Untill View   ${KU_W_ss_startSaveTitle} 
    Verify Element And Text  ${KU_W_ss_startSaveTitle}  ${e_invest_ss_startSaveTitleText}
    Verify Element And Text  ${KU_W_ss_startSaveMsg}  ${e_invest_ss_startSaveMsgText}
    Verify Element And Text  ${KU_W_ss_saveNowBtn}  ${e_invest_ss_saveBtnText}
    Verify Google Play & Apple Store Icons
    Wait For Element Visibility   ${KU_W_ss_saveNowBtn} 
    Click Element  ${KU_W_ss_saveNowBtn} 
    Verify Login Page
    Go Back