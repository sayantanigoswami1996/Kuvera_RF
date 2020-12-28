*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Signup Page
    Wait For Element Visibility  ${KU_W_signupPageTitle}
    Verify Element And Text  ${KU_W_signupPageTitle}  ${e_signupPageTitle}
    
Verify Signup Page Widgets
    # Verify all widgets in signup page
    Wait For Element Visibility  ${KU_W_signup}
    Click Element  ${KU_W_signup}
    Verify Signup Page
    Wait For Element Visibility  ${KU_W_signupPageTitle}
    Verify Element And Text  ${KU_W_emailLabel}  ${e_emailLabel}
    Verify Page Contains Element  ${KU_W_emailTxt}
    Verify Element And Text  ${KU_W_signup_setPasswordLabel}  ${e_signup_setPasswordLabel}
    Verify Page Contains Element  ${KU_W_passwordTxt}
    Verify Element And Text  ${KU_W_signup_mobileLabel}  ${e_signup_mobileLabel}
    Verify Page Contains Element  ${KU_W_signup_mobileTxt}
    Verify Page Contains Element  ${KU_W_signup_inviteCodeLabel}
    Verify Page Contains Button  ${KU_W_signup_inviteCodeTxt}
    Verify Page Contains Button  ${KU_W_signup_signupButton} 
    Verify Page Contains Button  ${KU_W_googleSigninButton}
    Verify Page Contains Button  ${KU_W_fbSigninButton}