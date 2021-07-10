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

Verify Savesmart Data On Dashboard
    Wait And Click  ${KU_W_postlogin_homeTab}
    Verify Page Contains Element  ${KU_W_ss_allTimeReturnPer}
    Verify Page Contains Element  ${KU_W_ss_investedVal}
    Wait And Click  ${KU_W_ss_investedVal}
    Verify Page Contains Element  ${KU_W_postlogin_portfolio} 
    Go Back
    Verify Features On Dashboard After Investment
    