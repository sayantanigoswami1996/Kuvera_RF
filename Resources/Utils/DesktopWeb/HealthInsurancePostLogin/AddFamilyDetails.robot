*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Verify PostLogin Add Family Details
    Wait Scroll And Click Element  ${KU_W_insure_checkPremiumBtn2} 
    Wait And Click  ${KU_W_HI_missingPANOkayBtn}
    Form Details Page
    Navigate To Insure Page And Click Premium Button
    Wait For Element Visibility  ${KU_W_HI_pageTitle}
    # Text Validation Of Title and Subtitle
    Log To Console  Add Family Member
    Verify Element and Text  ${KU_W_HI_pageTitle}  ${e_FM_addFamMemberTitle}
    Verify Element and Text  ${KU_W_FM_addFamMemberSubTitle1}  ${e_FM_addFamMemberSubTitle1}
    Verify Element and Text  ${KU_W_FM_addFamMemberSubTitle2}  ${e_FM_AddFamMemberSubTitle2}
    # Info Link Popup
    Wait And Click   ${KU_W_FM_infoLink}
    Verify Element And Text  ${KU_W_FM_infoPopupTitle1}  ${e_FM_infoPopupTitle1}
    Verify Element And Text  ${KU_W_FM_infoPopupTitle2}  ${e_FM_infoPopupTitle2}
    Wait And Click  ${KU_W_HI_okayBtn}
    # Add Gender to Primary Applicant
    Verify Element And Text  ${KU_W_FM_insuranceHolderName}  ${e_FM_name}
    Wait And Click  ${KU_W_FM_primaryApplicant}
    Wait And Click  ${KU_W_FM_dropdown}
    Wait And Click  ${KU_W_FM_primaryApplicantGender}
    Wait Scroll And Click Element  ${KU_W_HI_doneBtn} 
    # Add Member 
    Wait And Click  ${KU_W_FM_addMemberMenu}
    Wait And Click  ${KU_W_FM_memberName}
    Input Text  ${KU_W_FM_memberName}  ${e_FM_memberName}
    Wait And Click  ${KU_W_FM_dropdown}
    Click Element  ${KU_W_FM_daughter} 
    Wait And Click  ${KU_W_FM_DOB}
    FOR  ${i}  IN RANGE  1   15
        Click Element  ${KU_W_FM_monthOnCalendar}
    END
    Wait And Click  ${KU_W_FM_dateOnCalendar}
    Wait And Click  ${KU_W_HI_doneBtn} 
    Wait Scroll And Click Element  ${KU_W_HI_proceedBtn}

    # Select City 
    Log To Console  Select City
    Wait For Element Visibility  ${KU_W_SC_selectCitySubTitle}
    Verify Element And Text  ${KU_W_HI_pageTitle}  ${e_SC_selectCityTitle}
    Verify Element And Text  ${KU_W_SC_selectCitySubTitle}  ${e_SC_selectCitySubTitle}
    Verify Element And Text  ${KU_W_SC_cityHeader}  ${e_SC_cityHeader}
    Verify Element And Text  ${KU_W_SC_networkHospitalHeader}  ${e_SC_networkHospitalHeader}
    Wait And Click  ${KU_W_SC_hospitalInfoLink} 
    Verify Element And Text  ${KU_W_SC_infoLinkPopupTitle}  ${e_SC_infoLinkPopupTitle}
    Wait And Click  ${KU_W_HI_okayBtn}
    Verify City Name And Count Of Hospitals
    Verify Presence Of List Of Hospitals
    Wait And Click  ${KU_W_SC_OtherAddBtn}
    Wait And Click  ${KU_W_SC_searchBox}
    Input Text  ${KU_W_SC_searchBox}  ${e_SC_searchedCityName}
    Wait And Click  ${KU_W_SC_searchedCity}
    Wait And Click  ${KU_W_SC_viewPlanBtn} 

    # Build Your Coverage
    Log To Console  Build Your Coverage
    Wait For Element Visibility  ${KU_W_BYC_noRentPolicy}
    Verify Element And Text  ${KU_W_HI_pageTitle}  ${e_BYC_buildCoverageTitle}
    Verify Health Protect Details
    Verify Policy Documents  ${KU_W_BYC_policyDocuLink}
    Verify Policy Details On Landing Screen
    Verify Policy Details On Popup
    Verify FAQ questions
    Wait Scroll And Click Element  ${KU_W_HI_proceedBtn}

    # Daily Cash Coverage
    Log To Console  Daily Cash Coverage 
    Wait For Element Visibility  ${KU_W_DCC_cashCoverageSubTitle}
    Verify Element And Text  ${KU_W_HI_pageTitle}  ${e_DCC_dailyCashCoverageTitle}
    Verify Element And Text  ${KU_W_DCC_cashCoverageSubTitle}  ${e_DCC_dailyCashCoverageSubTitle}
    Verify Element And Text  ${KU_W_DCC_coverageDesc1}  ${e_DCC_dailyCashCoverageDesc1}
    Verify Page Contains Image  ${KU_W_DCC_coverageImg1}
    Verify Element And Text  ${KU_W_DCC_coverageDesc2}  ${e_DCC_dailyCashCoverageDesc2}
    Verify Page Contains Image  ${KU_W_DCC_coverageImg2}
    Verify Element And Text  ${KU_W_DCC_coverageDesc3}  ${e_DCC_dailyCashCoverageDesc3}
    Verify Page Contains Image  ${KU_W_DCC_coverageImg3}
    Verify Cash Cover Card Details
    Wait Scroll And Click Element  ${KU_W_HI_proceedBtn}

    # General Exclusions
    Log To Console  General Exclusions
    Wait For Element Visibility  ${KU_W_GE_generalExclusionSubTitle}
    Verify Element And Text  ${KU_W_HI_pageTitle}  ${e_GE_generalExclusionTitle}
    Verify Element And Text  ${KU_W_GE_generalExclusionSubTitle}  ${e_GE_generalExclusionSubTitle}
    Verify Illness List Details
    Click Image  ${KU_W_HI_checkBox}
    Wait Scroll And Click Element  ${KU_W_HI_proceedBtn}

    # Existing Illness
    Log To Console  Existing Illness
    Wait For Element Visibility  ${KU_W_EI_existingIllnessSubTitle}
    Verify Element And Text  ${KU_W_EI_existingIllnessTitle}  ${e_EI_existingIllnessTitle}
    Verify Page Contains Image  ${KU_W_EI_existingIllnessImg}
    Verify Element And Text  ${KU_W_EI_existingIllnessSubTitle}  ${e_EI_existingIllnessSubTitle}
    Click Image  ${KU_W_EI_existingIllnessInfoLink}
    Verify Element And Text  ${KU_W_EI_infoLinkDetail}  ${e_EI_infoLinkDetails}
    Verify Element And Text  ${KU_W_EI_infoLinkSubDetail}  ${e_EI_infoLinkSubDetails}
    Wait And Click  ${KU_W_HI_okayBtn}
    # No Illness Button
    Wait For Element Visibility  ${KU_W_EI_noIllnessBtnTitle}
    Verify Element And Text  ${KU_W_EI_noIllnessBtnTitle}  ${e_EI_noIllnessBtnTitle}
    Verify Element And Text  ${KU_W_EI_noIllnessBtnSubTitle}  ${e_EI_noIllnessBtnSubTitle}
    Verify Page Contains Image  ${KU_W_EI_noIllnessBtnImg}
    # Illness Button
    Wait For Element Visibility  ${KU_W_EI_illnessBtnTitle}
    Verify Element And Text  ${KU_W_EI_illnessBtnTitle}  ${e_EI_illnessBtnTitle}
    Verify Element And Text  ${KU_W_EI_illnessBtnSubTitle}  ${e_EI_illnessBtnSubTitle}
    Verify Page Contains Image  ${KU_W_EI_illnessBtnImg}
    Click Element  ${KU_W_EI_illnessBtnTitle}
    Existing Illness Details
    Sleep  1s
    Click Element  ${KU_W_EI_noIllnessBtnTitle}

    # Contact Details
    Log To Console  Contact Details
    Wait For Element Visibility  ${KU_W_CD_contactDetailsSubTitle}
    Verify Element And Text  ${KU_W_CD_contactDetailsTitle}  ${e_CD_contactDetailsTitle}
    Verify Element And Text  ${KU_W_CD_contactDetailsSubTitle}  ${e_CD_contactDetailsSubTitle}
    Fill In Contact Details Form
      
    # Add Nominee
    Log To Console  Add Nominee
    Wait For Element Visibility  ${KU_W_AN_baseIndemnityPolicy}
    Verify Element And Text  ${KU_W_AN_addNomineeTitle}  ${e_AN_addNomineeTitle}
    Click Element  ${KU_W_AN_baseIndemnityPolicy}
    Wait For Element Visibility  ${KU_W_AN_nomineeDetailsTitle}
    Verify Element And Text  ${KU_W_AN_nomineeDetailsTitle}  ${e_AN_nomineeDetailsTitle}
    Verify Element And Text  ${KU_W_AN_nomineeDetailsSubTitle}  ${e_AN_nomineeDetailsSubTitle}
    Fill In Nominee Details Form
    Wait And Click  ${KU_W_HI_proceedBtn}

