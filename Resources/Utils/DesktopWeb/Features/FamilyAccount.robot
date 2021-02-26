*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Family Account Page 
    Verify Login And Signup Link
    Wait For Element Visibility  ${KU_W_feature_familyAccountLink}
    Click Element  ${KU_W_feature_familyAccountLink}
    Wait For Element Visibility  ${KU_W_feature_fa_screenTitle}
    Verify Element And Text  ${KU_W_feature_fa_screenTitle}  ${e_feature_fa_screenTitle}
    Verify Element And Text  ${KU_W_feature_fa_screenContent}  ${e_feature_fa_screenContent}
    Verify Element And Text  ${KU_W_button}  ${e_activateWithBtn}
    Click Button  ${KU_W_button}
    Verify Login Page