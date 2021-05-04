*** Keywords ***

Verify PostLogin Account Deactivation 
    Log To Console  Account Deactivation
    Wait And Click  ${KU_W_ca_caretDropdown}
    Wait And Click  ${KU_W_settings_settingsBtn}
    Scroll Untill View  ${KU_W_settings_deactivateTitle}
    Verify Element And Text  ${KU_W_settings_deactivateTitle}  ${e_settings_deactivateAcc}
    Verify Element And Text  ${KU_W_settings_deactivateDesc}  ${e_settings_deactivateAccDesc}
    Verify Element And Text  ${KU_W_settings_warningMsg}  ${e_settings_warningMsg}
    Wait And Click  ${KU_W_settings_deactivateAccBtn}
    # We Are Sad To See You Go
    Verify Page Contains Element  ${KU_W_settings_WeAreSadTitle}
    Verify Page Contains Element  ${KU_W_settings_terms}
    Verify Element And Text  ${KU_W_settings_termsDesc1}  ${e_settings_termsDesc1}
    Verify Element And Text  ${KU_W_settings_termsDesc2}  ${e_settings_termsDesc2}
    Wait And Click  ${KU_W_postlogin_proceedButton} 
    # Deactivate Account
    Verify Page Contains Element  ${KU_W_settings_deactivateAccTitle}
    Verify Element And Text  ${KU_W_settings_confirmOTPMsg}  ${e_settings_confirmOTPMsg}
    Wait And Click  ${KU_W_settings_deactivateBtn}
    Enter OTP Postlogin
    Sleep  3s
    Go Back
    Wait And Click  ${KU_W_postlogin_kuveraLogo} 
    Sleep  15s