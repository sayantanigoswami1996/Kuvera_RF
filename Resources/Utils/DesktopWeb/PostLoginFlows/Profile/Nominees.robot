*** Keywords ***

Verify PostLogin Nominees Menu Navigation With KYC
    Log To Console  Nominees - KYC
    Navigate To Profile And Verify Title  ${KU_W_nominees_nomineesTab}  ${KU_W_nominees_nomineesTitle}  ${KU_W_nominees_subTitle}
    Wait And Click  ${KU_W_nominees_addNomineeBtn} 
    Verify Page Contains Element  ${KU_W_nominees_nomineeDetsTitle}
    Verify Element And Text  ${KU_W_nominees_nomineesDetsSubtitle}  ${e_nominees_nomineesDetsSubtitle}
    Verify Element And Text  ${KU_W_nominees_warningText}  ${e_nominees_warningText}
    Verify Page Contains Element  ${KU_W_nominees_provideValidName}
    Add Nominee Details
    Wait And Click  ${KU_W_postlogin_updateBtn}
    Verify Page Contains Element  ${KU_W_nominees_nomineeUpdatedTitle}
    Verify Page Contains Element  ${KU_W_nominees_nomineeUpdatedSubtitle}
    Wait And Click  ${KU_W_postlogin_OkBtn}
    Verify Page Contains Element  ${KU_W_nominees_afterNomineeSet}
    Verify Page Contains Element  ${KU_W_nominees_nomineeName}
    Verify Page Contains Element  ${KU_W_nominees_nomineeNameLabel}
    Verify Page Contains Element  ${KU_W_nominees_DOBLabel}
    Verify Page Contains Element  ${KU_W_nominees_nomineeDOB}
    Verify Page Contains Element  ${KU_W_nominees_addressLabel}
    Verify Page Contains Element  ${KU_W_nominees_address}
    Verify Page Contains Element  ${KU_W_nominees_nomineeDOB}
    Verify Page Contains Element  ${KU_W_nominees_editBtn}
    Wait And Click  ${KU_W_nominees_editBtn}
    Verify Page Contains Element  ${KU_W_nominees_nomineeDetsTitle}

Verify PostLogin Nominees Menu Navigation Without KYC
    Log To Console  Nominees - Non KYC
    Navigate To Profile And Verify Title  ${KU_W_nominees_nomineesTab}  ${KU_W_nominees_nomineesTitle}  ${KU_W_nominees_subTitle}

Verify KYC Flow Without Nominees
    Wait For Element Visibility  ${KU_W_KYC_startBtn}
    Click Element  ${KU_W_KYC_startBtn}
    KYC Form Details Page  ${e_KYC_PANNumber}  ${e_KYC_mobileNumField}  ${e_KYC_dateField}  ${e_KYC_monthField}  ${e_KYC_yearField}
    Confirm Account Details Page
    Add KYC Without Nominees
    Wait And Click  ${KU_W_KYC_addNomineeCheckBox}
    Wait And Click  ${KU_W_KYC_DONEBtn}
    Sleep  4s
    Wait And Click  ${KU_W_postlogin_OkBtn}
    Sleep  1s
    Verify Page Contains Element  ${KU_W_postlogin_homeTab}