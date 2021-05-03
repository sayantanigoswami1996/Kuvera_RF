*** Keywords ***

Verify PreLogin TradeSmart Page
    Wait For Element Visibility  ${KU_W_feature_ts_link}
    Click Element  ${KU_W_feature_ts_link}
    Verify Login And Signup On Prelogin
    Wait For Element Visibility  ${KU_W_feature_ts_title} 
    Verify Element And Text  ${KU_W_feature_ts_title}  ${e_feature_ts_titleText}
    Verify Element And Text  ${KU_W_feature_ts_subHeaderTitle}   ${e_feature_ts_subHeaderDesc} 
    Verify Element And Text  ${KU_W_feature_ts_activationTitle}  ${e_feature_ts_activationTitle}
    Verify Element And Text  ${KU_W_feature_ts_activationMsg}  ${e_feature_ts_activationSubTitle}
    Scroll Untill View  ${KU_W_feature_ts_activateBtn} 
    Verify Element And Text  ${KU_W_feature_ts_activateBtn}  ${e_ts_activateBtnText}
    Verify Page Contains Image  ${KU_W_feature_ts_coinImage}
    Click Button  ${KU_W_feature_ts_activateBtn} 
    ${isLoginBtnVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    IF  ${isLoginBtnVisible}  
        Verify Login Page
    ELSE
        Go Back
    END
    # We help Trade Smart    
    Scroll Untill View  ${KU_W_feature_helpTradeSmartTitle}
    Verify Element and Text  ${KU_W_feature_helpTradeSmartTitle}  ${e_feature_helpTradeSmartTitleText} 
    Verify Element and Text  ${KU_W_feature_helpTradeSmart1Msg}  ${e_feature_helpTradeSmartDesc1Text}
    Scroll Untill View  ${KU_W_feature_helpTradeSmart3Msg} 
    Verify Element and Text  ${KU_W_feature_helpTradeSmart2Msg}  ${e_feature_helpTradeSmartDesc2Text}
    Verify Element and Text  ${KU_W_feature_helpTradeSmart3Msg}  ${e_feature_helpTradeSmartDesc3Text}
    Scroll Untill View   ${KU_W_feature_aboutUs} 
