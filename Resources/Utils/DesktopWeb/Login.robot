*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Login Page
    Wait For Element Visibility  ${KU_W_loginPageTitle}
    Verify Element And Text  ${KU_W_loginPageTitle}  ${e_loginPageTitle}
    Go Back

Verify Login Page Widgets
    # Verify all widgets in login page
    Wait For Element Visibility  ${KU_W_login}
    Click Element  ${KU_W_login}
    Wait For Element Visibility  ${KU_W_loginPageTitle}
    Verify Element And Text  ${KU_W_emailLabel}  ${e_emailLabel}
    Verify Page Contains Element  ${KU_W_emailTxt}
    Verify Page Contains Element  ${KU_W_login_forgotPasswordLink}
    Verify Page Contains Element  ${KU_W_login_passwordLabel}
    Verify Element And Text  ${KU_W_login_passwordLabel}  ${e_login_passwordLabel}
    Verify Page Contains Element  ${KU_W_passwordTxt}
    Verify Page Contains Button  ${KU_W_loginpage_loginButton}
    Verify Page Contains Button  ${KU_W_googleSigninButton}
    Verify Page Contains Button  ${KU_W_fbSigninButton}
