*** Keywords ***

Verify PostLogin Trade Smart Menu Navigation
    Verify PreLogin TradeSmart Page
    Wait And Click  ${KU_W_feature_ts_activateBtn}
    Verify Refer Coin Page From Features  ${KU_W_feature_ts_coinsTitle}
    # Verify Payement Of TradeSmart
    # Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}
    # Wait And Click  ${KU_W_featureLink}
    # Wait And Click  ${KU_W_feature_ts_link}
    # Verify Page Contains Element  ${KU_W_feature_ts_activeMsg}

Verify PostLogin Trade Smart Menu Navigation Without KYC
    Wait And Click  ${KU_W_featureLink}
    Wait And Click  ${KU_W_feature_ts_link}
    Verify Login And Signup On Prelogin
    Verify Page Contains Image  ${KU_W_feature_ts_coinImage}
    Wait And Click  ${KU_W_feature_ts_activateBtn}
    Verify Compelete Registration Screen For NONKYC Flow  ${KU_W_feature_ts_accSetUpTitle}  ${KU_W_feature_ts_accSetUpDesc}  ${e_feature_ts_accSetUpMSg}  ${KU_W_postlogin_continue}
       
Verify Payement Of TradeSmart
    Wait And Click  ${KU_W_feature_ts_buyCoins}
    Wait And Click  ${KU_W_postlogin_continueBtn}
    Sleep  2s
    Switch To Frame  ${KU_W_postlogin_razorPayFrame}
    Wait And Click  ${KU_W_SPM_netBankingOption}
    Wait And Click  ${KU_W_SPM_SBIBank} 
    Wait Scroll And Click Element  ${KU_W_SPM_footerPayBtn}
    Unselect Frame
    Sleep  5s
    Switch Window  ${e_SPM_title}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_SPM_razorPayTitle}
    Verify Element And Text  ${KU_W_SPM_razorPayTitle}  ${e_SPM_razorPayTitle}
    Wait And Click  ${KU_W_SPM_razorPaySuccessBtn}
    Switch Window  browser=Kuvera
    Wait And Click  ${KU_W_postlogin_continueBtn}