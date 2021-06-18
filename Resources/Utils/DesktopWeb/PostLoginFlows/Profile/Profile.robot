*** Keywords ***

Verify PostLogin Profile Menu Navigation With KYC
    Log To Console  Profile - KYC
    Navigate To Profile And Verify Title  ${KU_W_profile_profileTab}  ${KU_W_profile_profileTitle}  ${KU_W_profile_subTitle}
    Verify Page Contains Element  ${KU_W_profile_accHolderName}  
    Verify Page Contains Element  ${KU_W_profile_holderNameLabel}
    Verify Page Contains Element  ${KU_W_profile_PANLabel} 
    Verify Page Contains Element  ${KU_W_profile_PANLastDigit}
    Verify Page Contains Element  ${KU_W_profile_residentialLabel}
    Verify Page Contains Element  ${KU_W_profile_indianStatus}

Verify PostLogin Profile Menu Navigation Without KYC
    Log To Console  Profile - Non KYC
    Navigate To Profile And Verify Title  ${KU_W_profile_profileTab}  ${KU_W_profile_profileTitle}  ${KU_W_profile_subTitle}