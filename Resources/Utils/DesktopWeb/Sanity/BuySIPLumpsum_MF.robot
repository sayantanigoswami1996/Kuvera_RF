*** Keywords ***

Verify PostLogin Prod MF Invest Menu Navigation With KYC
    Log To Console  MF Invest Navigation With KYC
    Navigate To Invest Page And Verify Explore Options  ${KU_W_mutualFund}  ${e_invest_mf_titleText}
    Search For MF 
    Verify Nifty Graphs
    Sleep  1s
    Enter SIP And Lumpsum
    Go Back
    Search For Second MF 
    Enter SIP And Lumpsum
    Wait And Click  ${KU_W_postlogin_cartBtn}
    Wait And Click  ${KU_W_postlogin_placeOrder}
    Wait And Click  ${KU_W_invest_mf_accBox} 
    Wait And Click  ${KU_W_invest_mf_selectBox}
    Wait And Click  ${KU_W_invest_mf_placeOrdersBtn}
    Verify Page Contains Element  ${KU_W_invest_mf_confirmOrder}
    Go Back
    Wait And Click  ${KU_W_postlogin_cartBtn}
    Delete SIP And Lumpsum

    
Search For Second MF 
    @{mutualFundName} =  Get Json Values  $.MutualFunds.f3  Resources/TestData/MutualFunds.json 
    Log To Console  ${mutualFundName}
    Search Fund and Verify  ${mutualFundName} 
    Sleep  1s
    Wait And Click  ${KU_W_invest_mf_fundName}

Enter SIP And Lumpsum
    Wait For Element Visibility  ${KU_W_invest_mf_sipAmountTxt}
    Input Text  ${KU_W_invest_mf_sipAmountTxt}  ${e_invest_mf_sipAmount}
    Wait For Element Visibility  ${KU_W_invest_mf_lumpsumAmountTxt}
    Input Text  ${KU_W_invest_mf_lumpsumAmountTxt}  ${e_invest_mf_lumpsumAmount}
    Wait Scroll And Click Element  ${KU_W_invest_mf_addToCartButton}

Delete SIP And Lumpsum
    Wait And Click  ${KU_W_invest_mf_SIPDelIcon}
    Wait And Click  ${KU_W_postlogin_yesDeleteBtn}
    Wait And Click  ${KU_W_invest_mf_lumpDelIcon}
    Wait And Click  ${KU_W_postlogin_yesDeleteBtn}
    Wait And Click  ${KU_W_invest_mf_SIPDelIcon}
    Wait And Click  ${KU_W_postlogin_yesDeleteBtn}
    Wait And Click  ${KU_W_invest_mf_lumpDelIcon}
    Wait And Click  ${KU_W_postlogin_yesDeleteBtn}
