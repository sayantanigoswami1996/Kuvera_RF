*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

*** Keywords ***
Verify PreLogin Manage Account Page
 
    Wait For Element Visbility  ${KU_W_feature_manageAccountLink}
    Click Element  ${KU_W_feature_manageAccountLink}
    Verify Language Switch Login And Signup Link
    Wait For Element Visbility  ${KU_W_feature_manageAccountTitle}  
    Verify Element And Text  ${KU_W_feature_manageAccountTitle}   ${e_feature_manageAccountTitleText} 
    Verify Element And Text  ${KU_W_feature_manageAccountDesc1}  ${e_feature_manageAccountDesc1Text} 
    Verify Element And Text  ${KU_W_feature_manageAccountDesc2}  ${e_feature_manageAccountDesc2Text} 
    Scroll Untill View  ${KU_W_button} 
    Verify Element And Text  ${KU_W_button}  ${e_feature_addManagerBtnText}
    Click Button  ${KU_W_button}
    Verify Login Page