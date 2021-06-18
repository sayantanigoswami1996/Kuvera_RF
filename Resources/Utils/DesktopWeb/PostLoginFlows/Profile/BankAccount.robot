*** Keywords ***

Verify PostLogin Bank Account Menu Navigation With KYC
    Log To Console  Bank Account - KYC
    Navigate To Profile And Verify Title  ${KU_W_bankAcc_bankAccTab}  ${KU_W_bankAcc_bankAccTitle}  ${KU_W_bankAcc_subTitle1}
    Verify Page Contains Element  ${KU_W_bankAcc_subTitle2} 
    Verify Page Contains Element  ${KU_W_bankAcc_bankName}
    Wait For Element Visibility  ${KU_W_bankAcc_accNum}
    Verify Element And Text  ${KU_W_bankAcc_accNum}  ${e_bankAcc_accNum1}
    Verify Page Contains Element  ${KU_W_bankAcc_accountProofLabel}
    Verify Page Contains Element  ${KU_W_bankAcc_other}
    Verify Page Contains Element  ${KU_W_bankAcc_primaryBankLabel}
    Verify Page Contains Element  ${KU_W_bankAcc_IFSCLabel}
    Verify Page Contains Element  ${KU_W_bankAcc_IFSC} 
    Verify Page Contains Element  ${KU_W_bankAcc_mandateLabel}
    Wait And Click  ${KU_W_bankAcc_mandateBtn}
    Wait For Element Visibility  ${KU_W_bankAcc_mandateScreenTitle}
    Verify Page Contains Element  ${KU_W_bankAcc_mandateScreenTitle}
    Go Back
    Wait And Click  ${KU_W_bankAcc_bankAccTab}
    Wait And Click  ${KU_W_postlogin_addBankBtn}
    Wait And Click  ${KU_W_KYC_IFSCField}
    Input Text  ${KU_W_KYC_IFSCField}  ${e_bankAcc_IFSC}
    Wait And Click  ${KU_W_KYC_bankAccField}
    Input Text  ${KU_W_KYC_bankAccField}  ${e_bankAcc_accNum}
    Wait And Click  ${KU_W_KYC_reBankAccField} 
    Input Text  ${KU_W_KYC_reBankAccField}  ${e_bankAcc_accNum}
    Wait And Click  ${KU_W_KYC_bankCertifyCheckBox} 
    Wait And Click  ${KU_W_KYC_bankConfirmedCheckBox}
    Wait And Click  ${KU_W_KYC_DONEBtn}
    Verify Page Contains Element  ${KU_W_bankAcc_secondaryBank} 
    Verify Element And Text  ${KU_W_bankAcc_secondaryBankAccount}  ${e_bankAcc_accNum2} 

Verify PostLogin Bank Account Menu Navigation Without KYC
    Log To Console  Bank Account - Non KYC
    Navigate To Profile And Verify Title  ${KU_W_bankAcc_bankAccTab}  ${KU_W_bankAcc_bankAccTitle}  ${KU_W_bankAcc_subTitle1}
    Verify Page Contains Element  ${KU_W_bankAcc_subTitle2} 
