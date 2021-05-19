*** Keywords ***

Verify PostLogin FD Menu Navigation With KYC
    Log To Console  FD - Explore
    Navigate To FD And Start FD
    Verify Cumulative And Non Cumulative Popup
    Verify Timer Popup
    Verify PAN Details Popup
    Add Address Details
    Add Nominees Details
    Confirm FD Details
    FD Order Placed And Verify In Process Page

Verify PostLogin FD Menu Navigation Without KYC
    Log To Console  FD-NONKYC
    Navigation To FD For NONKYC  ${e_KYC_PANNumber}  ${e_KYC_dateField}  ${e_KYC_monthField}  ${e_KYC_yearField}
    Verify Timer Popup
    Wait For Element Visibility  ${KU_W_FD_verifyDetailsTitle}
    Verify Page Contains Element  ${KU_W_FD_verifyDetailsTitle}
    Wait And Click  ${KU_W_FD_mrsLabel}
    Wait And Click  ${KU_W_FD_femaleLabel}
    Wait And Click  ${KU_W_FD_verifyDetailsBtn}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_FD_tellUsAboutYourself}
    Verify Element And Text  ${KU_W_FD_tellUsAboutYourself}  ${e_FD_tellUsAbout} 
    Verify Page Contains Element  ${KU_W_FD_tellUsAboutYourselfDesc} 
    Wait And Click  ${KU_W_postlogin_continue}
    Wait For Element Visibility  ${KU_W_FD_addDetsLabel}
    Verify Page Contains Element  ${KU_W_FD_addDetsLabel}

Verify PostLogin FD Menu Navigation With Invalid PAN
    Log To Console  FD - Invalid PAN
    Navigation To FD For NONKYC  ${e_KYC_invalidPANNumber}  ${e_KYC_dateField}  ${e_KYC_monthField}  ${e_KYC_yearField}
    Verify Timer Popup
    Wait For Element Visibility  ${KU_W_FD_invalidPAN_DOBMsg}
    Verify Element And Text  ${KU_W_FD_invalidPAN_DOBMsg}  ${e_FD_invalidPANMsg}
    Wait And Click  ${KU_W_postlogin_okayBtn}

Verify PostLogin FD Menu Navigation With Invalid DOB
    Log To Console  FD - Invalid DOB
    Navigation To FD For NONKYC  ${e_KYC_PANNumber}  ${e_FD_nomineeDOB}  ${e_FD_nomineeMOB}  ${e_FD_nomineeYOB}
    Verify Timer Popup
    Wait For Element Visibility  ${KU_W_FD_invalidPAN_DOBMsg}
    Verify Element And Text  ${KU_W_FD_invalidPAN_DOBMsg}  ${e_FD_invalidDOBMsg}
    Wait And Click  ${KU_W_postlogin_okayBtn}
    

    
Navigate To FD And Start FD
    Wait And Click  ${KU_W_investLink}
    Sleep  1s
    Wait And Click  ${KU_W_FD_FDIcon}
    Sleep  2s
    Verify Page Contains Element  ${KU_W_FD_allFDTab}
    Verify Login And Signup On Prelogin
    Wait And Click  ${KU_W_FD_bajajFinance}
    Wait And Click  ${KU_W_FD_startFDBtn}

Fill in KYC For FD
    Wait For Element Visibility  ${KU_W_KYC_startBtn}
    Click Element  ${KU_W_KYC_startBtn}
    KYC Form Details Page  ${e_FD_PAN}  ${e_FD_mobileNum}  ${e_FD_dateField}  ${e_FD_monthField}  ${e_FD_yearField}
    Confirm Account Details Page
    Link Bank Account  ${e_FD_KYCBankCertifyText}

