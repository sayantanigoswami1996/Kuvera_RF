*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Manage Account Page
    Wait For Element Visibility  ${KU_W_feature_manageAccountLink}
    Click Element  ${KU_W_feature_manageAccountLink}
    Verify Language Switch Login And Signup Link
    Wait For Element Visibility  ${KU_W_feature_manageAccountTitle}  
    Verify Element And Text  ${KU_W_feature_manageAccountTitle}  ${e_feature_manageAccountTitleText} 
    Verify Element And Text  ${KU_W_feature_manageAccountDesc1}  ${e_feature_manageAccountDesc1Text} 
    Verify Element And Text  ${KU_W_feature_manageAccountDesc2}  ${e_feature_manageAccountDesc2Text} 
    Scroll Untill View  ${KU_W_button} 
    Verify Element And Text  ${KU_W_button}  ${e_feature_addManagerBtnText}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_button}
    Click Button  ${KU_W_button}
    Verify Login Page