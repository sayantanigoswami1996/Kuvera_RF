*** Keywords ***

Verify Fill In Of KYC Form Details
    Wait For Element Visibility  ${KU_W_KYC_startBtn}
    Click Element  ${KU_W_KYC_startBtn}
    KYC Form Details Page  ${e_KYC_PANNumber}  ${e_KYC_mobileNumField}  ${e_KYC_dateField}  ${e_KYC_monthField}  ${e_KYC_yearField}
    Wait And Click  ${KU_W_postlogin_kuverLogo} 

KYC Form Details Page
    [Arguments]  ${PANNum}  ${PhoneNum}  ${DOB}  ${MOB}  ${YOB}
    Log To Console  KYC Form
    Wait For Element Visibility  ${KU_W_KYC_formTitle}
    Verify Element And Text  ${KU_W_KYC_formTitle}  ${e_KYC_formTitle}
    Verify Element And Text  ${KU_W_KYC_formSubTitle}  ${e_KYC_formSubTitle}  
    Enter PAN Details  ${PANNum}  ${PhoneNum}  ${DOB}  ${MOB}  ${YOB}
    Wait Scroll And Click Element  ${KU_W_KYC_residenceStatus}
    Wait Scroll And Click Element  ${KU_W_KYC_residentIndividual}
    Click Element  ${KU_W_KYC_address1Field}
    Input Text  ${KU_W_KYC_address1Field}  ${e_KYC_address1Field}
    Wait Scroll And Click Element  ${KU_W_KYC_address2Field}
    Input Text  ${KU_W_KYC_address2Field}  ${e_KYC_address2Field}
    Wait Scroll And Click Element  ${KU_W_HI_pincodeField} 
    Input Text  ${KU_W_HI_pincodeField}   ${e_HI_pincodeField}
    Wait Scroll And Click Element  ${KU_W_KYC_gender}
    Wait Scroll And Click Element  ${KU_W_KYC_maritalStatus}
    Wait Scroll And Click Element  ${KU_W_KYC_taxReturnFiling}
    Wait Scroll And Click Element  ${KU_W_KYC_updateBtn}
    Wait For Element Visibility  ${KU_W_KYC_addSignatureTitle}
    Verify Page Contains Element  ${KU_W_KYC_addSignatureTitle}
    Wait For Element Visibility  ${KU_W_KYC_addSignatureSubTitle1}
    Verify Element And Text  ${KU_W_KYC_addSignatureSubTitle1}  ${e_KYC_addSignatureSubTitle1}
    Verify Element And Text  ${KU_W_KYC_addSignatureSubTitle2}  ${e_KYC_addSignatureSubTitle2}
    Add Signature
    Wait Scroll And Click Element  ${KU_W_KYC_OKBtn}
    Click Element  ${KU_W_KYC_popupOkBtn}
    Wait And Click  ${KU_W_KYC_portfolioNameField}
    Input Text  ${KU_W_KYC_portfolioNameField}  ${e_KYC_portfolioNameField}
    Wait Scroll And Click Element  ${KU_W_postlogin_confirmBtn}
    
Add Signature
    Mouse Over  ${KU_W_KYC_canvasSpace}
    Wait For Element Visibility  ${KU_W_KYC_canvasSpace}
    Click Element At Coordinates  ${KU_W_KYC_canvasSpace}  400  226
    Drag And Drop By Offset  ${KU_W_KYC_canvasSpace}  200  100
    Click Element At Coordinates  ${KU_W_KYC_canvasSpace}  250  140

Visibility Of The Popup
    Wait Until Element Is Visible  ${KU_W_postlogin_OkBtn}   timeout=10 
    Element Should Be Visible  ${KU_W_postlogin_OkBtn} 

Enter PAN Details
    [Arguments]  ${PANNumber}  ${phoneNum}  ${date}  ${month}  ${year}
    Verify Element And Text  ${KU_W_KYC_PANLabel}  ${e_KYC_PANLabel}
    Click Element  ${KU_W_KYC_PANTextField}
    Input Text  ${KU_W_KYC_PANTextField}  ${PANNumber}
    Verify Element And Text  ${KU_W_KYC_DOBLabel}  ${e_KYC_DOBLabel}
    Enter DOB  ${KU_W_KYC_dateField}  ${date}  ${KU_W_KYC_monthField}  ${month}  ${KU_W_KYC_yearField}  ${year}
    Verify Element And Text  ${KU_W_KYC_mobileNumLabel}  ${e_KYC_mobileNumLabel}
    Click Element  ${KU_W_KYC_mobileNumField}
    Input Text  ${KU_W_KYC_mobileNumField}  ${phoneNum}
    Wait Scroll And Click Element  ${KU_W_kyc_nextBtn}
    ${isPopupVisible} =  Run Keyword And Return Status  Visibility Of The Popup
    Run Keyword If  ${isPopupVisible}  Log To Console  CVL Server Down
    ...    ELSE  Log To Console  Continue