Verify Cumulative And Non Cumulative Popup
    # Cumulative
    Verify Page Contains Element  ${KU_W_FD_FDDetailsTitle}
    Verify Page Contains Element  ${KU_W_FD_investmentAmtTitle}
    Verify Page Contains Element  ${KU_W_FD_defaultInvestmentVal}
    Verify Page Contains Element  ${KU_W_FD_incrementVal}
    Wait And Click  ${KU_W_FD_incrementOption}
    Verify Page Contains Element  ${KU_W_FD_decrementOption} 
    Wait And Click  ${KU_W_FD_decrementOption} 
    Verify Page Contains Element  ${KU_W_FD_nonCumulativeBtn}
    Verify Page Contains Element  ${KU_W_FD_cumulativeBtn}
    Verify Page Contains Element  ${KU_W_FD_minInvestmentVal}
    Verify Page Contains Element  ${KU_W_FD_maxInvestmentVal}
    Verify Page Contains Element  ${KU_W_FD_tenureLabel}
    Verify Page Contains Element  ${KU_W_FD_incrementBtn} 
    Verify Page Contains Element  ${KU_W_FD_depositOptions} 
    Verify Page Contains Element  ${KU_W_FD_interestPayoutLabel}
    Verify Page Contains Element  ${KU_W_FD_maturityVal}
    Verify Element And Text  ${KU_W_FD_tenurePeriod}  ${e_FD_defaultTenurePeriod}
    Move Slider  ${KU_W_FD_slider}
    Verify Element And Text  ${KU_W_FD_tenurePeriod}  ${e_FD_increasedTenurePeriod}
    Scroll Untill View  ${KU_W_FD_seniorCitizenLabel} 
    Verify Page Contains Element  ${KU_W_FD_seniorCitizenLabel} 
    Verify Page Contains Element  ${KU_W_FD_interestRateLabel} 
    Verify Page Contains Element  ${KU_W_FD_maturityAmtLabel}
    Scroll Untill View  ${KU_W_FD_interestRateCummulative}
    Verify Page Contains Element  ${KU_W_FD_interestRateCummulative}
    Verify Page Contains Element  ${KU_W_FD_beforeTaxesLabel}
    Verify Page Contains Element  ${KU_W_FD_maturityLabel}
    # Non Cumulative
    Wait And Click  ${KU_W_FD_nonCumulativeBtn}
    Wait And Click  ${KU_W_FD_payoutContainer} 
    Verify Element And Text  ${KU_W_FD_payout1}  ${e_FD_payout1}
    Verify Element And Text  ${KU_W_FD_payout2}  ${e_FD_payout2}
    Verify Element And Text  ${KU_W_FD_payout3}  ${e_FD_payout3}
    Verify Element And Text  ${KU_W_FD_payout4}  ${e_FD_payout4}
    Sleep  1s
    Go Back
    Sleep  1s
    Wait And Click  ${KU_W_FD_checkBox}
    Scroll Untill View  ${KU_W_FD_seniorCitizenIntRate} 
    Verify Page Contains Element  ${KU_W_FD_seniorCitizenIntRate} 
    Verify Page Contains Element  ${KU_W_FD_monthlyAmtLabel}
    Scroll Untill View  ${KU_W_FD_beforeTaxesLabel}
    Verify Page Contains Element  ${KU_W_FD_beforeTaxesLabel}
    Verify Page Contains Element  ${KU_W_FD_maturityLabel}
    Sleep  2s
    Wait And Click  ${KU_W_FD_confirmFDDeatilsBtn}

Verify Timer Popup
    Verify Page Contains Element  ${KU_W_FD_checkingEligibilityLabel}
    Verify Page Contains Element  ${KU_W_FD_PANVerifiedKYCLabel}
    Sleep  80s   

