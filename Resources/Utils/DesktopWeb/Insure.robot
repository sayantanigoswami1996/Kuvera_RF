*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

*** Keywords ***

Verify Insure Page
  
  Click Element  ${KU_W_insureLink}
  Wait For Element Visbility  ${KU_W_insureHeaderTitle}  
  Verify Element And Text  ${KU_W_insureHeaderTitle}  ${e_insure_headerTitleText} 
  Verify Element And Text  ${KU_W_insureHeaderMsg}  ${e_insure_headerMsgText}
  Verify Element And Text  ${KU_W_termsAndConditions}  ${e_insure_T&CText}  
  Verify Element And Text  ${KU_W_checkPremiumBtn}  ${e_insure_checkPremiumBtnText}  
  Click Element  ${KU_W_checkPremiumBtn} 
  Verify Login Page
  Wait For Element Visbility  ${KU_W_costDetailsHeaderTitle}     
  Scroll Untill View  ${KU_W_costDetailsHeaderTitle}
  Verify Element and Text  ${KU_W_costDetailsHeaderTitle}  ${e_insure_costDetailsHeaderText}

  #Treatment and Cost    
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
  
 
 
 
  

  

