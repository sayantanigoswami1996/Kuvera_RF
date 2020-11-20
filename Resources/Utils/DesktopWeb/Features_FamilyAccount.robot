*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

*** Keywords ***

Verify PreLogin Family Account Page

    # Click Element  ${KU_W_featureLink} 
    Wait For Element Visbility  ${KU_W_feature_familyAccountLink}
    Click Element  ${KU_W_feature_familyAccountLink}
    Wait For Element Visbility  ${KU_W_feature_fa_screenTitle}
    Verify Element And Text  ${KU_W_feature_fa_screenTitle}  ${e_feature_fa_screenTitle}
    Verify Element And Text  ${KU_W_feature_fa_screenContent}  ${e_feature_fa_screenContent}
    Verify Element And Text  ${KU_W_button}  ${e_activateWithBtn}
    Click Button  ${KU_W_button}
    Verify Login Page