Verify PAN Details Popup
    Verify Page Contains Element  ${KU_W_FD_verifyDetailsTitle}
    Verify Page Contains Element  ${KU_W_FD_PANLabel}
    Verify Disabled Element  ${KU_W_FD_PANNum}
    Verify Element And Text  ${KU_W_FD_PANNum}  ${e_FD_PAN}
    Verify Page Contains Element  ${KU_W_FD_unslectedRadioBtn1} 
    Verify Page Contains Element  ${KU_W_FD_unslectedRadioBtn2} 
    Verify Page Contains Element  ${KU_W_FD_unslectedRadioBtn3} 
    Verify Page Contains Element  ${KU_W_FD_fullNameLabel} 
    Verify Page Contains Element  ${KU_W_FD_msLabel}
    Verify Page Contains Element  ${KU_W_FD_mrsLabel}
    Verify Page Contains Element  ${KU_W_FD_mrLabel}
    Verify Disabled Element  ${KU_W_FD_nameOnPAN}
    Verify Element And Text  ${KU_W_FD_nameOnPAN}  ${e_FD_nameOnPAN} 
    Verify Page Contains Element  ${KU_W_FD_emailLabel}
    Verify Enabled Element  ${KU_W_FD_emailID}
    Verify Element And Text  ${KU_W_FD_emailID}  ${emailID}
    Verify Page Contains Element  ${KU_W_FD_mobileNumLabel}
    Verify Enabled Element  ${KU_W_FD_mobileNum}
    Verify Element And Text  ${KU_W_FD_mobileNum}  ${e_KYC_mobileNumField}
    Scroll Untill View  ${KU_W_FD_genderLabel} 
    Verify Page Contains Element  ${KU_W_FD_genderLabel} 
    Verify Page Contains Element  ${KU_W_FD_femaleRadioBtn}
    Verify Page Contains Element  ${KU_W_FD_maleRadioBtn}
    Verify Page Contains Element  ${KU_W_FD_othersRadioBtn}
    Verify Page Contains Element  ${KU_W_FD_femaleLabel}
    Verify Page Contains Element  ${KU_W_FD_maleLabel} 
    Verify Page Contains Element  ${KU_W_FD_othersLabel}
    Verify Associated With Bajaj Popup
    Verify Disabled Element  ${KU_W_FD_disabledBtn} 
    Wait And Click  ${KU_W_FD_mrLabel}
    Wait And Click  ${KU_W_FD_maleLabel}
    Wait And Click  ${KU_W_FD_verifyDetailsBtn} 

