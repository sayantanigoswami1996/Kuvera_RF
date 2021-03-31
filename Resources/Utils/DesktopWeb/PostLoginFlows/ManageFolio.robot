*** Keywords ***

Verify PostLogin Manage Folio Menu Navigation
    Log To Console  Manage Folio
    Wait And Click  ${KU_W_postlogin_manageFolioTab}
    # Validation before KYC
    Verify Registration Page Postlogin  ${e_managefolio_completeKYCMsg}  ${KU_W_managefolio_registrationBtn}
    Wait And Click  ${KU_W_managefolio_registrationBtn}
    # Fill in KYC
    KYC Form Details Page
    Confirm Account Details Page
    Link Bank Account  
    Wait And Click  ${KU_W_postlogin_manageFolioTab}
    # Validation after KYC
    Verify Page Contains Element  ${KU_W_managefolio_selectKuveraAcc}
    Verify Page Contains Element  ${KU_W_managefolio_applicantName}
    Verify Element And Text  ${KU_W_managefolio_noFoliosInAcc}  ${e_managefolio_noFoliosInAcc}
    Verify Element And Text  ${KU_W_managefolio_accType}  ${e_managefolio_accType}