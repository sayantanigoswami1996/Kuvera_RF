*** Keywords ***

Verify Unverifed KYC Navigation
    Log To Console  Unverifed KYC
    Wait For Element Visibility  ${KU_W_KYC_startBtn}
    Wait And Click  ${KU_W_KYC_startBtn}
    Enter PAN Details  ${e_KYC_invalidPANNumber}
    Verify Element And Text  ${KU_W_KYC_KYCNotCertifiedTitle}  ${e_KYC_KYCNotVerified}
    Verify Element And Text  ${KU_W_KYC_KYCNotCertifiedSubTitle}  ${e_KYC_KYCNotVerifiedDesc}
    Wait And Click  ${KU_W_postlogin_playStoreBtn} 
    Switch To Window Verify Title And Close  ${e_postlogin_googlePlayStore}
    Wait And Click  ${KU_W_postlogin_appStoreBtn}
    Sleep  2s
    Switch To App Store And Verify Screen Title

Switch To App Store And Verify Screen Title
    Switch Window  locator=NEW
    Wait For Element Visibility  ${KU_W_postlogin_appStoreScreen}
    Verify Element And Text  ${KU_W_postlogin_appStoreScreen}  ${e_postlogin_appStoreScreen}
    Wait For Element Visibility  ${KU_W_postlogin_kuveraAppIcon}
    Verify Page Contains Element  ${KU_W_postlogin_kuveraAppIcon}
    Close Window
    Sleep  2s
    Switch Window  browser=Kuvera