Verify Associated With Bajaj Popup
    Scroll Untill View  ${KU_W_FD_associatedWithBajajLabel}
    Verify Page Contains Element  ${KU_W_FD_associatedWithBajajLabel}
    Verify Page Contains Element  ${KU_W_FD_bajajDefaultVal}
    Wait And Click  ${KU_W_FD_bajajDefaultVal}
    Verify Page Contains Element  ${KU_W_FD_bajajPopupTitle}
    Verify Page Contains Element  ${KU_W_FD_defaultCheckedBox}
    Verify Page Contains Element  ${KU_W_FD_noTitle}
    Verify Page Contains Element  ${KU_W_FD_RDLabel}
    Verify Page Contains Element  ${KU_W_FD_BFLLabel}
    Verify Page Contains Element  ${KU_W_FD_shareholderLabel} 
    Verify Page Contains Element  ${KU_W_FD_employeeLabel}
    ${checkBoxCount} =  Get Element Count  xpath=//img[@class='b-check-box__img k-asc']
    FOR  ${i}  IN RANGE  2   ${checkBoxCount}+1
        Wait Scroll And Click Element  xpath=(//img[@class='b-check-box__img k-asc'])[${i}]
    END
    Wait And Click  ${KU_W_FD_noTitle}
    ${uncheckBoxCount} =  Get Element Count  xpath=//div[@class='b-standard-checkbox__checkmark k-mr16 k-cursor--pointer k-flex']
    FOR  ${i}  IN RANGE  1   ${uncheckBoxCount}+1
        Verify Page Contains Element  xpath=(//div[@class='b-standard-checkbox__checkmark k-mr16 k-cursor--pointer k-flex'])[${i}]
    END
    Wait And Click  ${KU_W_FD_closeBajajPopup}

Add Address Details
    Wait For Element Visibility  ${KU_W_FD_addDetsLabel}
    Verify Page Contains Element  ${KU_W_FD_addDetsLabel}
    Verify Page Contains Element  ${KU_W_FD_addDetsDesc} 
    Verify Disabled Element  ${KU_W_FD_disabledBtn} 
    Wait For Element Visibility  ${KU_W_FD_houseNumField}
    Input Text  ${KU_W_FD_houseNumField}  ${e_KYC_address1Field}
    Input Text  ${KU_W_FD_areaField}  ${e_KYC_address2Field} 
    Input Text  ${KU_W_FD_cityField}  ${e_HI_cityField}
    Input Text  ${KU_W_FD_stateField}  ${e_HI_stateField}
    Input Text  ${KU_W_FD_pincodeField}  ${e_HI_pincodeField} 
    Wait And Click  ${KU_W_FD_addAddressBtn} 

Add Nominees Details
    Wait For Element Visibility  ${KU_W_FD_addNomineeLabel} 
    Verify Page Contains Element  ${KU_W_FD_addNomineeLabel} 
    Verify Page Contains Element  ${KU_W_FD_fillNomineeDets} 
    Wait And Click  ${KU_W_postlogin_skipButton}
    Go Back
    Wait For Element Visibility  ${KU_W_FD_nomineeNameField} 
    Input Text  ${KU_W_FD_nomineeNameField}  ${e_FD_nomineeName}
    Enter DOB  ${KU_W_KYC_dateField}  ${e_FD_nomineeDOB}  ${KU_W_KYC_monthField}  ${e_FD_nomineeMOB}  ${KU_W_KYC_yearField}  ${e_FD_nomineeMajorYOB}
    Verify Page Contains Element  ${KU_W_FD_unslectedRadioBtn1} 
    Verify Page Contains Element  ${KU_W_FD_unslectedRadioBtn2} 
    Verify Page Contains Element  ${KU_W_FD_unslectedRadioBtn3} 
    Wait And Click  ${KU_W_FD_maleLabel} 
    Wait And Click  ${KU_W_FD_relationshipDropdown1}
    Wait And Click  ${KU_W_FD_son}
    Enter DOB  ${KU_W_KYC_dateField}  ${e_FD_nomineeDOB}  ${KU_W_KYC_monthField}  ${e_FD_nomineeMOB}  ${KU_W_KYC_yearField}  ${e_FD_nomineeYOB}
    Scroll Untill View  ${KU_W_FD_minorNomineeMsg}
    Verify Element And Text  ${KU_W_FD_minorNomineeMsg}  ${e_FD_minorNomineeMsg}
    Wait And Click  ${KU_W_FD_guardianNomineeName} 
    Input Text  ${KU_W_FD_guardianNomineeName}  ${e_KYC_nomineeName}
    Enter DOB  ${KU_W_KYC_dateField}  ${e_KYC_nomineeDOB}  ${KU_W_KYC_monthField}  ${e_KYC_nomineeMOB}  ${KU_W_KYC_yearField}  ${e_KYC_nomineeYOB}
    Wait And Click  ${KU_W_FD_relationshipDropdown2}
    Wait And Click  ${KU_W_FD_guradianRelationship}
    Wait And Click  ${KU_W_FD_addNoimineeBtn}

Select Bank Account Page
    Verify Page Contains Element  ${KU_W_FD_selectBank}
    Verify Page Contains Element  ${KU_W_FD_selectBankDesc}
    Wait And Click  ${KU_W_FD_supportedBankLink} 
    Verify Page Contains Element  ${KU_W_FD_supportedBankTitle}
    Verify Page Contains Element  ${KU_W_FD_supportedBankList}
    Wait And Click  ${KU_W_FD_supportedBankClose}
    Verify Page Contains Element  ${KU_W_FD_bankAccValidateMsg}
    Verify Page Contains Element  ${KU_W_FD_addBankAcc}
    Verify Disabled Element  ${KU_W_FD_disabledSelectBankBtn}

Add Bank Account Details
    Wait And Click  ${KU_W_FD_addBankAcc}
    Verify Page Contains Element  ${KU_W_FD_addBankTitle}
    Verify Page Contains Element  ${KU_W_FD_addBankDesc}
    Input Text  ${KU_W_FD_IFSCField}  ${e_FD_IFSC}
    Wait For Element Visibility  ${KU_W_FD_bankBranchDets}
    Verify Page Contains Element  ${KU_W_FD_bankBranchDets}
    Input Text  ${KU_W_FD_accNumField}  ${e_FD_accNum}
    Input Text  ${KU_W_FD_confirmAccNumField}  ${e_FD_accNum}
    Verify Page Contains Element  ${KU_W_FD_currentField} 
    Wait And Click  ${KU_W_FD_savingsField} 
    Scroll Untill View  ${KU_W_FD_consentMsg}
    Verify Page Contains Element  ${KU_W_FD_consentMsg}
    Wait And Click  ${KU_W_FD_checkBox}
    Wait And Click  ${KU_W_postlogin_continue}
    Verify Page Contains Element  ${KU_W_FD_selectedBankName}
    Verify Page Contains Element  ${KU_W_FD_selectedBankAccDets} 
    Wait And Click  ${KU_W_FD_selectedBankName}
    Wait And Click  ${KU_W_FD_selectBankBtn}
    Sleep  5s

Navigation To FD For NONKYC
    [Arguments]  ${PANNumber}  ${date}  ${month}  ${year}
    Navigate To FD And Start FD
    Move Slider  ${KU_W_FD_slider}
    Wait And Click  ${KU_W_FD_confirmFDDeatilsBtn}
    Verify Page Contains Element  ${KU_W_FD_enterPAN}
    Input Text  ${KU_W_FD_enterPAN}  ${PANNumber}
    Enter DOB  ${KU_W_KYC_dateField}  ${date}  ${KU_W_KYC_monthField}  ${month}  ${KU_W_KYC_yearField}  ${year}
    Wait And Click  ${KU_W_postlogin_continue}    

Confirm FD Details
    Wait For Element Visibility  ${KU_W_FD_confirmFDDetsTitle} 
    Verify Page Contains Element  ${KU_W_FD_confirmFDDetsTitle} 
    Verify Page Contains Element  ${KU_W_FD_FDName}
    Verify Page Contains Element  ${KU_W_FD_nameLabel}
    Verify Page Contains Element  ${KU_W_FD_holderName}
    Verify Page Contains Element  ${KU_W_FD_amtLabel}
    Verify Page Contains Element  ${KU_W_FD_FDAmt}
    Verify Page Contains Element  ${KU_W_FD_FDRateLabel}
    Verify Page Contains Element  ${KU_W_FD_tenureLabel}
    Verify Page Contains Element  ${KU_W_FD_tenure} 
    Verify Page Contains Element  ${KU_W_FD_payoutLabel}
    Verify Page Contains Element  ${KU_W_FD_payout}
    Verify Page Contains Element  ${KU_W_FD_payByLabel} 
    Verify Page Contains Element  ${KU_W_FD_payByBank}
    Verify Page Contains Element  ${KU_W_FD_payByAcc}
    Verify Page Contains Element  ${KU_W_FD_completeDisclaimer}
    Wait And Click  ${KU_W_FD_completeDisclaimer}
    Verify Page Contains Element  ${KU_W_FD_disclaimerTitle} 
    Verify Element And Text  ${KU_W_FD_disclaimerDesc1}  ${e_FD_disclaimerDesc1}
    Verify Element And Text  ${KU_W_FD_disclaimerDesc2}  ${e_FD_disclaimerDesc2}
    Verify Element And Text  ${KU_W_FD_T&CText}  ${e_FD_T&CText}
    Wait And Click  ${KU_W_FD_T&CCheckBox}
    Wait And Click  ${KU_W_postlogin_placeOrder}
    Wait And Click  ${KU_W_postlogin_successBtn}

FD Order Placed And Verify In Process Page
    Wait For Element Visibility  ${KU_W_FD_FDOrderPlaced} 
    Verify Page Contains Element  ${KU_W_FD_FDOrderPlaced} 
    Verify Page Contains Element  ${KU_W_FD_FDOrderPlacedDesc}
    Verify Page Contains Element  ${KU_W_FD_FDOrdered}
    Verify Page Contains Element  ${KU_W_FD_orderPlacedLabel}
    Verify Page Contains Element  ${KU_W_FD_orderPlacedDate} 
    Verify Page Contains Element  ${KU_W_FD_tenureLabel}
    Verify Page Contains Element  ${KU_W_FD_tenure}
    Scroll Untill View  ${KU_W_FD_FDAmt}
    Verify Page Contains Element  ${KU_W_FD_FDAmt}
    Verify Page Contains Element  ${KU_W_FD_amtInvestedLabel}
    Scroll Untill View  ${KU_W_FD_orderPlacedIntRate}
    Verify Page Contains Element  ${KU_W_FD_orderPlacedIntRate}
    Wait And Click  ${KU_W_postlogin_greatBtn} 
    Verify Page Contains Element  ${KU_W_FD_orderOnInProcess}
    Verify Element And Text  ${KU_W_FD_FDOrderedName}  ${e_FD_FDName} 
    Verify Page Contains Element  ${KU_W_postlogin_inProcessTag}
    Verify Page Contains Element  ${KU_W_FD_tenure} 
    Verify Page Contains Element  ${KU_W_postlogin_orderStatusLabel} 
    Verify Element And Text  ${KU_W_FD_FDAmtInvested}  ${e_FD_FDAmtInvested}