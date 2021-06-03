*** Keywords ***

Verify PreLogin Manage Account Page
    Wait For Element Visibility  ${KU_W_feature_manageAccountLink}
    Click Element  ${KU_W_feature_manageAccountLink}
    Verify Login And Signup On Prelogin
    Wait For Element Visibility  ${KU_W_feature_manageAccountTitle}  
    Verify Element And Text  ${KU_W_feature_manageAccountTitle}   ${e_feature_manageAccountTitleText} 
    Verify Element And Text  ${KU_W_feature_manageAccountDesc1}  ${e_feature_manageAccountDesc1Text} 
    Verify Element And Text  ${KU_W_feature_manageAccountDesc2}  ${e_feature_manageAccountDesc2Text} 
    Scroll Untill View  ${KU_W_feature_addMangrBtn} 
    Verify Element And Text  ${KU_W_feature_addMangrBtn}  ${e_feature_addManagerBtnText}
    Wait For Element Visibility  ${KU_W_feature_addMangrBtn}
    Verify Login Page On Pre And Postlogin  ${KU_W_feature_addMangrBtn}  ${KU_W_feature_manageAccountTitle}