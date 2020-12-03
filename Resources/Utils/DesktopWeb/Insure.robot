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
    Wait For Element Visbility  ${KU_W_insureHeaderTitle}  
    Verify Element And Text  ${KU_W_insureHeaderTitle}  ${e_insure_headerTitleText} 
    Verify Element And Text  ${KU_W_insureHeaderMsg}  ${e_insure_headerMsgText}
    Verify Element And Text  ${KU_W_termsAndConditions}  ${e_insure_T&CText}  
    Verify Element And Text  ${KU_W_checkPremiumBtn1}  ${e_insure_checkPremiumBtnText}  
    Wait For Element Visbility  ${KU_W_checkPremiumBtn1}
    Sleep   1s
    Click Button  ${KU_W_checkPremiumBtn1} 
    Verify Login Page
    Wait For Element Visbility  ${KU_W_costDetailsHeaderTitle}     
    Scroll Untill View  ${KU_W_costDetailsHeaderTitle}
    Verify Element and Text  ${KU_W_costDetailsHeaderTitle}  ${e_insure_costDetailsHeaderText}

    # Treatment and Cost    
    Scroll Untill View  ${KU_W_treatmentTitle} 
    Verify Element and Text  ${KU_W_treatmentTitle}  ${e_insure_treatmentTitleText} 
    Verify Element and Text  ${KU_W_treatmentCostTitle}  ${e_insure_treatmentCostTitleText} 

    Verify Element and Text  ${KU_W_covid19Cost}  ${e_insure_covid19CostText}
    Verify Element and Text  ${KU_W_cancerCareCost}  ${e_insure_cancerCareCostText}
    Verify Element and Text  ${KU_W_OpenHeartSurgeryCost}  ${e_insure_openHeartSurgeryCostText}
    Verify Element and Text  ${KU_W_kneeReplacementCost}  ${e_insure_kneeReplacementCostText}

    Verify Element and Text  ${KU_W_covid19Title}   ${e_insure_covid19TitleText}
    Verify Element and Text  ${KU_W_cancerCareTitle}  ${e_insure_cancerCareTitleText}
    Verify Element and Text  ${KU_W_heartSurgeryTitle}  ${e_insure_openHeartSurgeryTitleText}
    Verify Element and Text  ${KU_W_kneeReplacmentTitle}  ${e_insure_kneeReplacementTitleText}

    Verify Page Contains Image  ${KU_W_covid19Image}
    Verify Page Contains Image  ${KU_W_cancerCareImage}
    Scroll Untill View  ${KU_W_openHeartSurgeryImage}
    Verify Page Contains Image  ${KU_W_openHeartSurgeryImage}
    Verify Page Contains Image  ${KU_W_kneeReplacementImage}

    # Group Health Insurance 
    Scroll Untill View  ${KU_W_groupHealthInsuranceTitle}
    Verify Element and Text  ${KU_W_groupHealthInsuranceTitle}  ${e_insure_grpHealthInsuranceTitleText} 
    Page Should Contain  ${e_insure_grpHealthInsuranceSubTitleText}
    @{actualInsurancePolicyList} =  Get WebElements  ${KU_W_insurancePolicyLists}
    Compare Lists  ${actualInsurancePolicyList}  ${e_insure_policyListItem}

    # Feature Card
    Scroll Untill View  ${KU_W_covid19CardTitle}
    Verify Element and Text  ${KU_W_covid19CardTitle}  ${e_insure_covid19CardText} 
    Verify Element and Text  ${KU_W_covid19Msg}  ${e_insure_covid19MsgText}

    Verify Element and Text  ${KU_W_roomrentCardTitle}  ${e_insure_roomrentCardText}
    Verify Element and Text  ${KU_W_roomrentMsg}  ${e_insure_roomrentMsgText} 
    Verify Element and Text  ${KU_W_treatmentCappingCardTitle}  ${e_insure_treatmentCappingCardText}
    Verify Element and Text  ${KU_W_treatmentCappingMsg}  ${e_insure_treatmentCappingMsgText}
    Verify Element and Text  ${KU_W_copaymentCardTitle}  ${e_insure_copaymentCardText}
    Verify Element and Text  ${KU_W_copaymentMsg}  ${e_insure_copaymentMsgText}
    Click Element  ${KU_W_sliderButton}
    Sleep   1s
    Verify Element and Text  ${KU_W_30daySettlemenCardTitle}  ${e_insure_30daySettlementCardText}
    Verify Element and Text  ${KU_W_30daySettlemenMsg}  ${e_insure_30daySettlementMsgText}
    Verify Element and Text  ${KU_W_ayushCoveredCardTitle}   ${e_insure_ayushCoveredCardText}
    Verify Element and Text  ${KU_W_ayushCoveredMsg}  ${e_insure_ayushCoveredMsgText}
    Verify Element and Text  ${KU_W_lowWaitingPeriodCardTitle}  ${e_insure_lowWaitingPeriodCardText}
    Verify Element and Text  ${KU_W_lowWaitingPeriodMsg}   ${e_insure_lowWaitingPeriodMsgText}
    Click Element  ${KU_W_sliderButton}
    Sleep   1s
    Verify Element and Text  ${KU_W_dailyExpenseCardTitle}   ${e_insure_dailyExpenseCardText}
    Verify Element and Text  ${KU_W_dailyExpenseMsg}  ${e_insure_dailyExpenseMsgText} 
    Verify Element and Text  ${KU_W_dedicatedSupportCardTitle}  ${e_insure_dedicatedSupportCardText}
    Verify Element and Text  ${KU_W_dedicatedSupportMsg}  ${e_insure_dedicatedSupportMsgText}

    # Trusted Partner
    Scroll Untill View  ${KU_W_trustedPartnerTitle}
    Verify Element and Text  ${KU_W_trustedPartnerTitle}  ${e_insure_trustedPartnerTitleText}
    Verify Element and Text  ${KU_W_trustedPartnerSubTitle}   ${e_insure_trustedPartnerSubTitleText}

    # Flexible Coverage 
    Wait For Element Visbility  ${KU_W_flexibleCoverageTitle} 
    Scroll Untill View  ${KU_W_flexibleCoverageTitle} 
    Verify Element and Text  ${KU_W_flexibleCoverageTitle}   ${e_insure_flexibleCoverageTitleText}
    Verify Element and Text  ${KU_W_flexibleCoverageSubtitle}  ${e_insure_flexibleCoevrageSubTitleText}

    # Save Tax 
    Wait For Element Visbility  ${KU_W_saveTaxTitle}
    Scroll Untill View  ${KU_W_saveTaxTitle} 
    Verify Element and Text  ${KU_W_saveTaxTitle}  ${e_insure_saveTaxTitleText}  
    Verify Element and Text  ${KU_W_saveTaxSubTitle}  ${e_insure_saveTaxSubTitleText} 

    # Health Cover
    Wait For Element Visbility  ${KU_W_healthCoverTitle}  
    Scroll Untill View  ${KU_W_healthCoverTitle}  
    Verify Element and Text  ${KU_W_healthCoverTitle}  ${e_insure_healthCoverTitleText} 
    Verify Element and Text  ${KU_W_checkPremiumBtn2}  ${e_insure_checkPremiumBtn2Text}
    Wait For Element Visbility  ${KU_W_checkPremiumBtn2}
    Click Button  ${KU_W_checkPremiumBtn2} 
    Verify Login Page

    # Verify the Google Play & Apple Store icons
    Verify Google Play & Apple Store Icons