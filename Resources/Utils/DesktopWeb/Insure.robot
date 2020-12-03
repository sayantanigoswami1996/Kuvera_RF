*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

*** Keywords ***

Verify PreLogin Insure Page
    Click Element  ${KU_W_insureLink}
    Verify Language Switch Login And Signup Link
    Wait For Element Visibility  ${KU_W_insureHeaderTitle}  
    Verify Element And Text  ${KU_W_insureHeaderTitle}  ${e_insure_headerTitleText} 
    Verify Element And Text  ${KU_W_insureHeaderMsg}  ${e_insure_headerMsgText}
    Verify Element And Text  ${KU_W_insure_termsAndConditions}  ${e_insure_T&CText}  
    Verify Element And Text  ${KU_W_insure_checkPremiumBtn1}  ${e_insure_checkPremiumBtnText}  
    Wait For Element Visibility  ${KU_W_insure_checkPremiumBtn1}
    Sleep   1s
    Click Button  ${KU_W_insure_checkPremiumBtn1} 
    Verify Login Page
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

    Verify Element and Text  ${KU_W_insure_covid19Title}   ${e_insure_covid19TitleText}
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
    Verify Element and Text  ${KU_W_insure_ayushCoveredCardTitle}   ${e_insure_ayushCoveredCardText}
    Verify Element and Text  ${KU_W_insure_ayushCoveredMsg}  ${e_insure_ayushCoveredMsgText}
    Verify Element and Text  ${KU_W_insure_lowWaitingPeriodCardTitle}  ${e_insure_lowWaitingPeriodCardText}
    Verify Element and Text  ${KU_W_insure_lowWaitingPeriodMsg}   ${e_insure_lowWaitingPeriodMsgText}
    Click Element  ${KU_W_insure_sliderButton}
    Sleep   1s
    Verify Element and Text  ${KU_W_insure_dailyExpenseCardTitle}   ${e_insure_dailyExpenseCardText}
    Verify Element and Text  ${KU_W_insure_dailyExpenseMsg}  ${e_insure_dailyExpenseMsgText} 
    Verify Element and Text  ${KU_W_insure_dedicatedSupportCardTitle}  ${e_insure_dedicatedSupportCardText}
    Verify Element and Text  ${KU_W_insure_dedicatedSupportMsg}  ${e_insure_dedicatedSupportMsgText}

    # Trusted Partner
    Scroll Untill View  ${KU_W_insure_trustedPartnerTitle}
    Verify Element and Text  ${KU_W_insure_trustedPartnerTitle}  ${e_insure_trustedPartnerTitleText}
    Verify Element and Text  ${KU_W_insure_trustedPartnerSubTitle}   ${e_insure_trustedPartnerSubTitleText}

    # Flexible Coverage 
    Wait For Element Visibility  ${KU_W_insure_flexibleCoverageTitle} 
    Scroll Untill View  ${KU_W_insure_flexibleCoverageTitle} 
    Verify Element and Text  ${KU_W_insure_flexibleCoverageTitle}   ${e_insure_flexibleCoverageTitleText}
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
    Verify Login Page

    # Verify the Google Play & Apple Store icons
    Verify Google Play & Apple Store Icons