Verify City Name And Count Of Hospitals
    # City Name
    Verify Element And Text  ${KU_W_SC_cityName1}  ${e_SC_cityName1}
    Verify Element And Text  ${KU_W_SC_cityName2}  ${e_SC_cityName2}
    Verify Element And Text  ${KU_W_SC_cityName3}  ${e_SC_cityName3}
    Verify Element And Text  ${KU_W_SC_cityName4}  ${e_SC_cityName4}
    Verify Element And Text  ${KU_W_SC_cityName5}  ${e_SC_cityName5}
    # Count of Hospitals
    Verify Element And Text  ${KU_W_SC_hospitalInCity1}  ${e_SC_hospitalInCity1}
    Verify Element And Text  ${KU_W_SC_hospitalInCity2}  ${e_SC_hospitalInCity2}
    Verify Element And Text  ${KU_W_SC_hospitalInCity3}  ${e_SC_hospitalInCity3}
    Verify Element And Text  ${KU_W_SC_hospitalInCity4}  ${e_SC_hospitalInCity4}
    Verify Element And Text  ${KU_W_SC_hospitalInCity5}  ${e_SC_hospitalInCity5}

Verify Presence Of List Of Hospitals
    # Get list count
    ${hospitalListCount} =  Get Element Count  xpath=//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number']
    # Iterate and verify all fund house details 
    FOR  ${i}  IN RANGE  1  ${hospitalListCount}+1
        Wait Scroll And Click Element  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[${i}]
        Verify Page Contains Element  ${KU_W_SC_hospitalsList}
        Click Element  ${KU_W_SC_hospitalListCloseBtn}
    END

