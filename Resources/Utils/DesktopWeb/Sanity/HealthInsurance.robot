*** Keywords ***

Verify PostLogin Prod HI Menu Navigation
    Insurance Landing Page
    Add Insurance Flow Before OTP

Insurance Landing Page
    Wait And Click  ${KU_W_insureLink}
    Wait And Click  ${KU_W_insure_groupHealth}
    Wait For Element Visibility  ${KU_W_insureHeaderTitle}  
    Verify Element And Text  ${KU_W_insureHeaderTitle}  ${e_insure_headerTitleText} 
    Verify Element And Text  ${KU_W_insureHeaderMsg}  ${e_insure_headerMsgText}
    Verify Element And Text  ${KU_W_insure_checkPremiumBtn1}  ${e_insure_checkPremiumBtnText}  
    Wait For Element Visibility  ${KU_W_insure_checkPremiumBtn1}
    Wait For Element Visibility  ${KU_W_insure_costDetailsHeaderTitle}     
    Scroll Untill View  ${KU_W_insure_costDetailsHeaderTitle}
    Verify Element and Text  ${KU_W_insure_costDetailsHeaderTitle}  ${e_insure_costDetailsHeaderText}
    # Treatment and Cost    
    Scroll Untill View  ${KU_W_insure_treatmentTitle} 
    Verify Element and Text  ${KU_W_insure_treatmentTitle}  ${e_insure_treatmentTitleText} 
    Verify Element and Text  ${KU_W_insure_treatmentCostTitle}  ${e_insure_treatmentCostTitleText} 
    Verify Element and Text  ${KU_W_insure_covid19Cost}  ${e_insure_covid19CostText}
    Verify Element and Text  ${KU_W_insure_cancerCareCost}  ${e_insure_cancerCareCostText}
    Verify Element and Text  ${KU_W_insure_OpenHeartSurgeryCost}  ${e_insure_openHeartSurgeryCostText}
    Verify Element and Text  ${KU_W_insure_kneeReplacementCost}  ${e_insure_kneeReplacementCostText}
    Verify Element and Text  ${KU_W_insure_covid19Title}  ${e_insure_covid19TitleText}
    Verify Element and Text  ${KU_W_insure_cancerCareTitle}  ${e_insure_cancerCareTitleText}
    Verify Element and Text  ${KU_W_insure_heartSurgeryTitle}  ${e_insure_openHeartSurgeryTitleText}
    Verify Element and Text  ${KU_W_insure_kneeReplacmentTitle}  ${e_insure_kneeReplacementTitleText}
    Verify Page Contains Image  ${KU_W_insure_covid19Image}
    Verify Page Contains Image  ${KU_W_insure_cancerCareImage}
    Scroll Untill View  ${KU_W_insure_openHeartSurgeryImage}
    Verify Page Contains Image  ${KU_W_insure_openHeartSurgeryImage}
    Verify Page Contains Image  ${KU_W_insure_kneeReplacementImage}
    # Group Health Insurance 
    Scroll Untill View  ${KU_W_insure_groupHealthInsuranceTitle}
    Verify Element and Text  ${KU_W_insure_groupHealthInsuranceTitle}  ${e_insure_grpHealthInsuranceTitleText} 
    Page Should Contain  ${e_insure_grpHealthInsuranceSubTitleText}
    @{actualInsurancePolicyList} =  Get WebElements  ${KU_W_insure_insurancePolicyLists}
    Compare Lists  ${actualInsurancePolicyList}  ${e_insure_policyListItem}
    # Feature Card
    Scroll Untill View  ${KU_W_insure_covid19CardTitle}
    Verify Element and Text  ${KU_W_insure_covid19CardTitle}  ${e_insure_covid19CardText} 
    Verify Element and Text  ${KU_W_insure_covid19Msg}  ${e_insure_covid19MsgText}

    Verify Element and Text  ${KU_W_insure_roomrentCardTitle}  ${e_insure_roomrentCardText}
    Verify Element and Text  ${KU_W_insure_roomrentMsg}  ${e_insure_roomrentMsgText} 
    Verify Element and Text  ${KU_W_insure_treatmentCappingCardTitle}  ${e_insure_treatmentCappingCardText}
    Verify Element and Text  ${KU_W_insure_treatmentCappingMsg}  ${e_insure_treatmentCappingMsgText}
    Verify Element and Text  ${KU_W_insure_copaymentCardTitle}  ${e_insure_copaymentCardText}
    Verify Element and Text  ${KU_W_insure_copaymentMsg}  ${e_insure_copaymentMsgText}
    Click Element  ${KU_W_insure_sliderButton}
    Sleep   1s
    Verify Element and Text  ${KU_W_insure_30daySettlemenCardTitle}  ${e_insure_30daySettlementCardText}
    Verify Element and Text  ${KU_W_insure_30daySettlemenMsg}  ${e_insure_30daySettlementMsgText}
    Verify Element and Text  ${KU_W_insure_ayushCoveredCardTitle}  ${e_insure_ayushCoveredCardText}
    Verify Element and Text  ${KU_W_insure_ayushCoveredMsg}  ${e_insure_ayushCoveredMsgText}
    Verify Element and Text  ${KU_W_insure_lowWaitingPeriodCardTitle}  ${e_insure_lowWaitingPeriodCardText}
    Verify Element and Text  ${KU_W_insure_lowWaitingPeriodMsg}  ${e_insure_lowWaitingPeriodMsgText}
    Click Element  ${KU_W_insure_sliderButton}
    Sleep   1s
    Verify Element and Text  ${KU_W_insure_dailyExpenseCardTitle}  ${e_insure_dailyExpenseCardText}
    Verify Element and Text  ${KU_W_insure_dailyExpenseMsg}  ${e_insure_dailyExpenseMsgText} 
    Verify Element and Text  ${KU_W_insure_dedicatedSupportCardTitle}  ${e_insure_dedicatedSupportCardText}
    Verify Element and Text  ${KU_W_insure_dedicatedSupportMsg}  ${e_insure_dedicatedSupportMsgText}
    # Yelow Banner
    Verify Element And Text  ${KU_W_insure_yellowBanner}  ${e_insure_yellowBanner}
    # Trusted Partner
    Scroll Untill View  ${KU_W_insure_trustedPartnerTitle}
    Verify Element and Text  ${KU_W_insure_trustedPartnerTitle}  ${e_insure_trustedPartnerTitleText}
    Verify Element and Text  ${KU_W_insure_trustedPartnerSubTitle}  ${e_insure_trustedPartnerSubTitleText}
    # Flexible Coverage 
    Wait For Element Visibility  ${KU_W_insure_flexibleCoverageTitle} 
    Scroll Untill View  ${KU_W_insure_flexibleCoverageTitle} 
    Verify Element and Text  ${KU_W_insure_flexibleCoverageTitle}  ${e_insure_flexibleCoverageTitleText}
    Verify Element and Text  ${KU_W_insure_flexibleCoverageSubtitle}  ${e_insure_flexibleCoevrageSubTitleText}
    # Save Tax 
    Wait For Element Visibility  ${KU_W_insure_saveTaxTitle}
    Scroll Untill View  ${KU_W_insure_saveTaxTitle} 
    Verify Element and Text  ${KU_W_insure_saveTaxTitle}  ${e_insure_saveTaxTitleText}  
    Verify Element and Text  ${KU_W_insure_saveTaxSubTitle}  ${e_insure_saveTaxSubTitleText} 
    # Health Cover
    Wait For Element Visibility  ${KU_W_insure_healthCoverTitle}  
    Scroll Untill View  ${KU_W_insure_healthCoverTitle}  
    Verify Element and Text  ${KU_W_insure_healthCoverTitle}  ${e_insure_healthCoverTitleText} 
    Verify Element and Text  ${KU_W_insure_checkPremiumBtn2}  ${e_insure_checkPremiumBtn2Text}
    Wait For Element Visibility  ${KU_W_insure_checkPremiumBtn2}
    Click Button  ${KU_W_insure_checkPremiumBtn2} 
    Verify Element and Text  ${KU_W_HI_pageTitle}  ${e_FM_addFamMemberTitle}
    Go Back

