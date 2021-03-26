*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Forgot Password Page
    Go To  ${e_fp_url}
    Verify Element And Text  ${KU_W_fp_forgotPwdHeader}  ${e_fp_forgotPwdHeader} 
    Verify Element And Text  ${KU_W_fp_forgotPwdSubHeader}  ${e_fp_forgotPwdSubHeader}
    Verify Element And Text  ${KU_W_fp_emailLabel}  ${e_fp_emailLabel}
    Wait And Click  ${KU_W_fp_backToLoginBtn}
    Verify Login Page
    Wait And Click  ${KU_W_fp_emailField}
    Input Text  ${KU_W_fp_emailField}  ${e_fp_emailID}
    Wait And Click  ${KU_W_fp_sendResetLinkBtn}  
    Wait For Element Visibility  ${KU_W_fp_alertMsg1}
    Verify Element And Text  ${KU_W_fp_alertMsg1}  ${e_fp_alertMsg1} 
    Verify Element And Text  ${KU_W_fp_alertMsg2}  ${e_fp_alertMsg2} 