Verify Policy Details On Landing Screen
    Wait For Element Visibility  ${KU_W_BYC_noRentPolicy}
    Verify Element And Text  ${KU_W_BYC_noRentPolicy}  ${e_BYC_noRentPolicy}
    Verify Page Contains Image  ${KU_W_BYC_noRentImage}
    Verify Element And Text  ${KU_W_BYC_noRentPolicyDesc}  ${e_BYC_noRentPolicyDesc} 
    Verify Element And Text  ${KU_W_BYC_noTreatmentPolicy}  ${e_BYC_noTreatmentPolicy}
    Verify Element And Text  ${KU_W_BYC_noTreatmentPolicyDesc}  ${e_BYC_noTreatmentPolicyDesc}
    Verify Page Contains Image  ${KU_W_BYC_noTreatmentImage}
    Verify Element And Text  ${KU_W_BYC_noCoPaymentPolicy}  ${e_BYC_noCoPaymentPolicy}
    Verify Element And Text  ${KU_W_BYC_noCoPaymentPolicyDesc}  ${e_BYC_noCoPaymentPolicyDesc}
    Verify Page Contains Image  ${KU_W_BYC_noCopaymentImage}
    Verify Element And Text  ${KU_W_BYC_waitingPeriodPolicy}  ${e_BYC_waitingPeriodPolicy}
    Verify Element And Text  ${KU_W_BYC_waitingPeriodPolicyDesc}  ${e_BYC_waitingPeriodPolicyDesc}
    Verify Page Contains Image  ${KU_W_BYC_waitingPeriodImage}

