*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Login Page
    Wait For Element Visibility  ${KU_W_loginPageTitle}
    Verify Element And Text  ${KU_W_loginPageTitle}  ${e_loginPageTitle}
    Go Back

Verify Login Page Widgets
    Wait For Element Visibility  ${KU_W_login}
    Click Element  ${KU_W_login}
    Wait For Element Visibility  ${KU_W_loginPageTitle}
    Verify Page Contains Element  ${KU_W_Login_emailLabel}
    Verify Page Contains Element  ${KU_W_Login_emailTxt}
    Verify Page Contains Element  ${KU_W_Login_forgotPasswordLink}
    Verify Page Contains Element  ${KU_W_Login_passwordLabel}
    Verify Page Contains Element  ${KU_W_Login_emailLabel}
    Verify Page Contains Button  ${KU_W_Login_loginButton}
    Verify Page Contains Button  ${KU_W_Login_googleSigninButton}
    Verify Page Contains Button  ${KU_W_Login_fbSigninButton}