Add Insurance Flow Before OTP
    # Text Validation Of Title and Subtitle
    Click Element  ${KU_W_insureLink}
    Wait And Click  ${KU_W_insure_groupHealth}
    Wait And Click  ${KU_W_insure_checkPremiumBtn1}
    Log To Console  Add Family Member
    Verify Element and Text  ${KU_W_HI_pageTitle}  ${e_FM_addFamMemberTitle}
    Verify Element and Text  ${KU_W_FM_addFamMemberSubTitle1}  ${e_FM_addFamMemberSubTitle1}
    Verify Element and Text  ${KU_W_FM_addFamMemberSubTitle2}  ${e_FM_AddFamMemberSubTitle2}
    # Info Link Popup
    Wait And Click   ${KU_W_FM_infoLink}
    Verify Element And Text  ${KU_W_FM_infoPopupTitle1}  ${e_FM_infoPopupTitle1}
    Verify Element And Text  ${KU_W_FM_infoPopupTitle2}  ${e_FM_infoPopupTitle2}
    Wait And Click  ${KU_W_postlogin_okayBtn}
    # Add Gender to Primary Applicant
    Verify Element And Text  ${KU_W_FM_insuranceHolderName}  ${e_FM_name}
    Wait And Click  ${KU_W_FM_primaryApplicant}
    Wait And Click  ${KU_W_FM_dropdown}
    Wait And Click  ${KU_W_FM_primaryApplicantGender}
    Wait Scroll And Click Element  ${KU_W_postlogin_doneBtn} 
    # Add Member 
    Wait And Click  ${KU_W_FM_addMemberMenu}
    Wait And Click  ${KU_W_FM_memberName}
    Input Text  ${KU_W_FM_memberName}  ${e_FM_memberName}
    Wait And Click  ${KU_W_FM_dropdown}
    Click Element  ${KU_W_FM_daughter} 
    Wait And Click  ${KU_W_FM_DOB}
    Wait And Click  ${KU_W_FM_monthOnCalendar}
    Wait And Click  ${KU_W_FM_rightArrow}
    Wait And Click  ${KU_W_FM_birthMonth}
    Wait And Click  ${KU_W_FM_dateOnCalendar}
    Wait And Click  ${KU_W_postlogin_doneBtn} 
    Wait Scroll And Click Element  ${KU_W_postlogin_proceedBtn}

    # Select City 
    Log To Console  Select City
    Wait For Element Visibility  ${KU_W_SC_selectCitySubTitle}
    Verify Element And Text  ${KU_W_HI_pageTitle}  ${e_SC_selectCityTitle}
    Verify Element And Text  ${KU_W_SC_selectCitySubTitle}  ${e_SC_selectCitySubTitle}
    Verify Element And Text  ${KU_W_SC_cityHeader}  ${e_SC_cityHeader}
    Verify Element And Text  ${KU_W_SC_networkHospitalHeader}  ${e_SC_networkHospitalHeader}
    Wait And Click  ${KU_W_SC_hospitalInfoLink} 
    Verify Element And Text  ${KU_W_SC_infoLinkPopupTitle}  ${e_SC_infoLinkPopupTitle}
    Wait And Click  ${KU_W_postlogin_okayBtn}

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
    Wait And Click  ${KU_W_BYC_policyDocuLink}
    Verify Policy Documents
    Click Image  ${KU_W_HI_documentLinkCloseBtn}
    Verify Policy Details On Landing Screen
    Verify Policy Details On Popup
    Verify FAQ questions
    Wait Scroll And Click Element  ${KU_W_postlogin_proceedBtn}

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
    Wait Scroll And Click Element  ${KU_W_postlogin_proceedBtn}

    # General Exclusions
    Log To Console  General Exclusions
    Wait For Element Visibility  ${KU_W_GE_generalExclusionSubTitle}
    Verify Element And Text  ${KU_W_HI_pageTitle}  ${e_GE_generalExclusionTitle}
    Verify Element And Text  ${KU_W_GE_generalExclusionSubTitle}  ${e_GE_generalExclusionSubTitle}
    Verify Illness List Details
    Click Image  ${KU_W_postlogin_checkBox}
    Wait Scroll And Click Element  ${KU_W_postlogin_proceedBtn}

    # Existing Illness
    Log To Console  Existing Illness
    Wait For Element Visibility  ${KU_W_EI_existingIllnessSubTitle}
    Verify Element And Text  ${KU_W_EI_existingIllnessTitle}  ${e_EI_existingIllnessTitle}
    Verify Page Contains Image  ${KU_W_EI_existingIllnessImg}
    Verify Element And Text  ${KU_W_EI_existingIllnessSubTitle}  ${e_EI_existingIllnessSubTitle}
    Click Image  ${KU_W_EI_existingIllnessInfoLink}
    Verify Element And Text  ${KU_W_EI_infoLinkDetail}  ${e_EI_infoLinkDetails}
    Verify Element And Text  ${KU_W_EI_infoLinkSubDetail}  ${e_EI_infoLinkSubDetails}
    Wait And Click  ${KU_W_postlogin_okayBtn}
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
    Wait For Element Visibility  ${KU_W_HI_sectionSubTitle1}
    Verify Element And Text  ${KU_W_CD_contactDetailsTitle}  ${e_CD_contactDetailsTitle}
    Verify Element And Text  ${KU_W_HI_sectionSubTitle1}  ${e_CD_contactDetailsSubTitle}
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
    Wait And Click  ${KU_W_postlogin_proceedBtn}

    # Coverage Details
    Log To Console  Coverage Details
    # Applicant Details Box
    Wait For Element Visibility  ${KU_W_CoverageDets_userNameLabel}
    Verify Element And Text  ${KU_W_CoverageDets_coverageDetailsTitle}  ${e_CoverageDets_coverageDetailsTitle}
    Verify Element And Text  ${KU_W_CoverageDets_userNameLabel}  ${e_CoverageDets_userNameLabel}
    Verify Element And Text  ${KU_W_CoverageDets_applicantName}  ${e_CoverageDets_applicantName} 
    Verify Element And Text  ${KU_W_CoverageDets_emailIDLabel}  ${e_CoverageDets_emailIDLabel}
    Verify Page Contains Element  ${KU_W_CoverageDets_emailID}
    Verify Element And Text  ${KU_W_CoverageDets_phoneNumLabel}  ${e_HI_phoneNumLabel}
    Verify Page Contains Element   ${KU_W_CoverageDets_phoneNumber}
    Verify Element And Text  ${KU_W_CoverageDets_addressLabel}  ${e_CoverageDets_resdentialAddressLabel}
    Verify Element And Text  ${KU_W_CoverageDets_address1}  ${e_HI_completeAddress}
    Verify Element And Text  ${KU_W_CoverageDets_address2}  ${e_CoverageDets_cityAndStateAddress}
    Verify Element And Text  ${KU_W_CoverageDets_coverPlanSummaryTitle}  ${e_CoverageDets_coverPlanSummaryTitle}
    # Cover Plan Summary
    Verify Cover Plan Summary Details
    # Info Box Text Validation
    Verify Element And Text  ${KU_W_CoverageDets_infoBox}  ${e_CoverageDets_infoBox}   

