*** Keywords ***

Verify PostLogin Manage Account Menu Navigation
    Verify PreLogin Manage Account Page 
    Sleep  3s
    Wait And Click  ${KU_W_featureLink}
    Wait And Click  ${KU_W_feature_manageAccountLink}
    Wait And Click  ${KU_W_feature_addMangrBtn}
    # Managed Account Tab
    Verify Managed Account Tab
    # Family Account
    Verify Family Account Tab
    # Invite Manager Page
    Verify Invite Manager Screen

Verify PostLogin Manage Account Menu Navigation Without KYC
    Log To Console  Manage Account Non KYC Flow
    Wait And Click  ${KU_W_featureLink} 
    Wait And Click  ${KU_W_feature_manageAccountLink}
    Wait And Click  ${KU_W_feature_addMangrBtn}
    # Managed Account Tab
    Verify Managed Account Tab
    # Family Account
    Verify Family Account Tab
    # Complete Registration Page
    Verify Compelete Registration Screen For NONKYC Flow  ${KU_W_feature_completeRegistrationTitle}  ${KU_W_feature_accSetupDesc}  ${e_feature_accSetupMsg}   ${KU_W_postlogin_registrationBtn}

Verify Managed Account Tab
    Wait And Click  ${KU_W_feature_managedAccountTab}
    Verify Page Contains Element  ${KU_W_feature_familyAccIcon}
    Verify Element And Text  ${KU_W_feature_managedAccInfo}  ${e_feature_managedAccInfo}
    Wait And Click  ${KU_W_postlogin_learnMoreLink}
    Switch To Window

Verify Invite Manager Screen
    Verify Element And Text  ${KU_W_feature_inviteManagerTitle}  ${e_feature_inviteManagerTitle}
    Verify Page Contains Element  ${KU_W_feature_accountNameDets}
    Verify Invite Manager Details
    Input Text  ${KU_W_feature_managerMailID}  ${e_postlogin_emailID}
    Press Keys  ${KU_W_feature_managerMailID}  \ue004
    Press Keys  None  \ue00d
    Verify Page Contains Element  ${KU_W_feature_T&C}
    Verify Page Contains Element  ${KU_W_feature_allowAccessMsg}
    Verify Page Contains Element  ${KU_W_postlogin_takeMeBackLink}
    Sleep  2s
    Scroll Untill View  ${KU_W_feature_allowAccessMsg}
    Wait And Click  ${KU_W_feature_allowAccessMsg}
    Wait And Click  ${KU_W_postlogin_authorizeAccessBtn}
    Enter OTP Postlogin
    Wait For Element Visibility  ${KU_W_feature_managerAddedSuccessfully}
    Verify Page Contains Element  ${KU_W_feature_managerAddedSuccessfully}
    Wait For Element Visibility  ${KU_W_feature_managerAddedSuccessSubTitle}
    Verify Page Contains Element  ${KU_W_feature_managerAddedSuccessSubTitle}
    Wait And Click  ${KU_W_postlogin_OkBtn}
    Wait For Element Visibility  ${KU_W_feature_managerName}
    Verify Page Contains Element  ${KU_W_feature_managerName}
    Verify Page Contains Element  ${KU_W_postlogin_resendBtn}
    Verify Page Contains Element  ${KU_W_postlogin_revokeBtn}

Verify Family Account Tab
    Wait And Click  ${KU_W_feature_familyAccTab}
    Verify Page Contains Element  ${KU_W_feature_manageAccountSubTitle}
    Verify Page Contains Element  ${KU_W_feature_addAccountBtn}
    Wait And Click  ${KU_W_feature_addAccountBtn}
    Wait For Element Visibility  ${KU_W_feature_fa_screenTitle}
    Verify Element And Text  ${KU_W_feature_fa_screenTitle}  ${e_feature_fa_screenTitle}
    Go Back
    Verify Page Contains Element  ${KU_W_feature_profileName} 
    Verify Page Contains Element  ${KU_W_feature_accountType}
    Verify Page Contains Element  ${KU_W_feature_holderLabel} 
    Verify Page Contains Element  ${KU_W_feature_valuationLabel}
    Verify Page Contains Element  ${KU_W_feature_investmentLabel}
    Verify Page Contains Element  ${KU_W_feature_xirrLabel}
    Verify Page Contains Element  ${KU_W_feature_editBtn}
    Verify Page Contains Element  ${KU_W_feature_deleteBtn}
    Verify Page Contains Element  ${KU_W_feature_haveSomeoneElseTitle}
    Verify Page Contains Element  ${KU_W_feature_addManagerBtn} 
    Wait And Click  ${KU_W_feature_addManagerBtn} 

Verify Invite Manager Details
    Verify Page Contains Element  ${KU_W_feature_addManagerPoint1}
    Verify Page Contains Element  ${KU_W_feature_addManagerPoint2}
    Verify Page Contains Element  ${KU_W_feature_addManagerPoint3}