Verify Policy Details On Popup
    Wait Scroll And Click Element  ${KU_W_BYC_seeMoreLink}
    Verify Policy Details On Landing Screen
    Verify Element And Text  ${KU_W_BYC_30DayGuranteePolicy}  ${e_BYC_30DayGuranteePolicy}
    Verify Element And Text  ${KU_W_BYC_30DayGuranteePolicyDesc}  ${e_BYC_30DayGuranteePolicyDesc}
    Verify Page Contains Element  ${KU_W_BYC_30DayGuranteeImage}
    Verify Element And Text  ${KU_W_BYC_ayushCoveredPolicy}  ${e_BYC_ayushCoveredPolicy}
    Verify Element And Text  ${KU_W_BYC_ayushCoveredPolicyDesc}  ${e_BYC_ayushCoveredPolicyDesc}
    Verify Page Contains Element  ${KU_W_BYC_ayushCoveredImage}
    Verify Element And Text  ${KU_W_BYC_supportPolicy}  ${e_BYC_supportPolicy}
    Verify Element And Text  ${KU_W_BYC_supportPolicyDesc}  ${e_BYC_supportPolicyDesc}
    Verify Page Contains Element  ${KU_W_BYC_supportPolicyImage}
    Wait Scroll And Click Element  ${KU_W_HI_gotItPopupBtn}
    
Verify FAQ questions
    # Question 1
    Scroll Untill View  ${KU_W_BYC_FAQ_question2}
    Verify Element And Text  ${KU_W_BYC_FAQ_question1}  ${e_BYC_FAQ_question1}
    Wait For Element Visibility  ${KU_W_BYC_FAQ_arrowImg1}
    Click Element  ${KU_W_BYC_FAQ_arrowImg1}
    Sleep  1s
    Click Element  ${KU_W_BYC_FAQ_arrowImg1}
    Wait For Element Visibility  ${KU_W_BYC_FAQ_answer1}
    Verify Element And Text  ${KU_W_BYC_FAQ_answer1}  ${e_BYC_FAQ_answer1}
    Click Element  ${KU_W_BYC_FAQ_arrowImg1}
    # Question 2
    Scroll Untill View  ${KU_W_BYC_FAQ_question2}
    Verify Element And Text  ${KU_W_BYC_FAQ_question2}  ${e_BYC_FAQ_question2}
    Wait For Element Visibility  ${KU_W_BYC_FAQ_arrowImg2}
    Click Element  ${KU_W_BYC_FAQ_arrowImg2}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_BYC_FAQ_answer2}
    Verify Element And Text  ${KU_W_BYC_FAQ_answer2}  ${e_BYC_FAQ_answer2}
    Click Element  ${KU_W_BYC_FAQ_arrowImg2} 
    # Question 3
    Scroll Untill View  ${KU_W_BYC_FAQ_question3}
    Verify Element And Text  ${KU_W_BYC_FAQ_question3}  ${e_BYC_FAQ_question3}
    Wait For Element Visibility  ${KU_W_BYC_FAQ_arrowImg3}
    Click Element  ${KU_W_BYC_FAQ_arrowImg3}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_BYC_FAQ_answer3}
    Verify Element And Text  ${KU_W_BYC_FAQ_answer3}  ${e_BYC_FAQ_answer3}
    Click Element  ${KU_W_BYC_FAQ_arrowImg3} 

