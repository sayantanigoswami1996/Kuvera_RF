*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Manage Account Page
    Log To Console  Manage Account
    Navigate To Menus Under Features
    Wait And Click Element On Android  ${KU_A_feature_MA_link}
    Verify Text On Page  ${e_feature_MA_screenTitle} 
    Verify Text On Page  ${e_feature_MA_screenSubTitle1}
    Verify Page Contains Element On Android  ${KU_A_feature_MA_screenSubTitle2} 
    Verify Page Contains Element On Android  ${KU_A_feature_MA_imgIcon}
    Verify Text On Page  ${e_feature_MA_addManagerBtn}
    Wait And Click Element On Android  ${KU_A_feature_MA_addManagerBtn}  
    Verify Login Page On Android App 