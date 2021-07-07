*** Keywords ***

Verify PostLogin Prod Mandate Menu Navigation
    Log To Console  Mandate
    # Verify Add Mandate For 1 Lakh
    Verify Add Mandate Greater Than 1 Lakh

Verify Add Mandate For 1 Lakh
    Navigate To Profile And Verify Title  ${KU_W_bankAcc_bankAccTab}  ${KU_W_bankAcc_bankAccTitle}  ${KU_W_bankAcc_subTitle1}
    Wait And Click  ${KU_W_bankAcc_mandateBtn}
    Verify Page Contains Element  ${KU_W_mandate_logo} 
    Verify Page Contains Element  ${KU_W_mandate_title} 
    Verify Page Contains Element  ${KU_W_mandate_1Lakh} 
    Verify Page Contains Element  ${KU_W_mandate_greaterThan1Lakh}
    Wait And Click  ${KU_W_mandate_1Lakh} 
    Wait And Click  ${KU_W_mandate_setUpNow}
    Verify Page Contains Element  ${KU_W_mandate_waitingLogo} 
    Verify Page Contains Element  ${KU_W_mandate_waitingTitle} 
    Verify Page Contains Element  ${KU_W_mandate_waitingSubTitle}
    Wait Until Element Is Visible  ${e_mandate_digioTitle}  timeout=130
    Verify Page Title  ${e_mandate_digioTitle}
    Go Back
    Verify Page Contains Element  ${KU_W_mandate_authorize}
    Verify Page Contains Element  ${KU_W_mandate_userDets}
    Wait And Click  ${KU_W_mandate_tooltip}
    Verify Page Contains Element  ${KU_W_mandate_mandateCreatedMsg}
    Wait And Click  ${KU_W_mandate_authorize}
    Verify Page Contains Element  ${KU_W_mandate_registerMandateTitle}
    Verify Page Contains Element  ${KU_W_mandate_registerMandateSubTitle}
    Verify Page Contains Element  ${KU_W_mandate_closeSetUpMandate} 
    Wait And Click  ${KU_W_mandate_mandateRegistration}
    Verify Page Contains Element  ${KU_W_mandate_digio_kuveraLogo}
    Verify Page Contains Element  ${KU_W_mandate_digio_T&C} 
    Verify Page Contains Element  ${KU_W_mandate_digio_authenticatedEmail}
    Wait And Click  ${KU_W_mandate_digio_termsOfServiceLink}
    Switch To Window Verify Title And Close  ${e_mandate_digio_termsOfService_privacyPolicy_LinkTitle}
    Wait And Click  ${KU_W_mandate_digio_privacyPolicyLink}
    Switch To Window Verify Title And Close  ${e_mandate_digio_termsOfService_privacyPolicy_LinkTitle}
    Wait And Click  ${KU_W_mandate_digio_link}
    Switch To Window Verify Title And Close  ${e_mandate_digio_termsOfService_privacyPolicy_LinkTitle}
    Verify Page Contains Element  ${KU_W_mandate_digio_googleOptionMsg}
    Verify Page Contains Element  ${KU_W_mandate_digio_googleOption}
    Verify Page Contains Element  ${KU_W_mandate_digio_notRecommendedMsg}
    Verify Page Contains Element  ${KU_W_mandate_digio_proceedWithEmailMsg}
    Verify Page Contains Element  ${KU_W_mandate_digio_continueBtn}
    Verify Page Contains Element  ${KU_W_mandate_digio_poweredBy} 
    Verify Page Contains Element  ${KU_W_mandate_digio_digioLogo}
    Go Back


Verify Add Mandate Greater Than 1 Lakh
    Navigate To Profile And Verify Title  ${KU_W_bankAcc_bankAccTab}  ${KU_W_bankAcc_bankAccTitle}  ${KU_W_bankAcc_subTitle1}
    Wait And Click  ${KU_W_bankAcc_mandateBtn}
    Verify Page Contains Element  ${KU_W_mandate_oneClickMandateTitle}
    Verify Element And Text  ${KU_W_mandate_oneClickMandateSubTitle}  ${e_mandate_oneClickMandateSubtitle}
    Verify Page Contains Element  ${KU_W_mandate_closeOneClick}
    Verify Page Contains Element  ${KU_W_mandate_pleaseNote} 
    Verify Page Contains Element  ${KU_W_mandate_note1}
    Verify Page Contains Element  ${KU_W_mandate_note2}
    Wait And Click  ${KU_W_mandate_setMandateBtn}
    Verify Page Contains Element  ${KU_W_mandate_oneClickMandateTitle}
    Verify Element And Text  ${e_mandate_setUpMandateSubtitle}  ${KU_W_mandate_setUpMandateSubtitle}
    Verify Page Contains Element  ${KU_W_mandate_closeSetUpMandate}
    Wait And Click  ${KU_W_mandate_uploadMandateLink}
    Verify Page Contains Element  ${KU_W_mandate_uploadMandateTitle}
    Go Back
    Sleep  5s
    Wait And Click  ${KU_W_mandate_uploadMandateFromBankAcc}
    Verify Page Contains Element  ${KU_W_mandate_uploadMandateTitle}
    Verify Page Contains Element  ${KU_W_mandate_uploadMandateLogo}
    Verify Element And Text  ${KU_W_mandate_uploadMandateDesc}  ${e_mandate_uploadMandateDesc} 
    Wait And Click  ${KU_W_postlogin_mandate_doItLaterBtn}
    Wait And Click  ${KU_W_mandate_downloadMandateLink}
    Choose File  ${KU_W_mandate_uploadMandate}  ${mandate_filePath}
    Sleep  4s
    Verify Page Contains Element  ${KU_W_mandate_uploadMandateTitle}
    Verify Page Contains Image  ${KU_W_mandate_mandateImg}
    Verify Disabled Element  ${KU_W_mandate_disabledConfirmBtn}
    Verify Element And Text  ${KU_W_mandate_confirmForm}  ${e_mandate_confirmForm}
    Wait And Click  ${KU_W_mandate_confirmForm}
    Verify Page Contains Element  ${KU_W_mandate_uploadMandateWarningMsg} 
    Wait And Click  ${KU_W_postlogin_confirmBtn}
    Verify Page Contains Element  ${KU_W_mandate_uploadMandateTitle}
    Verify Page Contains Element  ${KU_W_mandate_uploadMandateSuccessMsg}
    Wait And Click  ${KU_W_postlogin_OkBtn}
    Verify Page Contains Element  ${KU_W_mandate_oneClickMandateTitle}
    Verify Page Contains Element  ${KU_W_mandate_oneClickMandateTitle}
    Verify Page Contains Element  ${KU_W_mandate_oneClickMandateTitle}   