Verify City Name Of Hospitals On Prod
    # City Name
    Verify Element And Text  ${KU_W_SC_cityName1}  ${e_SC_searchedCityName}
    Verify Element And Text  ${KU_W_SC_cityName2}  ${e_SC_cityNameProd2}
    Verify Element And Text  ${KU_W_SC_cityName3}  ${e_SC_cityName1}
    Verify Element And Text  ${KU_W_SC_cityName4}  ${e_SC_cityNameProd4}
    Verify Element And Text  ${KU_W_SC_cityName5}  ${e_SC_cityName2}
    Verify Element And Text  ${KU_W_SC_cityName6}  ${e_SC_cityName3}
    Verify Element And Text  ${KU_W_SC_cityName7}  ${e_SC_cityName4}
    # Count of Hospitals
    Verify Element And Text  ${KU_W_SC_hospitalInCity1}  ${e_SC_hospitalInCityProd1}
    Verify Element And Text  ${KU_W_SC_hospitalInCity2}  ${e_SC_hospitalInCityProd2}
    Verify Element And Text  ${KU_W_SC_hospitalInCity3}  ${e_SC_hospitalInCity1}
    Verify Element And Text  ${KU_W_SC_hospitalInCity4}  ${e_SC_hospitalInCityProd4}
    Verify Element And Text  ${KU_W_SC_hospitalInCity5}  ${e_SC_hospitalInCity2}
    Verify Element And Text  ${KU_W_SC_hospitalInCity6}  ${e_SC_hospitalInCity3}
    Verify Element And Text  ${KU_W_SC_hospitalInCity7}  ${e_SC_hospitalInCity4}
 