*** Settings ***

Library   SeleniumLibrary

*** Keywords ***

Verify PAN Verifed KYC Details
    Wait For Element Visibility  ${KU_W_KYC_startBtn}
    Click Element  ${KU_W_KYC_startBtn}
    KYC Form Details Page
    Confirm Account Details Page
    Link Bank Account

Confirm Account Details Page
    # Confirm Account Deatils Page
    Wait And Click  ${KU_W_KYC_portfolioNameField}
    Input Text  ${KU_W_KYC_portfolioNameField}  ${e_KYC_portfolioNameField}
    Wait And Click  ${KU_W_KYC_confirmBtn}
    # Tell Us About Yourself
    Verify Page Contains Element  ${KU_W_KYC_tellUsAboutYourself}
    Verify Page Contains Element  ${KU_W_KYC_tellUsAboutYourselfDesc}
    Scroll Untill View  ${KU_W_postlogin_continueBtn}
    Wait And Click  ${KU_W_postlogin_continueBtn} 

Link Bank Account
    Verify Page Contains Element  ${KU_W_KYC_linkBankAccTitle}
    Verify Element And Text  ${KU_W_KYC_pageSubTitle}  ${e_KYC_linkBankAccDesc}
    Verify Element And Text  ${KU_W_KYC_IFSCLabel}  ${e_KYC_IFSCLabel}
    Wait And Click  ${KU_W_KYC_IFSCField}
    Input Text  ${KU_W_KYC_IFSCField}  ${e_KYC_IFSc} 
    Verify Element And Text  ${KU_W_KYC_bankAccLabel}  ${e_KYC_bankAccLabel}
    Wait And Click  ${KU_W_KYC_bankAccField}
    Input Text  ${KU_W_KYC_bankAccField}  ${e_KYC_bankAccField}
    Verify Element And Text  ${KU_W_KYC_reBankAccLabel}  ${e_KYC_reBankAccLabel}
    Wait And Click  ${KU_W_KYC_reBankAccField} 
    Input Text  ${KU_W_KYC_reBankAccField}  ${e_KYC_bankAccField}
    Verify Element And Text  ${KU_W_KYC_bankCertifyText}  ${e_KYC_bankCertifyText} 
    Wait And Click  ${KU_W_KYC_bankCertifyCheckBox} 
    Verify Element And Text  ${KU_W_KYC_bankConfirmedText}  ${e_KYC_bankConfirmedText}
    Wait And Click  ${KU_W_KYC_bankConfirmedCheckBox}
    Verify Element And Text  ${KU_W_KYC_addNomineeLabel}  ${e_KYC_addANomineeLabel}
    Verify Page Contains Element  ${KU_W_KYC_addNomineeText}
    Wait And Click  ${KU_W_KYC_addNomineeCheckBox} 
    Wait And Click  ${KU_W_KYC_nomineeName} 
    Input Text  ${KU_W_KYC_nomineeName}  ${e_KYC_nomineeName}
    Wait And Click  ${KU_W_KYC_nomineeRelationship}
    Wait And Click  ${KU_W_KYC_dateField}
    Input Text  ${KU_W_KYC_dateField}  ${e_KYC_nomineeDOB}
    Wait And Click  ${KU_W_KYC_monthField} 
    Input Text  ${KU_W_KYC_monthField}  ${e_KYC_nomineeMOB} 
    Wait And Click  ${KU_W_KYC_yearField}
    Input Text  ${KU_W_KYC_yearField}  ${e_KYC_nomineeYOB}
    Wait And Click  ${KU_W_KYC_nomineeAddress} 
    Input Text  ${KU_W_KYC_nomineeAddress}  ${e_KYC_address1Field}
    Wait And Click  ${KU_W_postlogin_doneBtn}
    Verify Element And Text  ${KU_W_KYC_confirmationTitle}  ${e_KYC_accountSetupTitle} 
    Verify Element And Text  ${KU_W_KYC_confirmationSubTitle}  ${e_KYC_accountSetupSubTitle}
    Wait And Click  ${KU_W_postlogin_OkBtn}
    Verify Page Contains Element  ${KU_W_ca_dashboardHeader}