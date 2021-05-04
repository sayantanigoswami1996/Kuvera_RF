*** Keywords ***

Enable Two Factor Authentication
    Wait And Click  ${KU_W_ca_caretDropdown}
    Wait And Click  ${KU_W_settings_settingsBtn}
    Wait And Click  ${KU_W_settings_2FABtn}
    Wait And Click  ${KU_W_postlogin_OKButton}
    Wait And Click  ${KU_W_postlogin_homeTab} 