Verify Health Protect Details
    Wait For Element Visibility  ${KU_W_BYC_healthProtectTitle}
    Verify Element And Text  ${KU_W_BYC_healthProtectTitle}  ${e_BYC_healthProtectTitle}
    Verify Page Contains Image  ${KU_W_BYC_healthProtectImg}
    Verify Element And Text  ${KU_W_BYC_baseIndemnityTitle}  ${e_BYC_baseIndemnityTitle}
    Verify Element And Text  ${KU_W_BYC_superCoverTitle}  ${e_BYC_superCoverTitle}
    Verify Page Contains Image  ${KU_W_BYC_indemnityInfoLink}
    Click Image  ${KU_W_BYC_indemnityInfoLink} 
    Verify Page Contains Element  ${KU_W_BYC_infoLinkDesc}
    Verify Element And Text  ${KU_W_BYC_indemnityBaseValue}  ${e_BYC_indemnityBaseValue}
    Verify Element And Text  ${KU_W_BYC_indemnityPremium}  ${e_HI_premiumText}
    Verify Element And Text  ${KU_W_BYC_indemnityPremiumVal}  ${e_BYC_indemnityPremiumValue}
    Verify Page Contains Image  ${KU_W_BYC_superCoverInfoLink}
    Click Image  ${KU_W_BYC_superCoverInfoLink} 
    Verify Page Contains Element  ${KU_W_BYC_infoLinkDesc}
    Verify Element And Text  ${KU_W_BYC_superCoverBaseValue}  ${e_BYC_superCoverBaseValue}
    Verify Element And Text  ${KU_W_BYC_superCoverPremium}  ${e_HI_premiumText}
    Verify Element And Text  ${KU_W_BYC_superCoverPremiumVal}  ${e_HI_defaultPremiumValue} 
    Click Element  ${KU_W_BYC_superCoverDropdown}
    Click Element  ${KU_W_BYC_superCoverTopUpValue}
    Verify Element And Text  ${KU_W_BYC_superCoverPremiumVal}  ${e_BYC_topUpValue}
    # Sum Covered
    Verify Element And Text  ${KU_W_BYC_sumCoveredTitle}  ${e_BYC_sumCoveredTitle}
    Verify Element And Text  ${KU_W_BYC_sumCoveredSubTitle}  ${e_BYC_sumCoveredSubTitle}
    Verify Element And Text  ${KU_W_BYC_sumCoveredValue}  ${e_BYC_sumCoveredValue}
    Verify Element And Text  ${KU_W_BYC_totalPremiumValue}  ${e_BYC_totalPremiumValue}

