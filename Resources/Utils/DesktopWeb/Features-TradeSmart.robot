*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

*** Keywords ***

Verify PreLogin TradeSmart Page

  Click Element  ${KU_W_featureLink} 
  Wait For Element Visbility  ${KU_W_feature_tradeSmartLink}
  Click Element  ${KU_W_feature_tradeSmartLink}
  Verify Language Switch Login And Signup Link
  Wait For Element Visbility  ${KU_W_feature_tradeSmartTitle} 
  Verify Element And Text  ${KU_W_feature_tradeSmartTitle}  ${e_feature_tradeSmartTitleText}
  Verify Element And Text  ${KU_W_feature_tradeSmartSubHeaderTitle}   ${e_feature_tradeSmartSubHeaderDesc} 
  Verify Element And Text  ${KU_W_feature_tradeSmartActivationTitle}  ${e_feature_tradeSmartActivationTitle}
  Verify Element And Text  ${KU_W_feature_tradeSmartActivationMSg}   ${e_feature_tradeSmartActivationSubTitle}
  Scroll Untill View  ${KU_W_feature_tradeSmartActivateBtn} 
  Verify Page Contains Button  ${KU_W_feature_tradeSmartActivateBtn} 
  Click Button  ${KU_W_feature_tradeSmartActivateBtn} 
  Verify Login Page

  # We help Trade Smart    
  Scroll Untill View  ${KU_W_feature_helpTradeSmartTitle}
  Verify Element and Text  ${KU_W_feature_helpTradeSmartTitle}  ${e_feature_helpTradeSmartTitleText} 
  Verify Element and Text  ${KU_W_feature_helpTradeSmart1Msg}  ${e_feature_helpTradeSmartDesc1Text}
  Scroll Untill View  ${KU_W_feature_helpTradeSmart2Msg} 
  Verify Element and Text  ${KU_W_feature_helpTradeSmart2Msg}  ${e_feature_helpTradeSmartDesc2Text}
  Verify Element and Text  ${KU_W_feature_helpTradeSmart3Msg}  ${e_feature_helpTradeSmartDesc3Text}
  
  
  

  

