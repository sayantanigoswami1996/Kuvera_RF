*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Manage Account Page
    Log To Console  Manage Account
    Navigate To Hamburger Menu  ${KU_A_featureLink}  ${e_featureLink}
    Wait And Click Element On Android  ${KU_A_feature_MA_link}
    Wait And Click Element On Android  ${KU_A_feature_MA_link}
    Verify Text On Page  ${e_feature_MA_screenTitle} 
    Verify Signup Link And Kuvera Logo
    Verify Text On Page  ${e_feature_MA_screenSubTitle1}
    Verify Page Contains Element On Android  ${KU_A_feature_MA_screenSubTitle2} 
    Verify Page Contains Element On Android  ${KU_A_feature_MA_imgIcon}
    Verify Text On Page  ${e_feature_MA_addManagerBtn}
    Verify Presence Of Bot Button  ${KU_A_faqBotBtn}
    Wait And Click Element On Android  ${KU_A_feature_MA_addManagerBtn}  
    Verify Login Page On Android App 