Verify Policy Documents
    [Arguments]  ${policyDocumentLink}
    Wait And Click  ${policyDocumentLink}
    Verify Element And Text  ${KU_W_BYC_endorsementLink}  ${e_BYC_endorsementLink}
    Verify Element And Text  ${KU_W_BYC_cashlessHospitalLink}  ${e_BYC_cashlessHospitalLink}
    Verify Element And Text  ${KU_W_BYC_policyWordingLink}  ${e_BYC_policyWordingLink}
    Verify Element And Text  ${KU_W_BYC_generalExclusionsLink}  ${e_BYC_generalExclusionLink}
    # Get list count
    ${documentListCount} =  Get Element Count  xpath=//div[@class='b-insurance-policy-doc__doc-list'] 
    FOR  ${i}  IN RANGE  1   ${documentListCount}+1
        Wait And Click  xpath=(//div[@class='b-insurance-policy-doc__doc-list'])[${i}]
        Switch To Window
    END
    Click Image  ${KU_W_BYC_documentLinkCloseBtn}

Verify Cash Cover Card Details
    Verify Element And Text  ${KU_W_DCC_cashcoverCardTitle}  ${e_DCC_dailyCashCoverageTitle}
    Verify Page Contains Image  ${KU_W_DCC_cashCoverCardImg}
    Verify Element And Text  ${KU_W_DCC_selectDailyCash}  ${e_DCC_selectDailyCash}
    Verify Element And Text  ${KU_W_DCC_cashCardPremium}  ${e_HI_premiumText}
    Verify Element And Text  ${KU_W_DCC_defaultPremimVal}  ${e_HI_defaultPremiumValue} 
    Wait And Click  ${KU_W_DCC_2KDailyCashBtn}
    Verify Element And Text  ${KU_W_DCC_defaultPremimVal}  ${e_DCC_2KPremiumAmount}
    Verify Element And Text  ${KU_W_DCC_totalPremimVal}  ${e_DCC_totalPremiumAmount}
    Verify Policy Documents  ${KU_W_DCC_policyDocumentsLink}

Verify Illness List Details
    @{illness_list} =  Get WebElements  ${KU_W_GE_illnessPointers}
    # Validation of Fund Houses List on the first column
    Compare Lists  ${illness_list}  ${e_GE_illnessList}

Existing Illness Details
    Verify Element And Text  ${KU_W_EI_declareIllnessTitle}  ${e_EI_declareIllnessTitle}
    Verify Element And Text  ${KU_W_EI_declareIllnessSubTitle}  ${e_EI_declareIllnessSubTitle}
    Verify Element And Text  ${KU_W_EI_noIllnessBtnTitle}  ${e_EI_userIllnessTitle}
    Wait And Click  ${KU_W_EI_addBtn}
    Verify Element And Text  ${KU_W_EI_applicantIllnessTitle}  ${e_EI_applicantlllnessTitle}
    Verify Element And Text  ${KU_W_EI_applicantIllnessDesc1}  ${e_EI_applicantlllnessDesc1}
    Verify Element And Text  ${KU_W_EI_applicantIllnessDesc2}  ${e_EI_applicantlllnessDesc2}
    Click Element  ${KU_W_EI_generalExclusionLink}
    Verify Element And Text  ${KU_W_EI_generalExclusionPopupTitle}  ${e_EI_generalExclusionPopupTitle}
    Verify Illness List Details
    Wait Scroll And Click Element  ${KU_W_HI_gotItPopupBtn}
    Click Element  ${KU_W_EI_addIllnessField} 
    Clear Text Field  ${KU_W_EI_addIllnessField}
    Input Text  ${KU_W_EI_addIllnessField}  ${e_EI_addIllness}
    Wait Scroll And Click Element  ${KU_W_HI_doneBtn} 
    Go Back

Fill In Contact Details Form
    Verify Element And Text  ${KU_W_HI_phoneNum_usernameLabel}   ${e_CD_phoneNumLabel}
    Verify Element And Text  ${KU_W_CD_addressLabel}  ${e_CD_addressLabel}
    Click Element  ${KU_W_CD_addressField}
    Input Text  ${KU_W_CD_addressField}  ${e_CD_address}
    Verify Element And Text  ${KU_W_CD_stateLabel}  ${e_CD_stateLabel}
    Wait Scroll And Click Element  ${KU_W_CD_stateSearchBar}
    Input Text  ${KU_W_CD_stateSearchBar}  ${e_HI_stateField}
    Click Element  ${KU_W_HI_state_cityDropdownList}
    Wait Scroll And Click Element  ${KU_W_CD_citySearchBar}
    Input Text  ${KU_W_CD_citySearchBar}  ${e_HI_cityField} 
    Click Element  ${KU_W_HI_state_cityDropdownList}
    Verify Element And Text  ${KU_W_CD_cityLabel}  ${e_CD_cityLabel} 
    Wait For Element Visibility  ${KU_W_HI_pincodeField} 
    Input Text  ${KU_W_HI_pincodeField}   ${e_HI_pincodeField}
    Wait Scroll And Click Element  ${KU_W_HI_proceedBtn}

Fill In Nominee Details Form
    Verify Element And Text  ${KU_W_HI_phoneNum_usernameLabel}  ${e_AN_userNameLabel}
    Wait And Click  ${KU_W_AN_userName}
    Input Text  ${KU_W_AN_userName}  ${e_AN_userName}
    Verify Element And Text  ${KU_W_AN_realtionshipLabel}  ${e_AN_relationshipLabel}
    Click Image  ${KU_W_HI_dropdownIndicator}
    Click Element  ${KU_W_AN_husband}
    Click Image  ${KU_W_HI_checkBox}
    Wait And Click  ${KU_W_HI_doneBtn}