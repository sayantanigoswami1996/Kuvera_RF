*** Keywords ***

Verify PostLogin SaveSmart Menu Navigation
    Verify PreLogin Save Smart Landing Page
    Wait And Click  ${KU_W_saveSmart}
    Input Text  ${KU_W_ss_inputAmount}  ${e_invest_ss_amount1}
    Wait And Click  ${KU_W_ss_disabledSaveNowBtn}
    Input Text  ${KU_W_ss_inputAmount}  ${e_invest_ss_amount}
    Wait And Click  ${KU_W_ss_saveBtn}
    Verify Payment Postlogin
    Scroll Untill View  ${KU_W_ss_saveNowBtn}
    Wait And Click  ${KU_W_ss_saveNowBtn}
    Wait And Click  ${KU_W_ss_5000AmtBtn}
    Wait And Click  ${KU_W_ss_saveNow}
    Verify Payment Postlogin
    Verify Savesmart Data On Dashboard
    Verify Savesmart Data on Portfolio

Verify Savesmart Data On Dashboard
    Wait And Click  ${KU_W_postlogin_homeTab}
    Wait For Element Visibility  ${KU_W_ss_allTimeReturnPer}
    Verify Page Contains Element  ${KU_W_ss_allTimeReturnPer}
    Verify Page Contains Element  ${KU_W_postlogin_db_investedVal}
    Verify Page Contains Element  ${KU_W_postlogin_db_oneDayReturnVal}
    Wait And Click  ${KU_W_postlogin_db_investedVal}
    Verify Page Contains Element  ${KU_W_postlogin_portfolio} 
    Go Back
    Verify Features On Dashboard After Investment

Verify Savesmart Data on Portfolio
    Wait And Click  ${KU_W_postlogin_portfolioTab}
    Wait For Element Visibility  ${KU_W_ss_savesmartTab}
    Verify Page Contains Element  ${KU_W_ss_savesmartTab}
    Verify Page Contains Element  ${KU_W_ss_currentValLabel}
    Verify Page Contains Element  ${KU_W_ss_currentValAmt}
    Verify Page Contains Element  ${KU_W_ss_xirrVal}
    Verify Page Contains Element  ${KU_W_ss_totalAmtVal}
    Verify Page Contains Element  ${KU_W_ss_monthlySavingsLabel}
    Verify Page Contains Element  ${KU_W_ss_totAmtLabel}
    Verify Page Contains Element  ${KU_W_ss_returnsXIRRLabel}
    Verify Page Contains Element  ${KU_W_ss_startSavingsTodayLink} 