*** Settings ***

Library   SeleniumLibrary

*** Keywords ***

Verify Fill In Of KYC Form Details
    Wait For Element Visibility  ${KU_W_KYC_startBtn}
    Click Element  ${KU_W_KYC_startBtn}
    KYC Form Details Page

KYC Form Details Page
    Log To Console  KYC Form
    Wait For Element Visibility  ${KU_W_KYC_formTitle}
    Verify Element And Text  ${KU_W_KYC_formTitle}  ${e_KYC_formTitle}
    Verify Element And Text  ${KU_W_KYC_formSubTitle}  ${e_KYC_formSubTitle}  
    Verify Element And Text  ${KU_W_KYC_PANLabel}  ${e_KYC_PANLabel}
    Click Element  ${KU_W_KYC_PANTextField}
    Input Text  ${KU_W_KYC_PANTextField}  ${e_KYC_PANNumber}
    Verify Element And Text  ${KU_W_KYC_DOBLabel}  ${e_KYC_DOBLabel}
    Click Element  ${KU_W_KYC_dateField}
    Input Text  ${KU_W_KYC_dateField}  ${e_KYC_dateField}
    Click Element  ${KU_W_KYC_monthField} 
    Input Text  ${KU_W_KYC_monthField}  ${e_KYC_monthField}
    Click Element  ${KU_W_KYC_yearField}
    Input Text  ${KU_W_KYC_yearField}  ${e_KYC_yearField}
    Verify Element And Text  ${KU_W_KYC_mobileNumLabel}  ${e_KYC_mobileNumLabel}
    Click Element  ${KU_W_KYC_mobileNumField}
    Input Text  ${KU_W_KYC_mobileNumField}  ${e_KYC_mobileNumField}
    Wait Scroll And Click Element  ${KU_W_kyc_nextBtn}
    ${isPopupVisible} =  Run Keyword And Return Status  Visibility Of The Popup
        Run Keyword If  ${isPopupVisible}  Log To Console  CVL Server Down
        ...    ELSE  Log To Console  Continue 
    Wait Scroll And Click Element  ${KU_W_KYC_residenceStatus}
    Wait Scroll And Click Element  ${KU_W_KYC_residentIndividual}
    Click Element  ${KU_W_KYC_address1Field}
    Input Text  ${KU_W_KYC_address1Field}  ${e_KYC_address1Field}
    Wait Scroll And Click Element  ${KU_W_KYC_address2Field}
    Input Text  ${KU_W_KYC_address2Field}  ${e_KYC_address2Field}
    Wait Scroll And Click Element  ${KU_W_KYC_cityField}
    Input Text  ${KU_W_KYC_cityField}  ${e_HI_cityField}
    Wait Scroll And Click Element  ${KU_W_HI_pincodeField} 
    Input Text  ${KU_W_HI_pincodeField}   ${e_HI_pincodeField}
    Click Element  ${KU_W_KYC_countryField}
    Input Text  ${KU_W_KYC_countrySearchBar}  ${e_KYC_countryField}
    Click Element  ${KU_W_KYC_countryDropdownList}
    Wait Scroll And Click Element  ${KU_W_KYC_stateField} 
    Input Text  ${KU_W_KYC_stateField}  ${e_HI_stateField} 
    Click Element  ${KU_W_HI_state_cityDropdownList}
    Wait Scroll And Click Element  ${KU_W_KYC_gender}
    Wait Scroll And Click Element  ${KU_W_KYC_maritalStatus}
    Wait Scroll And Click Element  ${KU_W_KYC_taxReturnFiling}
    Wait Scroll And Click Element  ${KU_W_KYC_updateBtn}
    Verify Page Contains Element  ${KU_W_KYC_addSignatureTitle}
    Verify Element And Text  ${KU_W_KYC_addSignatureSubTitle1}  ${e_KYC_addSignatureSubTitle1}
    Verify Element And Text  ${KU_W_KYC_addSignatureSubTitle2}  ${e_KYC_addSignatureSubTitle2}
    Add Signature
    Wait Scroll And Click Element  ${KU_W_KYC_OKBtn}
    Click Element  ${KU_W_KYC_popupOkBtn}
    Wait Scroll And Click Element  ${KU_W_KYC_confirmBtn}
    Wait And Click  ${KU_W_postlogin_kuverLogo} 

Add Signature
    Mouse Over  ${KU_W_KYC_canvasSpace}
    Click Element At Coordinates  ${KU_W_KYC_canvasSpace}  400  226
    Drag And Drop By Offset  ${KU_W_KYC_canvasSpace}  200  100
    Click Element At Coordinates  ${KU_W_KYC_canvasSpace}  250  140

Visibility Of The Popup
    Wait For Element Visibility  ${KU_W_KYC_errorFetchingPopup}
    Element Should Be Visible  ${KU_W_KYC_errorFetchingPopup}