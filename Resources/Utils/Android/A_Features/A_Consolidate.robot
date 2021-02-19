*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Consolidate Page
    Log To Console  Consolidate
    Navigate To Hamburger Menu  ${KU_A_featureLink}  ${e_featureLink}
    Wait And Click Element On Android  ${KU_A_feature_TH_link}
    Verify Text On Page  ${e_feature_TH_screenTitle}
    Verify Signup Link And Kuvera Logo
    Verify Text On Page  ${e_feature_TH_screenSubTitle}
    Verify Page Contains Element On Android  ${KU_A_feature_TH_imgIcon}
    