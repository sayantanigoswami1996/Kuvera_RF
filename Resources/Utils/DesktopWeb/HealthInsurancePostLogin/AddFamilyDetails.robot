*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Verify PostLogin Add Family Details
    Verify PostLogin Account Creation
    Navigate To Insure Page And Click Premium Button
    Wait And Click  ${KU_W_HI_missingPANOkayBtn}
    Form Details Page
    Navigate To Insure Page And Click Premium Button
    Wait For Element Visibility  ${KU_W_HI_pageTitle}
    # Text Validation Of Title and Subtitle
    Verify Element and Text  ${KU_W_HI_pageTitle}  ${e_FM_addFamMemberTitle}
    Verify Element and Text  ${KU_W_FM_addFamMemberSubTitle1}  ${e_FM_addFamMemberSubTitle1}
    Verify Element and Text  ${KU_W_FM_addFamMemberSubTitle2}  ${e_FM_AddFamMemberSubTitle2}
    # Info Link Popup
    Wait And Click   ${KU_W_FM_infoLink}
    Verify Element And Text  ${KU_W_FM_infoPopupTitle1}  ${e_FM_infoPopupTitle1}
    Verify Element And Text  ${KU_W_FM_infoPopupTitle2}  ${e_FM_infoPopupTitle2}
    Wait And Click  ${KU_W_FM_popupOkayBtn}
    # Add Gender to Primary Applicant
    Verify Element And Text  ${KU_W_FM_insuranceHolderName}  ${e_FM_name}
    Wait And Click  ${KU_W_FM_primaryApplicant}
    Wait And Click  ${KU_W_FM_dropdown}
    Wait And Click  ${KU_W_FM_primaryApplicantGender}
    Wait Scroll And Click Element  ${KU_W_FM_doneBtn}
    # Add Member 
    Wait And Click  ${KU_W_FM_addMemberMenu}
    Wait And Click  ${KU_W_FM_memberName}
    Input Text  ${KU_W_FM_memberName}  ${e_FM_memberName}
    Wait And Click  ${KU_W_FM_dropdown}
    Click Element  ${KU_W_FM_daughter} 
    Wait And Click  ${KU_W_FM_DOB}
    FOR  ${i}  IN RANGE  1   15
        Wait And Click  ${KU_W_FM_monthOnCalendar}
    END
    Wait And Click  ${KU_W_FM_dateOnCalendar}
    Wait And Click  ${KU_W_FM_doneBtn}
    Wait Scroll And Click Element  ${KU_W_FM_proceedBtn}

    # Select City 
    Wait For Element Visibility  ${KU_W_SC_selectCitySubTitle}
    Verify Element And Text  ${KU_W_HI_pageTitle}  ${e_SC_selectCityTitle}
    Verify Element And Text  ${KU_W_SC_selectCitySubTitle}  ${e_SC_selectCitySubTitle}
    Verify Element And Text  ${KU_W_SC_cityHeader}  ${e_SC_cityHeader}
    Verify Element And Text  ${KU_W_SC_networkHospitalHeader}  ${e_SC_networkHospitalHeader}
    Wait And Click  ${KU_W_SC_hospitalInfoLink} 
    Verify Element And Text  ${KU_W_SC_infoLinkPopupTitle}  ${e_SC_infoLinkPopupTitle}
    Wait And Click  ${KU_W_SC_infoLinkOkayBtn}
    Verify City Name And Count Of Hospitals
    Verify Presence Of List Of Hospitals
    Click Element  ${KU_W_SC_OtherAddBtn}
    Click Element  ${KU_W_SC_searchBox}
    Input Text  ${KU_W_SC_searchBox}  ${e_SC_searchedCityName}
    Click Element  ${KU_W_SC_searchedCity}
    Click Element  ${KU_W_SC_viewPlanBtn} 

    # Build Your Coverage
    Wait For Element Visibility  ${KU_W_BYC_noRentPolicy}
    Verify Element And Text  ${KU_W_HI_pageTitle}  ${e_BYC_buildCoverageTitle}
    Verify Health Protect Details
    Verify Policy Documents  ${KU_W_BYC_policyDocuLink}
    Verify Policy Details On Landing Screen
    Verify Policy Details On Popup
    Verify FAQ questions
    Wait Scroll And Click Element  ${KU_W_BYC_proceedBtn}

    # Daily Cash Coverage
    Wait For Element Visibility  ${KU_W_DYC_cashCoverageSubTitle}
    Verify Element And Text  ${KU_W_HI_pageTitle}  ${e_DYC_dailyCashCoverageTitle}
    Verify Element And Text  ${KU_W_DYC_cashCoverageSubTitle}  ${e_DYC_dailyCashCoverageSubTitle}
    Verify Element And Text  ${KU_W_DYC_coverageDesc1}  ${e_DYC_dailyCashCoverageDesc1}
    Verify Page Contains Image  ${KU_W_DYC_coverageImg1}
    Verify Element And Text  ${KU_W_DYC_coverageDesc2}  ${e_DYC_dailyCashCoverageDesc2}
    Verify Page Contains Image  ${KU_W_DYC_coverageImg2}
    Verify Element And Text  ${KU_W_DYC_coverageDesc3}  ${e_DYC_dailyCashCoverageDesc3}
    Verify Page Contains Image  ${KU_W_DYC_coverageImg3}
    Verify Cash Cover Card Details




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
    Log To Console  ${hospitalListCount}
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
    Verify Page Contains Image   ${KU_W_BYC_noTreatmentImage}
    Verify Element And Text  ${KU_W_BYC_noCoPaymentPolicy}  ${e_BYC_noCoPaymentPolicy}
    Verify Element And Text  ${KU_W_BYC_noCoPaymentPolicyDesc}  ${e_BYC_noCoPaymentPolicyDesc}
    Verify Page Contains Image   ${KU_W_BYC_noCopaymentImage}
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
    Wait Scroll And Click Element  ${KU_W_BYC_gotItPopupBtn}
    
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
    Verify Element And Text  ${KU_W_BYC_indemnityPremium}  ${e_BYC_premiumText}
    Verify Element And Text  ${KU_W_BYC_indemnityPremiumVal}  ${e_BYC_indemnityPremiumValue}
    Verify Page Contains Image  ${KU_W_BYC_superCoverInfoLink}
    Click Image  ${KU_W_BYC_superCoverInfoLink} 
    Verify Page Contains Element  ${KU_W_BYC_infoLinkDesc}
    Verify Element And Text  ${KU_W_BYC_superCoverBaseValue}  ${e_BYC_superCoverBaseValue}
    Verify Element And Text  ${KU_W_BYC_superCoverPremium}  ${e_BYC_premiumText}
    Verify Element And Text  ${KU_W_BYC_superCoverPremiumVal}  ${e_BYC_superCoverPremiumValue}
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
    Verify Element And Text  ${KU_W_DYC_cashcoverCardTitle}  ${e_DYC_dailyCashCoverageTitle}
    Verify Policy Documents  ${KU_W_DYC_policyDocumentsLink}