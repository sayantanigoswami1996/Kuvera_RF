*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Insure Page
    Click Element  ${KU_W_insureLink}
    ${isLoginButtonVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    Run Keyword If   ${isLoginButtonVisible}  Verify Login And Signup Link
    ...    ELSE  Log To Console  Continue
    Wait For Element Visibility  ${KU_W_insureHeaderTitle}  
    Verify Element And Text  ${KU_W_insureHeaderTitle}  ${e_insure_headerTitleText} 
    Verify Element And Text  ${KU_W_insureHeaderMsg}  ${e_insure_headerMsgText}
    Verify Element And Text  ${KU_W_insure_checkPremiumBtn1}  ${e_insure_checkPremiumBtnText}  
    Wait For Element Visibility  ${KU_W_insure_checkPremiumBtn1}
    Sleep   1s
    Click Button  ${KU_W_insure_checkPremiumBtn1} 
    ${isLoginBtnVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    Run Keyword If   ${isLoginBtnVisible}  Verify Premium Popup  ${KU_W_insure_checkPremiumBtn1}
    ...    ELSE  Verify Missing PAN Page
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
    ${isLoginBtnVisible1} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    Run Keyword If   ${isLoginBtnVisible1}  Verify Premium Popup  ${KU_W_insure_checkPremiumBtn2}
    ...    ELSE  Verify Missing PAN Page
    Verify Google Play & Apple Store Icons
    
Verify Premium Popup
    [Arguments]  ${premiumBtn}
    Wait For Element Visibility  ${KU_W_insure_popupHeader}
    Verify Element and Text  ${KU_W_insure_popupHeader}  ${e_insure_popupHeader}
    Verify Element And Text  ${KU_W_insure_popupSubheader1}  ${e_insure_popupSubheader1} 
    Verify Element And Text  ${KU_W_insure_popupSubheader2}  ${e_insure_popupSubheader2} 
    Verify Element And Text  ${KU_W_insure_popupSubheader3}  ${e_insure_popupSubheader3} 
    Verify Page Contains Element  ${KU_W_insure_loginBtn} 
    Wait For Element Visibility  ${KU_W_insure_loginBtn}  
    Click Element  ${KU_W_insure_loginBtn}
    Verify Login Page
    Wait For Element Visibility  ${premiumBtn}
    Click Element  ${premiumBtn}
    Verify Page Contains Element  ${KU_W_insure_signupBtn} 
    Wait For Element Visibility  ${KU_W_insure_signupBtn}  
    Click Element  ${KU_W_insure_signupBtn}
    Verify Signup Page
    Go Back

Verify Missing PAN Page
    Wait For Element Visibility  ${KU_W_HI_missingPANTitle}
    Sleep  2s
    Verify Element And Text  ${KU_W_HI_missingPANTitle}  ${e_HI_missingPANTitle}
    Verify Element And Text  ${KU_W_HI_missingPANSubTitle}  ${e_HI_missingPANSubTitle}
    Go Back