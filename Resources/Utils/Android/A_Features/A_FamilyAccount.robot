*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Family Account Page
    Log To Console  Family Account
    Navigate To Hamburger Menu  ${KU_A_featureLink}  ${e_featureLink}
    Wait And Click Element On Android  ${KU_A_feature_FA_link}
    Verify Text On Page  ${e_feature_FA_screenTitle} 
    Verify Signup Link And Kuvera Logo
    Verify Page Contains Element On Android  ${KU_A_feature_FA_screenSubTitle}
    Verify Page Contains Element On Android  ${KU_A_feature_FA_imgIcon}
    Verify Text On Page  ${e_feature_FA_activateWith200Btn}
    Wait And Click Element On Android  ${KU_A_feature_FA_activateWith200Btn} 
    Verify Login Page On Android App   