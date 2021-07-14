*** Keywords ***

Verify Buying Multiple Funds Of MF
    Navigate To Invest Page And Verify Explore Options  ${KU_W_mutualFund}  ${e_invest_mf_titleText}
    Search For MF 
    Sleep  1s
    Enter SIP And Lumpsum
    Go Back
    Search For Second MF 
    Enter SIP And Lumpsum
    Wait And Click  ${KU_W_postlogin_cartBtn}
    Wait And Click  ${KU_W_invest_mf_openDrpdownImg}
    Sleep  1s
    Wait And Click  ${KU_W_invest_mf_dateOnOrderSIP}
    Wait And Click  ${KU_W_postlogin_placeOrder}
    Wait And Click  ${KU_W_invest_mf_accBox}
    Wait And Click  ${KU_W_invest_mf_addOneClick}
    Wait And Click  ${KU_W_invest_mf_setOneClick}
    Wait And Click  ${KU_W_postlogin_continue}
    Wait And Click  ${KU_W_invest_mf_placeOrders}
    Wait And Click  ${KU_W_invest_mf_continueBtn}
    Verify Payment Postlogin
    Wait And Click  ${KU_W_postlogin_cartBtn}
    Wait And Click  ${KU_W_postlogin_inProcessTab}
    Verify Page Contains Element  ${KU_W_invest_mf_fund1}
    Verify Page Contains Element  ${KU_W_invest_mf_fund2}
    Verify Page Contains Element  ${KU_W_invest_mf_fund1InProcessTag}
    Verify Page Contains Element  ${KU_W_invest_mf_fund2InProcessTag}