*** Keywords ***

Verify PreLogin Family Account Page 
    Wait For Element Visibility  ${KU_W_feature_familyAccountLink}
    Click Element  ${KU_W_feature_familyAccountLink}
    Verify Login And Signup On Prelogin
    Wait For Element Visibility  ${KU_W_feature_fa_screenTitle}
    Verify Element And Text  ${KU_W_feature_fa_screenTitle}  ${e_feature_fa_screenTitle}
    Verify Element And Text  ${KU_W_feature_fa_screenContent}  ${e_feature_fa_screenContent}
    Verify Element And Text  ${KU_W_button}  ${e_activateWithBtn}
    Verify Login Page On Pre And Postlogin  ${KU_W_button}  ${KU_W_feature_getCoinText}